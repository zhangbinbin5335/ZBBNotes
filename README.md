# ZBBNotes
分层构架设计、多工程开发demo
设计模式只是解决某一特定问题的策略，是面 局部的;而架构设计则是一个将设计模式 观、全面、有机地组织起来解决整个应用系统的方案。衡量一个软件架构设计好坏的标准是可复用性和可扩展性。可复用性和可扩展性强的软件系统能 满足用户不断变化的需求。为了使我们的软件系统具有可复用性和可扩展性，我主张采 用分层架构设计。  
### 1. 低耦合企业级系统架构设计  
 件设计的原 是提高 件系 的 可复用性 和 可 展性 ， 系 架构设计采用层次 分方式，这些层次之间是  合的，层次内部是高内 的。
 
 * `表示层`用户与系统交换的组件集合。用户通过这一层向系统提交请求或发出指令，系统通过这一层接收用户请求或指令，待指令消化吸收收后再调用下一层，接着将调用结果展现到这一层。表示层应该是轻薄的，不应该具有业务逻辑。  
 * `业务逻辑层`系统的核心业处理务层。负责接收表示层的指令和数据，待指令和数据消化后，再进行组织业务的逻辑的处理，并将结果返回给表示层。
 * `数据持久层`数据持久层用于访问信息系统层，即访问数据库或文件操作的代码只能放到数据持久层中， 而不能出现在其它层中。
 * `信息系统层`系统的数据来源，可以是数据库、文件、遗留系统或者网络数据。  
 
### 2. iOS分层架构设计  
有关信息处理的应用一般会采用分层架构设计.  

    游戏一般会采用引擎，其架构是树形结构  

* `表示层`由UIKit Framework构成。  
 * `业务逻辑层`采用什么框架要据具体的业务而定，一般是具有一定业务处理功能的Objective-C和C++ 封装的类，或者是C封装的函数。
 * `数据持久层`提供本地或网络数据访问， 可能是访问SQLite数据的API函数，也可能是Core Data技术，或是访问文件的NSFileManager，或是网络通信技术。采用什么方式要看信息系统层是什么。
 * `信息系统层`信息来源分为本地和网络。本地数据可以放入文件中，也可以放在数据库中，目前iOS本地数据库采用SQLite3。网络可以是 个云服务，也可以是一般的Web服务。
