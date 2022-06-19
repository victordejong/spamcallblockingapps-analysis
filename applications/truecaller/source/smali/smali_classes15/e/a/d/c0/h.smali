.class public final Le/a/d/c0/h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Le/a/d/c0/j;",
        ">;",
        "Le/a/d/c0/j;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.CallUserResolverKt$takeUntilFinished$1"
    f = "CallUserResolver.kt"
    l = {
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lq3/a/x2/g;

    check-cast p2, Le/a/d/c0/j;

    check-cast p3, Ls1/w/d;

    const-string v0, "$this$create"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c0/h;

    invoke-direct {v0, p3}, Le/a/d/c0/h;-><init>(Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c0/h;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/c0/h;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/c0/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/h;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-boolean v0, p0, Le/a/d/c0/h;->h:Z

    iget v1, p0, Le/a/d/c0/h;->g:I

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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

    iget-object p1, p0, Le/a/d/c0/h;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/d/c0/h;->f:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/j;

    .line 4
    instance-of v4, v1, Le/a/d/c0/j$b;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Le/a/d/c0/j$b;

    .line 5
    iget-boolean v4, v4, Le/a/d/c0/j$b;->b:Z

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    .line 6
    :goto_0
    sget-object v5, Le/a/d/c0/j$a;->a:Le/a/d/c0/j$a;

    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    .line 7
    iput-object v6, p0, Le/a/d/c0/h;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d/c0/h;->g:I

    iput-boolean v5, p0, Le/a/d/c0/h;->h:Z

    iput v3, p0, Le/a/d/c0/h;->i:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move v1, v4

    move v0, v5

    :goto_1
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    move v2, v3

    .line 8
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
