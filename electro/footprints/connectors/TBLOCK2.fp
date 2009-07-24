#Copyright 2007 Cory Cross

#    This symbol is covered under the GNU GPL, with the following exception.
#    See the file gpl.txt for the full license.
#As a special exception, if you create a design which uses this footprint,
#  and embed this footprint or unaltered portions of this footprint into the
#  design, this footprint does not by itself cause the resulting design to
#  be covered by the GNU General Public License. This exception does not
#  however invalidate any other reasons why the design itself might be
#  covered by the GNU General Public License. If you modify this
#  footprint, you may extend this exception to your version of the
#  footprint, but you are not obligated to do so. If you do not
#  wish to do so, delete this exception statement from your version.

Element["" "Terminal blocks with 200mil spacing" "CONN" "" 0 0 0 -35000 0 100 ""]
(
	Pin[-10000 0 10000 2400 11000 5600 "" "1" "square"]
	Pin[10000 0 10000 2400 11000 5600 "" "2" ""]
	ElementLine [-20000 20000 20000 20000 1000]
	ElementLine [-20000 -20000 20000 -20000 1000]
	ElementLine [-20000 20000 -20000 -20000 1000]
	ElementLine [20000 20000 20000 -20000 1000]
)
