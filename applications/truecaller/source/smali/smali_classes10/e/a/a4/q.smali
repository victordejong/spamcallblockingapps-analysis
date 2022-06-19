.class public final Le/a/a4/q;
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
    c = "com.truecaller.init.SuspendableAppInitInvocation$invoke$2"
    f = "AppInitInvocation.kt"
    l = {
        0x2b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a4/r;

.field public final synthetic g:Le/a/p5/m0;


# direct methods
.method public constructor <init>(Le/a/a4/r;Le/a/p5/m0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a4/q;->f:Le/a/a4/r;

    iput-object p2, p0, Le/a/a4/q;->g:Le/a/p5/m0;

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

    new-instance p1, Le/a/a4/q;

    iget-object v0, p0, Le/a/a4/q;->f:Le/a/a4/r;

    iget-object v1, p0, Le/a/a4/q;->g:Le/a/p5/m0;

    invoke-direct {p1, v0, v1, p2}, Le/a/a4/q;-><init>(Le/a/a4/r;Le/a/p5/m0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a4/q;

    iget-object v0, p0, Le/a/a4/q;->f:Le/a/a4/r;

    iget-object v1, p0, Le/a/a4/q;->g:Le/a/p5/m0;

    invoke-direct {p1, v0, v1, p2}, Le/a/a4/q;-><init>(Le/a/a4/r;Le/a/p5/m0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a4/q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a4/q;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a4/q;->f:Le/a/a4/r;

    .line 2
    iget-object v1, p1, Le/a/a4/r;->d:Ls1/z/b/l;

    .line 3
    iget-object p1, p1, Le/a/a4/r;->a:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Le/a/a4/q;->g:Le/a/p5/m0;

    iput v2, p0, Le/a/a4/q;->e:I

    invoke-static {v1, p1, v3, p0}, Le/a/m0/a1$k;->r0(Ls1/z/b/l;Ljava/lang/String;Le/a/p5/m0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
