pragma solidity ^0.5.11;

contract PurchaseStockImage {
    address public owner;  // owner's adress
    address public buyer;  // the person's adress that buys the image

    struct Photo {
        string title;
        string webAddress;
        uint price;
        bool isBought;
    }
    
    mapping (uint => Photo) photos;

    uint photoSeq = 0;  // sequence/count

    event PhotoAdded(address buyer, string title, string webAddress, uint price, bool isBought);
    event PhotoBought(address buyer, string title, string webAddress, uint price, bool isBought);

    constructor(address buyerAddress) public {  // constructor
        owner = msg.sender;

        buyer = buyerAddress;
    }

    function addPhoto(string memory title, string memory webAddress, uint price) public {
        require(msg.sender == owner, "Permission denied.");

        photoSeq++;

        photos[photoSeq] = Photo(title, webAddress, price, false);

        // trigger event
        emit PhotoAdded(msg.sender, photos[photoSeq].title, photos[photoSeq].webAddress, photos[photoSeq].price, photos[photoSeq].isBought);
    }

    function buyPhoto(uint photoID) public payable {
        require(msg.sender == buyer, "Sender not authorized."); // buyer cannot be the seller

        require(photos[photoID].isBought, "Photo is already bought.");

        if (!photos[photoID].isBought) {
            photos[photoID].isBought = true;

            // trigger event
            emit PhotoBought(msg.sender, photos[photoID].title, photos[photoID].webAddress, photos[photoID].price, photos[photoID].isBought);
        }
    }





}