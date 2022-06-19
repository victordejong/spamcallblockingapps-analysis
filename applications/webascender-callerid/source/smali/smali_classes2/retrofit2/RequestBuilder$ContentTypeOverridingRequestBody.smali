.class Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lm/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Lm/a0;

.field private final delegate:Lm/f0;


# direct methods
.method constructor <init>(Lm/f0;Lm/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/f0;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lm/f0;

    .line 3
    iput-object p2, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lm/a0;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lm/f0;

    invoke-virtual {v0}, Lm/f0;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lm/a0;

    return-object v0
.end method

.method public writeTo(Ln/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lm/f0;

    invoke-virtual {v0, p1}, Lm/f0;->writeTo(Ln/g;)V

    return-void
.end method
