.class final Lzipkin2/reporter/b/a;
.super Lu/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/reporter/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/b<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Lm/f;


# direct methods
.method constructor <init>(Lm/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu/b;-><init>()V

    .line 2
    iput-object p1, p0, Lzipkin2/reporter/b/a;->f:Lm/f;

    return-void
.end method

.method static parseResponse(Lm/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm/g0;->a()Lm/h0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lm/g0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lm/h0;->source()Ln/h;

    move-result-object v1

    const-string v2, "gzip"

    const-string v3, "Content-Encoding"

    .line 5
    invoke-virtual {p0, v3}, Lm/g0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    new-instance v1, Ln/o;

    invoke-virtual {v0}, Lm/h0;->source()Ln/h;

    move-result-object v2

    invoke-direct {v1, v2}, Ln/o;-><init>(Ln/d0;)V

    invoke-static {v1}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lm/g0;->y()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v0}, Lm/h0;->close()V

    return-void

    .line 9
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lm/g0;->M()Lm/e0;

    move-result-object p0

    invoke-virtual {p0}, Lm/e0;->j()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ln/h;->S0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {v0}, Lm/h0;->close()V

    .line 12
    throw p0
.end method


# virtual methods
.method public a()Lzipkin2/reporter/b/a;
    .locals 2

    .line 1
    new-instance v0, Lzipkin2/reporter/b/a;

    iget-object v1, p0, Lzipkin2/reporter/b/a;->f:Lm/f;

    invoke-interface {v1}, Lm/f;->clone()Lm/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lzipkin2/reporter/b/a;-><init>(Lm/f;)V

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzipkin2/reporter/b/a;->f:Lm/f;

    invoke-interface {v0}, Lm/f;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lzipkin2/reporter/b/a;->a()Lzipkin2/reporter/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lu/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lzipkin2/reporter/b/a;->a()Lzipkin2/reporter/b/a;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lu/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzipkin2/reporter/b/a;->f:Lm/f;

    new-instance v1, Lzipkin2/reporter/b/a$a;

    invoke-direct {v1, p1}, Lzipkin2/reporter/b/a$a;-><init>(Lu/c;)V

    invoke-interface {v0, v1}, Lm/f;->M(Lm/g;)V

    return-void
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lzipkin2/reporter/b/a;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzipkin2/reporter/b/a;->f:Lm/f;

    invoke-interface {v0}, Lm/f;->execute()Lm/g0;

    move-result-object v0

    invoke-static {v0}, Lzipkin2/reporter/b/a;->parseResponse(Lm/g0;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzipkin2/reporter/b/a;->f:Lm/f;

    invoke-interface {v0}, Lm/f;->isCanceled()Z

    move-result v0

    return v0
.end method
