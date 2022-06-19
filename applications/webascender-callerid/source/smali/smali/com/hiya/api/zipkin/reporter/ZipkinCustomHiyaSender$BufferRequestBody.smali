.class final Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;
.super Lm/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferRequestBody"
.end annotation


# instance fields
.field final body:Ln/f;

.field final contentType:Lm/a0;


# direct methods
.method constructor <init>(Lm/a0;Ln/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/f0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;->contentType:Lm/a0;

    .line 3
    iput-object p2, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;->body:Ln/f;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;->body:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;->contentType:Lm/a0;

    return-object v0
.end method

.method public writeTo(Ln/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender$BufferRequestBody;->body:Ln/f;

    invoke-virtual {v0}, Ln/f;->p0()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln/b0;->B0(Ln/f;J)V

    return-void
.end method
