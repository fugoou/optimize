jit () {
echo ""
echo ""
echo "This process will take a long time"
echo ""
pm compile -a -f --compile-layouts
cmd package compile -m everything-profile -f -a
cmd package compile -m speed --secondary-dex -f -a
cmd package compile -r first-boot -f -a
cmd package compile -m speed --check-prof false -f -a
echo ""
echo ""
}