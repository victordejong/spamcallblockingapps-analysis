.class public final Ln3/z/u$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/u;->u(Z)V
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
    c = "androidx.paging.ContiguousPagedList$tryDispatchBoundaryCallbacks$1"
    f = "ContiguousPagedList.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ln3/z/u;

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Ln3/z/u;ZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/u$a;->e:Ln3/z/u;

    iput-boolean p2, p0, Ln3/z/u$a;->f:Z

    iput-boolean p3, p0, Ln3/z/u$a;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/u$a;

    iget-object v0, p0, Ln3/z/u$a;->e:Ln3/z/u;

    iget-boolean v1, p0, Ln3/z/u$a;->f:Z

    iget-boolean v2, p0, Ln3/z/u$a;->g:Z

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/u$a;-><init>(Ln3/z/u;ZZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ln3/z/u$a;->e:Ln3/z/u;

    iget-boolean v0, p0, Ln3/z/u$a;->f:Z

    iget-boolean v1, p0, Ln3/z/u$a;->g:Z

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    sget v2, Ln3/z/u;->u:I

    .line 6
    invoke-virtual {p1, v0, v1}, Ln3/z/u;->o(ZZ)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/z/u$a;->e:Ln3/z/u;

    iget-boolean v0, p0, Ln3/z/u$a;->f:Z

    iget-boolean v1, p0, Ln3/z/u$a;->g:Z

    .line 3
    sget v2, Ln3/z/u;->u:I

    .line 4
    invoke-virtual {p1, v0, v1}, Ln3/z/u;->o(ZZ)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
