.class final Lcom/hiya/api/zipkin/reporter/HttpCall;
.super Lu/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/api/zipkin/reporter/HttpCall$V2CallbackAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/b<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final call:Lm/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/api/zipkin/reporter/HttpCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hiya/api/zipkin/reporter/HttpCall;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lm/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/api/zipkin/reporter/HttpCall;->call:Lm/f;

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

    const-string v1, "response failed: "

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lm/g0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/hiya/api/zipkin/reporter/HttpCall;->TAG:Ljava/lang/String;

    const-string v0, "response success with no response body"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/hiya/api/zipkin/reporter/HttpCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lm/h0;->source()Ln/h;

    move-result-object v2

    const-string v3, "gzip"

    const-string v4, "Content-Encoding"

    .line 7
    invoke-virtual {p0, v4}, Lm/g0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    new-instance v2, Ln/o;

    invoke-virtual {v0}, Lm/h0;->source()Ln/h;

    move-result-object v3

    invoke-direct {v2, v3}, Ln/o;-><init>(Ln/d0;)V

    invoke-static {v2}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object v2

    .line 9
    :cond_2
    invoke-virtual {p0}, Lm/g0;->y()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    sget-object v1, Lcom/hiya/api/zipkin/reporter/HttpCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0}, Lm/h0;->close()V

    return-void

    .line 12
    :cond_3
    :try_start_1
    sget-object v3, Lcom/hiya/api/zipkin/reporter/HttpCall;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lm/g0;->M()Lm/e0;

    move-result-object p0

    invoke-virtual {p0}, Lm/e0;->j()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ln/h;->S0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {v0}, Lm/h0;->close()V

    .line 16
    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/HttpCall;->call:Lm/f;

    invoke-interface {v0}, Lm/f;->cancel()V

    return-void
.end method

.method public clone()Lcom/hiya/api/zipkin/reporter/HttpCall;
    .locals 2

    .line 3
    new-instance v0, Lcom/hiya/api/zipkin/reporter/HttpCall;

    iget-object v1, p0, Lcom/hiya/api/zipkin/reporter/HttpCall;->call:Lm/f;

    invoke-interface {v1}, Lm/f;->clone()Lm/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/api/zipkin/reporter/HttpCall;-><init>(Lm/f;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/api/zipkin/reporter/HttpCall;->clone()Lcom/hiya/api/zipkin/reporter/HttpCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lu/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/api/zipkin/reporter/HttpCall;->clone()Lcom/hiya/api/zipkin/reporter/HttpCall;

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
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/HttpCall;->call:Lm/f;

    new-instance v1, Lcom/hiya/api/zipkin/reporter/HttpCall$V2CallbackAdapter;

    invoke-direct {v1, p1}, Lcom/hiya/api/zipkin/reporter/HttpCall$V2CallbackAdapter;-><init>(Lu/c;)V

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
    invoke-virtual {p0}, Lcom/hiya/api/zipkin/reporter/HttpCall;->execute()Ljava/lang/Void;

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
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/HttpCall;->call:Lm/f;

    invoke-interface {v0}, Lm/f;->execute()Lm/g0;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/api/zipkin/reporter/HttpCall;->parseResponse(Lm/g0;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/HttpCall;->call:Lm/f;

    invoke-interface {v0}, Lm/f;->isCanceled()Z

    move-result v0

    return v0
.end method
