.class public final Ln3/z/t;
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
    c = "androidx.paging.ContiguousPagedList$deferBoundaryCallbacks$1"
    f = "ContiguousPagedList.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ln3/z/u;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Ln3/z/u;ZZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/t;->e:Ln3/z/u;

    iput-boolean p2, p0, Ln3/z/t;->f:Z

    iput-boolean p3, p0, Ln3/z/t;->g:Z

    iput-boolean p4, p0, Ln3/z/t;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Ln3/z/t;

    iget-object v1, p0, Ln3/z/t;->e:Ln3/z/u;

    iget-boolean v2, p0, Ln3/z/t;->f:Z

    iget-boolean v3, p0, Ln3/z/t;->g:Z

    iget-boolean v4, p0, Ln3/z/t;->h:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ln3/z/t;-><init>(Ln3/z/u;ZZZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Ln3/z/t;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Ln3/z/t;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/t;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Ln3/z/t;->f:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ln3/z/t;->e:Ln3/z/u;

    .line 4
    iget-object p1, p1, Ln3/z/u;->s:Ln3/z/q1$a;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-boolean p1, p0, Ln3/z/t;->g:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Ln3/z/t;->e:Ln3/z/u;

    .line 8
    iput-boolean v0, p1, Ln3/z/u;->l:Z

    .line 9
    :cond_1
    iget-boolean p1, p0, Ln3/z/t;->h:Z

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Ln3/z/t;->e:Ln3/z/u;

    .line 11
    iput-boolean v0, p1, Ln3/z/u;->m:Z

    .line 12
    :cond_2
    iget-object p1, p0, Ln3/z/t;->e:Ln3/z/u;

    const/4 v0, 0x0

    .line 13
    sget v1, Ln3/z/u;->u:I

    .line 14
    invoke-virtual {p1, v0}, Ln3/z/u;->u(Z)V

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
