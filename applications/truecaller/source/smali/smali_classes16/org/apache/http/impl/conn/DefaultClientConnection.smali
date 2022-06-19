.class public Lorg/apache/http/impl/conn/DefaultClientConnection;
.super Lorg/apache/http/impl/SocketHttpClientConnection;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/OperatedClientConnection;
.implements Lorg/apache/http/conn/ManagedHttpClientConnection;
.implements Lorg/apache/http/protocol/HttpContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connSecure:Z

.field private final headerLog:Lw3/a/b/b/a;

.field private final log:Lw3/a/b/b/a;

.field private volatile shutdown:Z

.field private volatile socket:Ljava/net/Socket;

.field private targetHost:Lorg/apache/http/HttpHost;

.field private final wireLog:Lw3/a/b/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    const-string v0, "org.apache.http.headers"

    .line 3
    invoke-static {v0}, Lw3/a/b/b/i;->g(Ljava/lang/String;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lw3/a/b/b/a;

    const-string v0, "org.apache.http.wire"

    .line 4
    invoke-static {v0}, Lw3/a/b/b/i;->g(Ljava/lang/String;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lw3/a/b/b/a;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/SocketHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->close()V

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lw3/a/b/b/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public createResponseParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/SessionInputBuffer;",
            "Lorg/apache/http/HttpResponseFactory;",
            "Lorg/apache/http/params/HttpParams;",
            ")",
            "Lorg/apache/http/io/HttpMessageParser<",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/http/impl/conn/DefaultHttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x2000

    .line 1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lw3/a/b/b/a;

    invoke-interface {p2}, Lw3/a/b/b/a;->j()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;

    new-instance v0, Lorg/apache/http/impl/conn/Wire;

    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lw3/a/b/b/a;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/conn/Wire;-><init>(Lw3/a/b/b/a;)V

    invoke-static {p3}, Lorg/apache/http/params/HttpProtocolParams;->getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, p3}, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x2000

    .line 1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lw3/a/b/b/a;

    invoke-interface {p2}, Lw3/a/b/b/a;->j()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Lorg/apache/http/impl/conn/LoggingSessionOutputBuffer;

    new-instance v0, Lorg/apache/http/impl/conn/Wire;

    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lw3/a/b/b/a;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/conn/Wire;-><init>(Lw3/a/b/b/a;)V

    invoke-static {p3}, Lorg/apache/http/params/HttpProtocolParams;->getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, p3}, Lorg/apache/http/impl/conn/LoggingSessionOutputBuffer;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/impl/conn/Wire;Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public final isSecure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    return v0
.end method

.method public openCompleted(ZLorg/apache/http/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Parameters"

    .line 1
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->assertNotOpen()V

    .line 3
    iput-boolean p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    .line 4
    iget-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/SocketHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->assertNotOpen()V

    .line 2
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 3
    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    .line 4
    iget-boolean p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 6
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "Connection already shutdown"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    invoke-interface {v1}, Lw3/a/b/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    const-string v2, "Receiving response: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lw3/a/b/b/a;

    invoke-interface {v1}, Lw3/a/b/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lw3/a/b/b/a;

    const-string v2, "<< "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 6
    invoke-interface {v0}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 7
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 8
    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lw3/a/b/b/a;

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    const-string v1, "Sending request: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/http/impl/AbstractHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 4
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lw3/a/b/b/a;

    const-string v1, ">> "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    .line 7
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 8
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lw3/a/b/b/a;

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    .line 2
    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->shutdown()V

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lw3/a/b/b/a;

    const-string v2, "I/O error shutting down connection"

    invoke-interface {v1, v2, v0}, Lw3/a/b/b/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->assertOpen()V

    const-string v0, "Target host"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameters"

    .line 3
    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 5
    invoke-virtual {p0, p1, p4}, Lorg/apache/http/impl/SocketHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 6
    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    .line 7
    iput-boolean p3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    return-void
.end method
