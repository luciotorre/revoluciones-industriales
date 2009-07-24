from math import *
import unittest

from numpy import array

G = 9.8 #Gravity

# motor wheight, in kilos (includes bateries):
MOTOR_WEIGHT = 0.2
 # Mass of the cart. In Kg
BASE_MASS = MOTOR_WEIGHT * 2 + 0.1
# Mass of the pole. In Kg
BODY_MASS = 1.0
# The distance of the bodys center of mass. In Meters.
BODY_DISTANCE = 0.3
# the radius for the wheels, in meters
WHEEL_RADIUS = 0.08
# the wheel/floor worst case coef of friction
WHEEL_FRICTION = 0.5
# the motor torque, in kilo/meter
MOTOR_TORQUE = 0.4
# the motor RPM in rpm :)
MOTOR_RPM = 180
# the maximum speed the robot can achieve, in km/h
SPEED = MOTOR_RPM * 2*pi*WHEEL_RADIUS * 60.0/1000.0
# the robot must go faster than the speed at what humans walk
# (the actual speed will be less)
#assert SPEED > 5
# max force that can be applied at the base, in kilo force
BASE_MAX_FORCE = 2 * MOTOR_TORQUE / WHEEL_RADIUS

class Pendulum:
    def __init__(self, x=0.0, x_dot=0.0, theta=0.0, theta_dot=0.0):
        self.total_mass = BASE_MASS + BODY_MASS
        self.bodymass_length = BODY_MASS * BODY_DISTANCE

        self.x = x
        self.x_dot = x_dot
        self.theta = theta
        self.theta_dot = theta_dot

    def step(self, dt, base_force=0.0):
        """Advance the position by dt seconds. base force is the force
        applied at the base (in kilogram force)
        """
        temp     = (
                        base_force + self.bodymass_length *
                        (self.theta_dot ** 2) * sin(self.theta)
                    ) / self.total_mass

        theta_dot_dot = ((G * sin(self.theta) - cos(self.theta) * temp)
                          / (BODY_DISTANCE *
                                (4.0/3.0 - BODY_MASS * cos(self.theta) **2
                             / self.total_mass)
                            )
                        )

        x_dot_dot = (temp - self.bodymass_length * theta_dot_dot *
                        cos(self.theta) / self.total_mass)

        self.x         = self.x + dt * self.x_dot
        self.x_dot     = self.x_dot + dt * x_dot_dot
        self.theta     = self.theta + dt * self.theta_dot
        self.theta_dot = self.theta_dot + dt * theta_dot_dot


class Pendulum2:
    def __init__(self, x=0.0, x_dot=0.0, theta=0.0, theta_dot=0.0):
        self.total_mass = BASE_MASS + BODY_MASS
        self.bodymass_length = BODY_MASS * BODY_DISTANCE

        self.x = x
        self.x_dot = x_dot
        self.theta = theta
        self.theta_dot = theta_dot

    def step(self, dt, base_force=0.0):
        """Advance the position by dt seconds. base force is the force
        applied at the base (in kilogram force)
        """

        F = base_force
        y3 = self.x_dot
        e = 0.001
        m = BODY_MASS
        l = BODY_DISTANCE
        y4 = self.theta_dot
        y2 = self.theta
        M = BASE_MASS


        x_dot_dot = (4.0*F-4.0*e*y3 + 4.0*m*l*(y4**2)*sin(y2)-3.0*m*G*sin(y2)*cos(y2)) / (4.0*(M + m) -3.0*m*cos(y2)**2)

        theta_dot_dot = ((M+m)*G*sin(y2)-(F-e*y3)*cos(y2)-m*l*(y4**2)*sin(y2)*cos(y2)) / l*((4.0/3.0)*(M+m)-m*cos(y2)**2)

        print (M+m)*G*sin(y2), (F-e*y3)*cos(y2), m*l*(y4**2)*sin(y2)*cos(y2), ((M+m)*G*sin(y2)-(F-e*y3)*cos(y2)-m*l*(y4**2)*sin(y2)*cos(y2)), l*((4.0/3.0)*(M+m)-m*cos(y2)**2)
        self.x         = self.x + dt * self.x_dot
        self.x_dot     = self.x_dot + dt * x_dot_dot
        self.theta     = self.theta + dt * self.theta_dot
        self.theta_dot = self.theta_dot + dt * theta_dot_dot

def force_required_to_stable(start_angle, start_angle_velocity=0):
    force = 0.0
    while True:
        robot = Pendulum(theta=start_angle, theta_dot=start_angle_velocity)
        steps = 0
        while True:
            steps += 1
            if robot.theta > pi:
                break
            if robot.theta < -pi:
                return force
            robot.step(0.02, force)

        if force > 100000:
            raise Exception("Too heavy")
        force += 0.1



def find_wheel():
    for angle in range(5, 85, 5):
        force = force_required_to_stable(radians(angle))
        print "Angle:", angle, "degrees, force required:", force, "kg force"
        for radius in range(5,30, 5):
            torque = force * radius/100.0
            print "    wheel radius:", radius, "torque:", torque, "kilo/meter"

def find_weight():
    global BODY_DISTANCE
    global BODY_MASS

    BODY_DISTANCE=0.3
    BODY_MASS=2.0
    for i in range(1, 80, 5):
        force = force_required_to_stable(radians(0), i/10.0)
        print "angle vel", i/10.0, "force required:", force, "kg force"


def weight_that_can_be_made_stable(start_angle, start_angle_velocity=0):
    global BODY_MASS
    W = 0
    save_W = BODY_MASS

    while True:
        BODY_MASS = W
        robot = Pendulum(theta=start_angle, theta_dot=start_angle_velocity)
        steps = 0
        while True:
            steps += 1
            if robot.theta > pi/2:
                BODY_MASS = save_W
                return W
            if robot.theta < -pi/2:
                break
            robot.step(0.02, BASE_MAX_FORCE)

        W += 0.01

print "SPEED", SPEED
print "BASE_MAX_FORCE", BASE_MAX_FORCE
print "MAX_BODY_MASS =", weight_that_can_be_made_stable(radians(30))
