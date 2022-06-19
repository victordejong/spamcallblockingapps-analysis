.class public Lcom/appnext/base/moments/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bZ:Lcom/appnext/base/moments/a/a;


# instance fields
.field private bW:Lcom/appnext/base/moments/a/b/a;

.field private bX:Lcom/appnext/base/moments/a/b/b;

.field private bY:Lcom/appnext/base/moments/a/b/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Lcom/appnext/base/moments/a/b/a;

    invoke-direct {v0}, Lcom/appnext/base/moments/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/moments/a/a;->bW:Lcom/appnext/base/moments/a/b/a;

    .line 3
    new-instance v0, Lcom/appnext/base/moments/a/b/b;

    invoke-direct {v0}, Lcom/appnext/base/moments/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/moments/a/a;->bX:Lcom/appnext/base/moments/a/b/b;

    .line 4
    new-instance v0, Lcom/appnext/base/moments/a/b/c;

    invoke-direct {v0}, Lcom/appnext/base/moments/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/moments/a/a;->bY:Lcom/appnext/base/moments/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "DatabaseFactory$initDB"

    .line 5
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static Q()Lcom/appnext/base/moments/a/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/base/moments/a/a;->bZ:Lcom/appnext/base/moments/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/base/moments/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/base/moments/a/a;->bZ:Lcom/appnext/base/moments/a/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/base/moments/a/a;

    invoke-direct {v1}, Lcom/appnext/base/moments/a/a;-><init>()V

    sput-object v1, Lcom/appnext/base/moments/a/a;->bZ:Lcom/appnext/base/moments/a/a;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/base/moments/a/a;->bZ:Lcom/appnext/base/moments/a/a;

    return-object v0
.end method


# virtual methods
.method public final R()Lcom/appnext/base/moments/a/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a;->bW:Lcom/appnext/base/moments/a/b/a;

    return-object v0
.end method

.method public final S()Lcom/appnext/base/moments/a/b/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a;->bX:Lcom/appnext/base/moments/a/b/b;

    return-object v0
.end method

.method public final T()Lcom/appnext/base/moments/a/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/a;->bY:Lcom/appnext/base/moments/a/b/c;

    return-object v0
.end method
