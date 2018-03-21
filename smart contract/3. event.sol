contract Sample{
    event addressBalance(uint value);

    function getAddressBalance(address addr) public{
        addressBalance(addr.balance);
    }
}
