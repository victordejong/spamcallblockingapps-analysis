.class public Lcom/appnext/base/moments/services/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile cs:Lcom/appnext/base/moments/services/b/a;


# instance fields
.field private ct:Lcom/appnext/base/moments/services/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Lcom/appnext/base/moments/services/a/b;

    invoke-direct {v0, p1}, Lcom/appnext/base/moments/services/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/base/moments/services/b/a;->ct:Lcom/appnext/base/moments/services/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ServiceOperationsManager$ServiceOperationsManager"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/appnext/base/moments/services/b/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/base/moments/services/b/a;->cs:Lcom/appnext/base/moments/services/b/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/base/moments/services/b/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/base/moments/services/b/a;->cs:Lcom/appnext/base/moments/services/b/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/base/moments/services/b/a;

    invoke-direct {v1, p0}, Lcom/appnext/base/moments/services/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/base/moments/services/b/a;->cs:Lcom/appnext/base/moments/services/b/a;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/appnext/base/moments/services/b/a;->cs:Lcom/appnext/base/moments/services/b/a;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appnext/base/moments/a/a/c;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/services/b/a;->ct:Lcom/appnext/base/moments/services/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/appnext/base/moments/services/a/a;->a(Lcom/appnext/base/moments/a/a/c;Z)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/moments/a/a/c;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/appnext/base/moments/services/b/a;->ct:Lcom/appnext/base/moments/services/a/a;

    invoke-virtual {v0, p1}, Lcom/appnext/base/moments/services/a/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public final c(Lcom/appnext/base/moments/a/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/services/b/a;->ct:Lcom/appnext/base/moments/services/a/a;

    invoke-virtual {v0, p1}, Lcom/appnext/base/moments/services/a/a;->c(Lcom/appnext/base/moments/a/a/c;)V

    return-void
.end method
