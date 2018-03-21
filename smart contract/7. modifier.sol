contract Sample{
    address public owner;
    uint256 public data;

    function Sample() public{
        owner = msg.sender;
    }

    modifier check(){
        require(owner == msg.sender);
        _;
    }

    function getData() constant public returns(uint256){
        return data;
    }

    function setData(uint256 _v) check public{
        data = _v;
    }
}
