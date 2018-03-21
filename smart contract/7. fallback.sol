contract Sample{
    event ValueLog(uint256 _value);

    function () payable{
        ValueLog(msg.value);
    }
}
