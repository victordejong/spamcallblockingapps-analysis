.class public final Le/m/a/h/a/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/h/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/a/h/a/h/l<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public final c:Le/m/a/h/a/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/h/c<",
            "-TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Le/m/a/h/a/h/c<",
            "-TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/m/a/h/a/h/k;->b:Ljava/lang/Object;

    iput-object p1, p0, Le/m/a/h/a/h/k;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Le/m/a/h/a/h/k;->c:Le/m/a/h/a/h/c;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/h/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/r<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/a/h/a/h/r;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/h/a/h/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/h/k;->c:Le/m/a/h/a/h/c;

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Le/m/a/h/a/h/k;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Le/m/a/h/a/h/j;

    .line 4
    invoke-direct {v1, p0, p1}, Le/m/a/h/a/h/j;-><init>(Le/m/a/h/a/h/k;Le/m/a/h/a/h/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
