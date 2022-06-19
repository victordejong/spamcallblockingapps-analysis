.class public final Le/a/p5/s0/k;
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
    c = "com.truecaller.utils.extensions.CoroutinesKt$openSubscription$1"
    f = "Coroutines.kt"
    l = {
        0x3a,
        0x3d,
        0x3e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Lq3/a/w2/z;

.field public final synthetic i:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Lq3/a/w2/z;Ls1/z/b/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/k;->h:Lq3/a/w2/z;

    iput-object p2, p0, Le/a/p5/s0/k;->i:Ls1/z/b/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/p5/s0/k;

    iget-object v0, p0, Le/a/p5/s0/k;->h:Lq3/a/w2/z;

    iget-object v1, p0, Le/a/p5/s0/k;->i:Ls1/z/b/p;

    invoke-direct {p1, v0, v1, p2}, Le/a/p5/s0/k;-><init>(Lq3/a/w2/z;Ls1/z/b/p;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/p5/s0/k;

    iget-object v0, p0, Le/a/p5/s0/k;->h:Lq3/a/w2/z;

    iget-object v1, p0, Le/a/p5/s0/k;->i:Ls1/z/b/p;

    invoke-direct {p1, v0, v1, p2}, Le/a/p5/s0/k;-><init>(Lq3/a/w2/z;Ls1/z/b/p;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/p5/s0/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p5/s0/k;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/p5/s0/k;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

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
    iget-object v1, p0, Le/a/p5/s0/k;->f:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    iget-object v5, p0, Le/a/p5/s0/k;->e:Ljava/lang/Object;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v5

    move-object v5, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_3

    :cond_2
    iget-object v1, p0, Le/a/p5/s0/k;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/p5/s0/k;->h:Lq3/a/w2/z;

    invoke-interface {p1}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v1, p1

    :goto_0
    move-object p1, p0

    :goto_1
    iput-object v1, p1, Le/a/p5/s0/k;->e:Ljava/lang/Object;

    iput v4, p1, Le/a/p5/s0/k;->g:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    move-object v8, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v1

    move-object v1, v8

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v5}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    .line 5
    iput-object p1, v0, Le/a/p5/s0/k;->e:Ljava/lang/Object;

    iput-object v5, v0, Le/a/p5/s0/k;->f:Ljava/lang/Object;

    iput v3, v0, Le/a/p5/s0/k;->g:I

    invoke-static {v0}, Lq3/a/j;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_3
    iget-object v6, v0, Le/a/p5/s0/k;->i:Ls1/z/b/p;

    iput-object v5, v0, Le/a/p5/s0/k;->e:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v0, Le/a/p5/s0/k;->f:Ljava/lang/Object;

    iput v2, v0, Le/a/p5/s0/k;->g:I

    invoke-interface {v6, p1, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    .line 7
    :cond_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
