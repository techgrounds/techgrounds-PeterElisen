# NTW-01 OSI stack

OSI Stack

Introduction:
The Open Systems Interconnection model (OSI model) is a model primarily used for troubleshooting of telecommunication or computing systems.

The OSI stack has 7 layers, each representing a different component of network communications. Each layer has different protocols associated with it.

When troubleshooting an IT issue, you can use the OSI model as a reference point, by taking a bottom-up or a top-down approach. For example, you might start at layer 1 by checking if all cables are connected and all devices are turned on.

An alternative to the OSI model is the TCP/IP model. The TCP/IP model describes the standard on which the internet was built, so it is a more realistic model. OSI is generally more practical for troubleshooting purposes because of its extra layers, even if it isn’t entirely accurate.

Study:
The OSI model and its uses.
The TCP/IP model and its uses.



  

## Key-terms 

### OSI model

The OSI (Open Systems Interconnection) model is a conceptual framework that standardizes the functions of a communication system into seven different layers. It was developed by the International Organization for Standardization (ISO) in the late 1970s to facilitate interoperability between different computer systems and networks. Each layer of the OSI model represents a specific set of functions and protocols that work together to enable communication between devices in a network.

Here is an overview of the seven layers of the OSI model, starting from the bottom and moving upwards:

1. Physical Layer: This layer deals with the physical aspects of data transmission, such as the electrical, mechanical, and physical connections. It defines the specifications for cables, connectors, network interface cards (NICs), and other physical components. The physical layer transmits raw bits over a communication channel without any concern for the actual data being transmitted.

2. Data Link Layer: The data link layer provides reliable transmission of data across the physical layer. It handles issues such as node-to-node communication, error detection and correction, flow control, and framing. It also defines protocols for accessing the physical media, such as Ethernet.

3. Network Layer: The network layer is responsible for the logical addressing and routing of data packets between different networks. It determines the best path for data transmission, considering factors like network congestion, priority, and addressing. IP (Internet Protocol) is a key protocol at this layer.

4. Transport Layer: The transport layer ensures reliable end-to-end data delivery between hosts. It breaks data from the upper layers into smaller chunks and manages the sequencing, error control, and flow control. TCP (Transmission Control Protocol) is a commonly used transport layer protocol.

5. Session Layer: The session layer establishes, maintains, and terminates connections between applications running on different devices. It enables synchronization and coordination of data exchange, as well as providing mechanisms for session recovery in case of failures.

6. Presentation Layer: The presentation layer is responsible for data formatting, encryption, and compression. It ensures that data exchanged between applications can be properly interpreted by the receiving end. It also handles tasks like data encryption and decryption.

7. Application Layer: The application layer is the topmost layer of the OSI model and is closest to the end user. It provides a means for applications to access network services and supports specific protocols used by various applications, such as HTTP (Hypertext Transfer Protocol), FTP (File Transfer Protocol), SMTP (Simple Mail Transfer Protocol), and many others.

The OSI model provides a structured approach to understanding and implementing network protocols. It allows different vendors and technologies to work together by defining clear boundaries and responsibilities for each layer. However, it's important to note that in practice, many modern networks and protocols don't strictly adhere to the OSI model and often combine multiple layers for efficiency and performance reasons.


### TCP/IP model


The TCP/IP (Transmission Control Protocol/Internet Protocol) model is a conceptual framework that describes the protocols and functions used for communication in the Internet. It is the foundational model for modern networking and is widely used in today's internet-based systems. The TCP/IP model consists of four layers, which are sometimes referred to as the Internet Protocol Suite.

Here is an overview of the four layers of the TCP/IP model, starting from the bottom and moving upwards:

1. Network Interface Layer: This layer is equivalent to the combination of the Physical and Data Link layers in the OSI model. It deals with the physical transmission of data over a network medium and provides protocols for accessing the network, such as Ethernet or Wi-Fi. It defines the standards for transmitting data packets between devices connected to the same network.

2. Internet Layer: The internet layer is similar to the Network layer in the OSI model. It is responsible for addressing, routing, and fragmenting data packets across different networks. The key protocol in this layer is the Internet Protocol (IP), which provides unique IP addresses for devices and allows them to communicate over the Internet.

3. Transport Layer: The transport layer in the TCP/IP model is equivalent to the Transport layer in the OSI model. It ensures reliable end-to-end data delivery between hosts. The primary protocol at this layer is the Transmission Control Protocol (TCP), which provides connection-oriented, reliable, and ordered delivery of data. It also supports flow control, congestion control, and error detection. Additionally, the User Datagram Protocol (UDP) is available at this layer, which is a connectionless protocol used for faster but less reliable data transmission.

4. Application Layer: The application layer in the TCP/IP model is similar to the Session, Presentation, and Application layers combined in the OSI model. It provides application-specific protocols and services for end-user applications to communicate over the network. This layer includes protocols such as Hypertext Transfer Protocol (HTTP) for web browsing, File Transfer Protocol (FTP) for file transfer, Simple Mail Transfer Protocol (SMTP) for email delivery, and many others.

Compared to the OSI model, the TCP/IP model is simpler and more closely reflects the structure of the Internet. It is widely used and implemented in networking technologies and forms the backbone of the modern internet. However, it's important to note that the TCP/IP model does not strictly adhere to the strict layering of the OSI model, and protocols in TCP/IP often interact across multiple layers for efficiency and practicality.

  

## Opdracht 1


Study:
The OSI model and its uses.
The TCP/IP model and its uses.






### Gebruikte bronnen 

CHATGPT :

- Tell about OSI model
- Tell about TCP/IP model
  

### Ervaren problemen 

N.v.t.
  

### Resultaat 

zie key terms


