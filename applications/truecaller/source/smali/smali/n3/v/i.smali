.class public final Ln3/v/i;
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
        "Ln3/v/l;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.lifecycle.CoroutineLiveDataKt$addDisposableSource$2"
    f = "CoroutineLiveData.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Lq3/a/i0;

.field public final synthetic f:Ln3/v/i0;

.field public final synthetic g:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Ln3/v/i0;Landroidx/lifecycle/LiveData;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/i;->f:Ln3/v/i0;

    iput-object p2, p0, Ln3/v/i;->g:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Ln3/v/i;

    iget-object v1, p0, Ln3/v/i;->f:Ln3/v/i0;

    iget-object v2, p0, Ln3/v/i;->g:Landroidx/lifecycle/LiveData;

    invoke-direct {v0, v1, v2, p2}, Ln3/v/i;-><init>(Ln3/v/i0;Landroidx/lifecycle/LiveData;Ls1/w/d;)V

    check-cast p1, Lq3/a/i0;

    iput-object p1, v0, Ln3/v/i;->e:Lq3/a/i0;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/i;

    iget-object v1, p0, Ln3/v/i;->f:Ln3/v/i0;

    iget-object v2, p0, Ln3/v/i;->g:Landroidx/lifecycle/LiveData;

    invoke-direct {v0, v1, v2, p2}, Ln3/v/i;-><init>(Ln3/v/i0;Landroidx/lifecycle/LiveData;Ls1/w/d;)V

    check-cast p1, Lq3/a/i0;

    iput-object p1, v0, Ln3/v/i;->e:Lq3/a/i0;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/v/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/v/i;->f:Ln3/v/i0;

    iget-object v0, p0, Ln3/v/i;->g:Landroidx/lifecycle/LiveData;

    new-instance v1, Ln3/v/i$a;

    invoke-direct {v1, p0}, Ln3/v/i$a;-><init>(Ln3/v/i;)V

    invoke-virtual {p1, v0, v1}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    .line 3
    new-instance p1, Ln3/v/l;

    .line 4
    iget-object v0, p0, Ln3/v/i;->g:Landroidx/lifecycle/LiveData;

    .line 5
    iget-object v1, p0, Ln3/v/i;->f:Ln3/v/i0;

    .line 6
    invoke-direct {p1, v0, v1}, Ln3/v/l;-><init>(Landroidx/lifecycle/LiveData;Ln3/v/i0;)V

    return-object p1
.end method
