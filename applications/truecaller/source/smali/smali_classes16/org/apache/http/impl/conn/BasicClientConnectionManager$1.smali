.class public Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/BasicClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/http/impl/conn/BasicClientConnectionManager;

.field public final synthetic val$route:Lorg/apache/http/conn/routing/HttpRoute;

.field public final synthetic val$state:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/BasicClientConnectionManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;->this$0:Lorg/apache/http/impl/conn/BasicClientConnectionManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    iput-object p3, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 0

    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;->this$0:Lorg/apache/http/impl/conn/BasicClientConnectionManager;

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    iget-object p3, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object p1

    return-object p1
.end method
