.class public Lorg/apache/http/impl/client/HttpClientBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/http/impl/client/HttpClientBuilder;

.field public final synthetic val$connectionEvictor:Lorg/apache/http/impl/client/IdleConnectionEvictor;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/HttpClientBuilder;Lorg/apache/http/impl/client/IdleConnectionEvictor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder$1;->this$0:Lorg/apache/http/impl/client/HttpClientBuilder;

    iput-object p2, p0, Lorg/apache/http/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->shutdown()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lorg/apache/http/impl/client/IdleConnectionEvictor;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
