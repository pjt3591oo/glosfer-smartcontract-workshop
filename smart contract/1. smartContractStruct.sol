contract Sample{

    uint256 data;
    address owner;

    event logData(uint256 dataToLog);

    modifier onlyOwner() {
        if (msg.sender != owner) revert();
        _;
    }
    
    function Sample(uint256 value) public{
        data = value;
        owner = msg.sender;
    }

    function getData() constant public returns(uint256){
        return data;
    }

    function setData1(uint256 value) public{
        logData(value);
        data = value;
    }

    function setData2(uint256 value) public onlyOwner{
        logData(value);
        data = value;
    }
}
