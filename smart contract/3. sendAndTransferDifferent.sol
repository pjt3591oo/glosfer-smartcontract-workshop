contract Sample{

    event isSend(bool _isSend);

    function send(address to, uint256 amount){
        to.send(amount);
    }
    function transfer(address to, uint256 amount){
        to.transfer(amount);
    }
    // if no exist, Can not receive ether
    function () payable{

    }
}
