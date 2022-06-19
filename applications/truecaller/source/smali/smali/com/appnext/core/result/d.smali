.class public final Lcom/appnext/core/result/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fp:Lcom/appnext/core/result/d;


# instance fields
.field private fj:Lcom/appnext/core/result/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized aX()Lcom/appnext/core/result/d;
    .locals 2

    const-class v0, Lcom/appnext/core/result/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/appnext/core/result/d;->fp:Lcom/appnext/core/result/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/appnext/core/result/d;

    invoke-direct {v1}, Lcom/appnext/core/result/d;-><init>()V

    sput-object v1, Lcom/appnext/core/result/d;->fp:Lcom/appnext/core/result/d;

    .line 3
    :cond_0
    sget-object v1, Lcom/appnext/core/result/d;->fp:Lcom/appnext/core/result/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/appnext/core/result/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/result/d;->fj:Lcom/appnext/core/result/c;

    return-void
.end method

.method public final aY()Lcom/appnext/core/result/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/result/d;->fj:Lcom/appnext/core/result/c;

    return-object v0
.end method
