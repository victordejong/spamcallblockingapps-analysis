.class public final Le/a/p5/s0/j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/e<",
        "TT;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.utils.extensions.CoroutinesKt$createActor$2"
    f = "Coroutines.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/j;->g:Ls1/z/b/l;

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

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p5/s0/j;

    iget-object v1, p0, Le/a/p5/s0/j;->g:Ls1/z/b/l;

    invoke-direct {v0, v1, p2}, Le/a/p5/s0/j;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/s0/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p5/s0/j;

    iget-object v1, p0, Le/a/p5/s0/j;->g:Ls1/z/b/l;

    invoke-direct {v0, v1, p2}, Le/a/p5/s0/j;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/s0/j;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/p5/s0/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p5/s0/j;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/p5/s0/j;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/p5/s0/j;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/w2/e;

    .line 4
    invoke-interface {p1}, Lq3/a/w2/e;->Z1()Lq3/a/w2/j;

    move-result-object p1

    invoke-interface {p1}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v1, p1

    move-object p1, p0

    :goto_0
    iput-object v1, p1, Le/a/p5/s0/j;->e:Ljava/lang/Object;

    iput v2, p1, Le/a/p5/s0/j;->f:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v5, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v3}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v4, v0, Le/a/p5/s0/j;->g:Ls1/z/b/l;

    invoke-interface {v4, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
