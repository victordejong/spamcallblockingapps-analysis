.class public Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;
.super Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;
.source "SourceFile"


# instance fields
.field private final headerLog:Lw3/a/b/b/a;

.field private final log:Lw3/a/b/b/a;

.field private final wire:Lorg/apache/http/impl/conn/Wire;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lw3/a/b/b/a;Lw3/a/b/b/a;Lw3/a/b/b/a;IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lw3/a/b/b/a;",
            "Lw3/a/b/b/a;",
            "Lw3/a/b/b/a;",
            "II",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/http/config/MessageConstraints;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/entity/ContentLengthStrategy;",
            "Lorg/apache/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageParserFactory<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    .line 1
    invoke-direct/range {v0 .. v10}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;-><init>(Ljava/lang/String;IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    move-object v0, p2

    .line 2
    iput-object v0, v11, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->log:Lw3/a/b/b/a;

    move-object v0, p3

    .line 3
    iput-object v0, v11, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->headerLog:Lw3/a/b/b/a;

    .line 4
    new-instance v0, Lorg/apache/http/impl/conn/Wire;

    move-object/from16 v2, p4

    invoke-direct {v0, v2, p1}, Lorg/apache/http/impl/conn/Wire;-><init>(Lw3/a/b/b/a;Ljava/lang/String;)V

    iput-object v0, v11, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/Wire;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/http/impl/BHttpConnectionBase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->log:Lw3/a/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Close connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-super {p0}, Lorg/apache/http/impl/BHttpConnectionBase;->close()V

    :cond_1
    return-void
.end method

.method public getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/http/impl/BHttpConnectionBase;->getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/http/impl/conn/LoggingInputStream;

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/conn/LoggingInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/impl/conn/Wire;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/http/impl/BHttpConnectionBase;->getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/http/impl/conn/LoggingOutputStream;

    iget-object v1, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->wire:Lorg/apache/http/impl/conn/Wire;

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/conn/LoggingOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/http/impl/conn/Wire;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public onRequestSubmitted(Lorg/apache/http/HttpRequest;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->headerLog:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->headerLog:Lw3/a/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 5
    iget-object v4, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->headerLog:Lw3/a/b/b/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResponseReceived(Lorg/apache/http/HttpResponse;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->headerLog:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->headerLog:Lw3/a/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 5
    iget-object v4, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->headerLog:Lw3/a/b/b/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->log:Lw3/a/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": set socket timeout to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/http/impl/BHttpConnectionBase;->setSocketTimeout(I)V

    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;->log:Lw3/a/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Shutdown connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;->shutdown()V

    return-void
.end method
