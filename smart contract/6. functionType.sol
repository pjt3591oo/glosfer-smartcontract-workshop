contract Sample{
    uint256 a = 10;

    event ValueLog(uint256 _value);

    function () payable{
        ValueLog(msg.value);
    }

    function set() pure {
        a = 10; // error 발생
    }

    function set1() view {
        a = 10;
    }

    function set2() constant {
        a = 10;
    }
}
