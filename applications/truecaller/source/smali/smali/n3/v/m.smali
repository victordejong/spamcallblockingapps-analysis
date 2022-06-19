.class public final Ln3/v/m;
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
    c = "androidx.lifecycle.EmittedSource$disposeNow$2"
    f = "CoroutineLiveData.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Lq3/a/i0;

.field public final synthetic f:Ln3/v/l;


# direct methods
.method public constructor <init>(Ln3/v/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/m;->f:Ln3/v/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/m;

    iget-object v1, p0, Ln3/v/m;->f:Ln3/v/l;

    invoke-direct {v0, v1, p2}, Ln3/v/m;-><init>(Ln3/v/l;Ls1/w/d;)V

    check-cast p1, Lq3/a/i0;

    iput-object p1, v0, Ln3/v/m;->e:Lq3/a/i0;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ln3/v/m;->f:Ln3/v/l;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    check-cast p1, Lq3/a/i0;

    .line 4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-boolean p1, v1, Ln3/v/l;->a:Z

    if-nez p1, :cond_0

    .line 6
    iget-object p1, v1, Ln3/v/l;->c:Ln3/v/i0;

    iget-object p2, v1, Ln3/v/l;->b:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p2}, Ln3/v/i0;->n(Landroidx/lifecycle/LiveData;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v1, Ln3/v/l;->a:Z

    :cond_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/v/m;->f:Ln3/v/l;

    .line 3
    iget-boolean v0, p1, Ln3/v/l;->a:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p1, Ln3/v/l;->c:Ln3/v/i0;

    iget-object v1, p1, Ln3/v/l;->b:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Ln3/v/i0;->n(Landroidx/lifecycle/LiveData;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Ln3/v/l;->a:Z

    .line 6
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
