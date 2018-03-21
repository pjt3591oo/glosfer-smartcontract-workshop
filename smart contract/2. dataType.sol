contract Sample{

    bool dateTrue = true;
    bool dateFalse = false;

    address dataAddress = address(this);

    uint8 dataUint8;
    uint16 dataUint16;
    uint24 dataUint23;
    uint256 dataUint256;

    uint256[] dataUintArray = [1, 2, 3, 4];
    string dataString = "hello world";

    struct PersonInfo {
        uint256 age;
        string name;
    }

    PersonInfo dataPersonData = PersonInfo({age: 26, name: 'pjt'});

    mapping(uint256 => string) public dataMapping;

    function setMapping(uint256 _key, string _value) {
        dataMapping[_key] = _value;
    }
}
