.class public final Le/a/o/p/c/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContextDbHelperImpl$deleteExpired$2"
    f = "IncomingCallContextDbHelper.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/p/c/g;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Le/a/o/p/c/g;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/c/e;->f:Le/a/o/p/c/g;

    iput-wide p2, p0, Le/a/o/p/c/e;->g:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/p/c/e;

    iget-object v1, p0, Le/a/o/p/c/e;->f:Le/a/o/p/c/g;

    iget-wide v2, p0, Le/a/o/p/c/e;->g:J

    invoke-direct {v0, v1, v2, v3, p1}, Le/a/o/p/c/e;-><init>(Le/a/o/p/c/g;JLs1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/o/p/c/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/p/c/e;

    iget-object v1, p0, Le/a/o/p/c/e;->f:Le/a/o/p/c/g;

    iget-wide v2, p0, Le/a/o/p/c/e;->g:J

    invoke-direct {v0, v1, v2, v3, p1}, Le/a/o/p/c/e;-><init>(Le/a/o/p/c/g;JLs1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/p/c/e;->e:I

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
    iget-object p1, p0, Le/a/o/p/c/e;->f:Le/a/o/p/c/g;

    invoke-static {p1}, Le/a/o/p/c/g;->a(Le/a/o/p/c/g;)Le/a/o/p/c/a;

    move-result-object p1

    iget-wide v3, p0, Le/a/o/p/c/e;->g:J

    iput v2, p0, Le/a/o/p/c/e;->e:I

    invoke-interface {p1, v3, v4, p0}, Le/a/o/p/c/a;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
