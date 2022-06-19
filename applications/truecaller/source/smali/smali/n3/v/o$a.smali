.class public final Ln3/v/o$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/v/o;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1"
    f = "FlowLiveData.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Lq3/a/i0;

.field public final synthetic f:Ln3/v/o;

.field public final synthetic g:Ln3/v/l0;


# direct methods
.method public constructor <init>(Ln3/v/o;Ln3/v/l0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/o$a;->f:Ln3/v/o;

    iput-object p2, p0, Ln3/v/o$a;->g:Ln3/v/l0;

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

    new-instance v0, Ln3/v/o$a;

    iget-object v1, p0, Ln3/v/o$a;->f:Ln3/v/o;

    iget-object v2, p0, Ln3/v/o$a;->g:Ln3/v/l0;

    invoke-direct {v0, v1, v2, p2}, Ln3/v/o$a;-><init>(Ln3/v/o;Ln3/v/l0;Ls1/w/d;)V

    check-cast p1, Lq3/a/i0;

    iput-object p1, v0, Ln3/v/o$a;->e:Lq3/a/i0;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln3/v/o$a;->f:Ln3/v/o;

    iget-object v1, p0, Ln3/v/o$a;->g:Ln3/v/l0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    check-cast p1, Lq3/a/i0;

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    .line 5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 6
    iget-object p2, v0, Ln3/v/o;->l:Landroidx/lifecycle/LiveData;

    invoke-virtual {p2, v1}, Landroidx/lifecycle/LiveData;->g(Ln3/v/l0;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/v/o$a;->f:Ln3/v/o;

    iget-object p1, p1, Ln3/v/o;->l:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Ln3/v/o$a;->g:Ln3/v/l0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->g(Ln3/v/l0;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
