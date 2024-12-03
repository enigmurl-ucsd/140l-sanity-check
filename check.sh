set -u
DIGITAL="java -cp ~/Applications/Digital/Digital.jar CLI test"

function test {
    echo "Testing $1"
    java -cp ~/Applications/Digital/Digital.jar CLI test circuits/$1.dig -tests $2.dig 2>&1 | grep unnamed
    sleep 1
}

test DFF dff_test
test PTFF pt_test
test SRFF sr_test

test BoothsMultiplierMealy multiplier_test
test BoothsMultiplierMoore multiplier_test
test MealyController mealy_controller_test
test MooreController moore_controller_test

test VendingMachine1 vending_machine_test
test VendingMachine2 vending_machine_test
test VendingMachine3 vending_machine_test
test VendingMachine4 vending_machine_test

test VendingMachineTop1 vending_machine_test
test VendingMachineTop2 vending_machine_test
test VendingMachineTop3 vending_machine_test
test VendingMachineTop4 vending_machine_4_test

test SRCompositeDetector composite_test
test JKCompositeDetector composite_test


