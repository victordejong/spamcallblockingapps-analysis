.class public final Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final clientBuilder:Lm/c0$a;

.field compressionEnabled:Z

.field encoding:Lu/h/b;

.field endpoint:Lm/y;

.field maxRequests:I

.field messageMaxBytes:I


# direct methods
.method constructor <init>(Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lu/h/b;->JSON:Lu/h/b;

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->encoding:Lu/h/b;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->compressionEnabled:Z

    const/16 v0, 0x40

    .line 10
    iput v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->maxRequests:I

    const v0, 0x7a120

    .line 11
    iput v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->messageMaxBytes:I

    .line 12
    iget-object v0, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->client:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->z()Lm/c0$a;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->clientBuilder:Lm/c0$a;

    .line 13
    iget-object v0, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->endpoint:Lm/y;

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->endpoint:Lm/y;

    .line 14
    iget-object v0, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->client:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->p()Lm/r;

    move-result-object v0

    invoke-virtual {v0}, Lm/r;->i()I

    move-result v0

    iput v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->maxRequests:I

    .line 15
    iget-boolean v0, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->compressionEnabled:Z

    iput-boolean v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->compressionEnabled:Z

    .line 16
    iget-object v0, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->encoding:Lu/h/b;

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->encoding:Lu/h/b;

    .line 17
    iget p1, p1, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;->messageMaxBytes:I

    iput p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->messageMaxBytes:I

    return-void
.end method

.method constructor <init>(Lm/c0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lu/h/b;->JSON:Lu/h/b;

    iput-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->encoding:Lu/h/b;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->compressionEnabled:Z

    const/16 v0, 0x40

    .line 4
    iput v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->maxRequests:I

    const v0, 0x7a120

    .line 5
    iput v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->messageMaxBytes:I

    .line 6
    iput-object p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->clientBuilder:Lm/c0$a;

    return-void
.end method


# virtual methods
.method public final build()Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;

    invoke-direct {v0, p0}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;-><init>(Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;)V

    return-object v0
.end method

.method public clientBuilder()Lm/c0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->clientBuilder:Lm/c0$a;

    return-object v0
.end method

.method public compressionEnabled(Z)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->compressionEnabled:Z

    return-object p0
.end method

.method public final connectTimeout(I)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->clientBuilder:Lm/c0$a;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lm/c0$a;->f(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    return-object p0
.end method

.method public encoding(Lu/h/b;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 1

    const-string v0, "encoding == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->encoding:Lu/h/b;

    return-object p0
.end method

.method public endpoint(Ljava/lang/String;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 3

    const-string v0, "endpoint == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lm/y;->m(Ljava/lang/String;)Lm/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->endpoint(Lm/y;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid POST url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endpoint(Lm/y;)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 1

    const-string v0, "endpoint == null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->endpoint:Lm/y;

    return-object p0
.end method

.method public maxRequests(I)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->maxRequests:I

    return-object p0
.end method

.method public messageMaxBytes(I)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->messageMaxBytes:I

    return-object p0
.end method

.method public final readTimeout(I)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->clientBuilder:Lm/c0$a;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lm/c0$a;->P(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    return-object p0
.end method

.method public final writeTimeout(I)Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$Builder;->clientBuilder:Lm/c0$a;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lm/c0$a;->R(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    return-object p0
.end method
