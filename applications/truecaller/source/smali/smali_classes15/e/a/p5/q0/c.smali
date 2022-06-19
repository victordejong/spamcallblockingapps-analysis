.class public final Le/a/p5/q0/c;
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
    c = "com.truecaller.utils.async.RetryHelper$retryIf$2$2"
    f = "RetryHelper.kt"
    l = {
        0x1d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/p5/q0/e;

.field public final synthetic g:Ls1/z/b/l;

.field public final synthetic h:Ls1/z/b/l;

.field public final synthetic i:J

.field public final synthetic j:Ls1/w/d;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/p5/q0/e;Ls1/z/b/l;Ls1/z/b/l;JLs1/w/d;)V
    .locals 0

    iput-object p2, p0, Le/a/p5/q0/c;->f:Le/a/p5/q0/e;

    iput-object p3, p0, Le/a/p5/q0/c;->g:Ls1/z/b/l;

    iput-object p4, p0, Le/a/p5/q0/c;->h:Ls1/z/b/l;

    iput-wide p5, p0, Le/a/p5/q0/c;->i:J

    iput-object p7, p0, Le/a/p5/q0/c;->j:Ls1/w/d;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance p1, Le/a/p5/q0/c;

    iget-object v2, p0, Le/a/p5/q0/c;->f:Le/a/p5/q0/e;

    iget-object v3, p0, Le/a/p5/q0/c;->g:Ls1/z/b/l;

    iget-object v4, p0, Le/a/p5/q0/c;->h:Ls1/z/b/l;

    iget-wide v5, p0, Le/a/p5/q0/c;->i:J

    iget-object v7, p0, Le/a/p5/q0/c;->j:Ls1/w/d;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Le/a/p5/q0/c;-><init>(Ls1/w/d;Le/a/p5/q0/e;Ls1/z/b/l;Ls1/z/b/l;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/p5/q0/c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/p5/q0/c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/p5/q0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p5/q0/c;->e:I

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

    .line 4
    iget-wide v3, p0, Le/a/p5/q0/c;->i:J

    iput v2, p0, Le/a/p5/q0/c;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
