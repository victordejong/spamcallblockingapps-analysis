.class public Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markReusable()V

    .line 4
    iput-object p3, p2, Lorg/apache/http/impl/conn/AbstractPoolEntry;->route:Lorg/apache/http/conn/routing/HttpRoute;

    return-void
.end method
