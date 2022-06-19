.class final Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;
.super Lm/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingResponseBody"
.end annotation


# instance fields
.field private final delegate:Lm/h0;

.field private final delegateSource:Ln/h;

.field thrownException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lm/h0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lm/h0;

    .line 3
    new-instance v0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;

    .line 4
    invoke-virtual {p1}, Lm/h0;->source()Ln/h;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody$1;-><init>(Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;Ln/d0;)V

    .line 5
    invoke-static {v0}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegateSource:Ln/h;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lm/h0;

    invoke-virtual {v0}, Lm/h0;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lm/h0;

    invoke-virtual {v0}, Lm/h0;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegate:Lm/h0;

    invoke-virtual {v0}, Lm/h0;->contentType()Lm/a0;

    move-result-object v0

    return-object v0
.end method

.method public source()Ln/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->delegateSource:Ln/h;

    return-object v0
.end method

.method throwIfCaught()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->thrownException:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method
