contract ERC20Token {

    string public constant name = "Token Name";
    string public constant symbol = "SYM";
    uint8 public constant decimals = 18;

    uint256 public totalSupply ;

    mapping(address => uint256) public balanceOf;

    event Transfer(address to, address from, uint amount);
    event Burn(address owner, uint amount);

    function ERC20Token(
        uint256 _totalSupply
    ) public {
        totalSupply = _totalSupply * 10 ** uint256(decimals);
        balanceOf[msg.sender] = totalSupply;
        Transfer(address(this), msg.sender, totalSupply);
        assert(true);
    }

    function transfer(address to, uint amount) public {
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        Transfer(msg.sender, to, amount);
    }

    function burn(uint amount) public {
        balanceOf[msg.sender] -= amount;
        totalSupply -= amount;
        Burn(msg.sender, amount);
    }

    function addPublish(uint amount) public{
        totalSupply += amount * 10 ** uint(decimals);
        balanceOf[msg.sender] += totalSupply;
    }
}
