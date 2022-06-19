.class public final Le/m/a/h/a/a/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Le/m/a/h/a/d/g;


# instance fields
.field public final a:Le/m/a/h/a/a/e0;

.field public final b:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/h/a/a/z;

.field public final d:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "AssetPackManager"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/a/f3;->e:Le/m/a/h/a/d/g;

    return-void
.end method

.method public constructor <init>(Le/m/a/h/a/a/e0;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/z;Le/m/a/h/a/g/o0;Le/m/a/h/a/a/p1;Le/m/a/h/a/a/b1;Le/m/a/h/a/a/p0;Le/m/a/h/a/d/f1;Le/m/a/h/a/b/b;Le/m/a/h/a/a/j2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/a/e0;",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;",
            "Le/m/a/h/a/a/z;",
            "Le/m/a/h/a/g/o0;",
            "Le/m/a/h/a/a/p1;",
            "Le/m/a/h/a/a/b1;",
            "Le/m/a/h/a/a/p0;",
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Le/m/a/h/a/b/b;",
            "Le/m/a/h/a/a/j2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Landroid/os/Handler;

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le/m/a/h/a/a/f3;->a:Le/m/a/h/a/a/e0;

    iput-object p2, p0, Le/m/a/h/a/a/f3;->b:Le/m/a/h/a/d/f1;

    iput-object p3, p0, Le/m/a/h/a/a/f3;->c:Le/m/a/h/a/a/z;

    iput-object p8, p0, Le/m/a/h/a/a/f3;->d:Le/m/a/h/a/d/f1;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/a/f3;->c:Le/m/a/h/a/a/z;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Le/m/a/h/a/e/c;->e:Le/m/a/h/a/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 2
    iget-object v0, p0, Le/m/a/h/a/a/f3;->c:Le/m/a/h/a/a/z;

    .line 3
    monitor-enter v0

    :try_start_1
    iput-boolean p1, v0, Le/m/a/h/a/e/c;->f:Z

    .line 4
    invoke-virtual {v0}, Le/m/a/h/a/e/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 5
    iget-object p1, p0, Le/m/a/h/a/a/f3;->d:Le/m/a/h/a/d/f1;

    .line 6
    invoke-interface {p1}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Le/m/a/h/a/a/e3;

    invoke-direct {v0, p0}, Le/m/a/h/a/a/e3;-><init>(Le/m/a/h/a/a/f3;)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1
.end method
