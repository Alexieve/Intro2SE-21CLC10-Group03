const { BlobServiceClient, StorageSharedKeyCredential } = require('@azure/storage-blob');

// Storage connection
const storageAccount = 'happinovel';
const accountKey = 'I/AGF1f1XZdujaEiRdZ6IO+/zrbUsqTojIj9ozR1cydxVVt3T0VctGDWr46Gb6ZWrnwtGvbdRv6/+ASt45Rmew==';
const sharedKeyCredential = new StorageSharedKeyCredential(storageAccount, accountKey);
const blobServiceClient = new BlobServiceClient(
  `https://${storageAccount}.blob.core.windows.net`, sharedKeyCredential
);

// Container
const avatarContainer = blobServiceClient.getContainerClient('avatar');
const bookContainer = blobServiceClient.getContainerClient('book');
const bookcoverContainer = blobServiceClient.getContainerClient('bookcover');
const commentContainer = blobServiceClient.getContainerClient('comment');
const notifyContainer = blobServiceClient.getContainerClient('notify');
const profilecoverContainer = blobServiceClient.getContainerClient('profilecover');
const ratingContainer = blobServiceClient.getContainerClient('rating');

module.exports = {
    avatarContainer, 
    bookContainer, 
    bookcoverContainer, 
    commentContainer, 
    notifyContainer, 
    profilecoverContainer, 
    ratingContainer,
}