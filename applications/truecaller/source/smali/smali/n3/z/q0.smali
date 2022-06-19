.class public final Ln3/z/q0;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "Ln3/z/q1<",
        "TValue;>;>;"
    }
.end annotation


# instance fields
.field public l:Ln3/z/q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/q1<",
            "TValue;>;"
        }
    .end annotation
.end field

.field public m:Lq3/a/p1;

.field public final n:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/Runnable;

.field public final p:Lq3/a/i0;

.field public final q:Ln3/z/q1$c;

.field public final r:Ln3/z/q1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/q1$a<",
            "TValue;>;"
        }
    .end annotation
.end field

.field public final s:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ln3/z/k2<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field public final t:Lq3/a/g0;

.field public final u:Lq3/a/g0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ljava/lang/Object;Ln3/z/q1$c;Ln3/z/q1$a;Ls1/z/b/a;Lq3/a/g0;Lq3/a/g0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "TKey;",
            "Ln3/z/q1$c;",
            "Ln3/z/q1$a<",
            "TValue;>;",
            "Ls1/z/b/a<",
            "+",
            "Ln3/z/k2<",
            "TKey;TValue;>;>;",
            "Lq3/a/g0;",
            "Lq3/a/g0;",
            ")V"
        }
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagingSourceFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyDispatcher"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDispatcher"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/z/h0;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p7

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ln3/z/h0;-><init>(Lq3/a/i0;Lq3/a/g0;Lq3/a/g0;Ln3/z/q1$c;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, v0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ln3/z/q0;->p:Lq3/a/i0;

    iput-object p3, p0, Ln3/z/q0;->q:Ln3/z/q1$c;

    iput-object p4, p0, Ln3/z/q0;->r:Ln3/z/q1$a;

    iput-object p5, p0, Ln3/z/q0;->s:Ls1/z/b/a;

    iput-object p6, p0, Ln3/z/q0;->t:Lq3/a/g0;

    iput-object p7, p0, Ln3/z/q0;->u:Lq3/a/g0;

    .line 3
    new-instance p1, Ln3/z/q0$a;

    invoke-direct {p1, p0}, Ln3/z/q0$a;-><init>(Ln3/z/q0;)V

    iput-object p1, p0, Ln3/z/q0;->n:Ls1/z/b/a;

    .line 4
    new-instance p1, Ln3/z/q0$c;

    invoke-direct {p1, p0}, Ln3/z/q0$c;-><init>(Ln3/z/q0;)V

    iput-object p1, p0, Ln3/z/q0;->o:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/q1;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Ln3/z/q0;->l:Ln3/z/q1;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ln3/z/q0;->m(Z)V

    return-void
.end method

.method public final m(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/z/q0;->m:Lq3/a/p1;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, v1, p1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_1
    iget-object v2, p0, Ln3/z/q0;->p:Lq3/a/i0;

    iget-object v3, p0, Ln3/z/q0;->u:Lq3/a/g0;

    const/4 v4, 0x0

    new-instance v5, Ln3/z/q0$b;

    invoke-direct {v5, p0, p1}, Ln3/z/q0$b;-><init>(Ln3/z/q0;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Ln3/z/q0;->m:Lq3/a/p1;

    return-void
.end method
