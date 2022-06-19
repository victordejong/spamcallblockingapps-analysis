.class public final Le/a/w4/s/q0;
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
    c = "com.truecaller.search.global.PopulateFilterMatchHelper$populate$1"
    f = "PopulateFilterMatchHelper.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/w4/s/p0;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Le/a/p5/p0;

.field public final synthetic i:Ls1/a/l;


# direct methods
.method public constructor <init>(Le/a/w4/s/p0;Ljava/util/List;Le/a/p5/p0;Ls1/a/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/q0;->f:Le/a/w4/s/p0;

    iput-object p2, p0, Le/a/w4/s/q0;->g:Ljava/util/List;

    iput-object p3, p0, Le/a/w4/s/q0;->h:Le/a/p5/p0;

    iput-object p4, p0, Le/a/w4/s/q0;->i:Ls1/a/l;

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

    new-instance p1, Le/a/w4/s/q0;

    iget-object v1, p0, Le/a/w4/s/q0;->f:Le/a/w4/s/p0;

    iget-object v2, p0, Le/a/w4/s/q0;->g:Ljava/util/List;

    iget-object v3, p0, Le/a/w4/s/q0;->h:Le/a/p5/p0;

    iget-object v4, p0, Le/a/w4/s/q0;->i:Ls1/a/l;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/w4/s/q0;-><init>(Le/a/w4/s/p0;Ljava/util/List;Le/a/p5/p0;Ls1/a/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/w4/s/q0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/w4/s/q0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/w4/s/q0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/w4/s/q0;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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

    .line 4
    iget-object p1, p0, Le/a/w4/s/q0;->f:Le/a/w4/s/p0;

    .line 5
    iget-object p1, p1, Le/a/w4/s/p0;->e:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/w4/s/q0$a;

    invoke-direct {v1, p0, v2}, Le/a/w4/s/q0$a;-><init>(Le/a/w4/s/q0;Ls1/w/d;)V

    iput v3, p0, Le/a/w4/s/q0;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 8
    iget-object v0, p0, Le/a/w4/s/q0;->h:Le/a/p5/p0;

    iget-object v1, p0, Le/a/w4/s/q0;->i:Ls1/a/l;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "property"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, v0, Le/a/p5/p0;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 11
    :cond_3
    check-cast v2, Le/a/w4/s/p0$a;

    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, Le/a/w4/s/p0$a;->Dg(Ljava/util/List;)V

    .line 12
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
