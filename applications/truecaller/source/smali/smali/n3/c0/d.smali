.class public final Ln3/c0/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.room.CoroutinesRoom$Companion$execute$4$job$1"
    f = "CoroutinesRoom.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lq3/a/n;

.field public final synthetic f:Ls1/w/e;

.field public final synthetic g:Ljava/util/concurrent/Callable;

.field public final synthetic h:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lq3/a/n;Ls1/w/d;Ls1/w/e;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Ln3/c0/d;->e:Lq3/a/n;

    iput-object p3, p0, Ln3/c0/d;->f:Ls1/w/e;

    iput-object p4, p0, Ln3/c0/d;->g:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Ln3/c0/d;->h:Landroid/os/CancellationSignal;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/c0/d;

    iget-object v1, p0, Ln3/c0/d;->e:Lq3/a/n;

    iget-object v3, p0, Ln3/c0/d;->f:Ls1/w/e;

    iget-object v4, p0, Ln3/c0/d;->g:Ljava/util/concurrent/Callable;

    iget-object v5, p0, Ln3/c0/d;->h:Landroid/os/CancellationSignal;

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ln3/c0/d;-><init>(Lq3/a/n;Ls1/w/d;Ls1/w/e;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Ln3/c0/d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Ln3/c0/d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/c0/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Ln3/c0/d;->g:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Ln3/c0/d;->e:Lq3/a/n;

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Ln3/c0/d;->e:Lq3/a/n;

    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    .line 5
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
