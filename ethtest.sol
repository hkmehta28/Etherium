pragma solidity >=0.6.12 <0.9.0;

contract DigitalAsset
{
  string public asset_name = "ALPHA";
  string public asset_symbol = "ALP";
  uint public total_units = 0;

  mapping(address => uint) public holdings;

  function mint(address _holder, uint _amount) 
  public {
    total_units += _amount;
    holdings[_holder] += _amount;
  }

  function burn(address _holder, uint _amount) 
  public {
    if(holdings[_holder] >= _amount) {
      total_units -= _amount;
      holdings[_holder] -= _amount;
    }
  }
}
