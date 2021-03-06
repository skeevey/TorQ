// IPC connection parameters
.servers.CONNECTIONS:`rdb`segmentedtickerplant`segmentedchainedtickerplant;
.servers.USERPASS:`admin:admin;

// Paths to process CSV and test STP log directory
processcsv:getenv[`KDBTESTS],"/stp/chainedeod/process.csv";
testlogdb:"testlog";

// Function projections (using functions from helperfunctions.q)
startproc:startorstopproc["start";;processcsv];
stopproc:startorstopproc["stop";;processcsv];

// Flag to save tests to disk
.k4.savetodisk:1b;