.class abstract Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$StreamingRequestBody;
.super Lm/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StreamingRequestBody"
.end annotation


# instance fields
.field final contentLength:J

.field final contentType:Lm/a0;

.field final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lu/h/b;Lm/a0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/h/b;",
            "Lm/a0;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm/f0;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$StreamingRequestBody;->contentType:Lm/a0;

    .line 3
    iput-object p3, p0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$StreamingRequestBody;->values:Ljava/util/List;

    .line 4
    invoke-virtual {p1, p3}, Lu/h/b;->listSizeInBytes(Ljava/util/List;)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$StreamingRequestBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$StreamingRequestBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$StreamingRequestBody;->contentType:Lm/a0;

    return-object v0
.end method
