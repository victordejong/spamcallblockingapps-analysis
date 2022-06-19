.class public final Ln3/z/g1$g$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g1$g;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4"
    f = "PageFetcherSnapshot.kt"
    l = {
        0x24d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/g1$g;

.field public final synthetic h:Lq3/a/w2/j;


# direct methods
.method public constructor <init>(Ln3/z/g1$g;Lq3/a/w2/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iput-object p2, p0, Ln3/z/g1$g$c;->h:Lq3/a/w2/j;

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

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/g1$g$c;

    iget-object v1, p0, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object v2, p0, Ln3/z/g1$g$c;->h:Lq3/a/w2/j;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/g1$g$c;-><init>(Ln3/z/g1$g;Lq3/a/w2/j;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/g1$g$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/g1$g$c;

    iget-object v1, p0, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object v2, p0, Ln3/z/g1$g$c;->h:Lq3/a/w2/j;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/g1$g$c;-><init>(Ln3/z/g1$g;Lq3/a/w2/j;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/g1$g$c;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/g1$g$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/g1$g$c;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/z/g1$g$c;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v1, p0, Ln3/z/g1$g$c;->h:Lq3/a/w2/j;

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->l0(Lq3/a/w2/z;)Lq3/a/x2/f;

    move-result-object v1

    .line 5
    new-instance v3, Ln3/z/g1$g$c$a;

    invoke-direct {v3, p0, p1}, Ln3/z/g1$g$c$a;-><init>(Ln3/z/g1$g$c;Lq3/a/i0;)V

    iput v2, p0, Ln3/z/g1$g$c;->f:I

    check-cast v1, Lq3/a/x2/c;

    invoke-virtual {v1, v3, p0}, Lq3/a/x2/c;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
