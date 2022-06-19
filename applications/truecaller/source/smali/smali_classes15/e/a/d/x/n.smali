.class public final Le/a/d/x/n;
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
    c = "com.truecaller.voip.manager.VoipPresenceManagerImpl$maybeRegisterAndReport$1"
    f = "VoipPresenceManager.kt"
    l = {
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Z

.field public f:I

.field public final synthetic g:Le/a/d/x/o;


# direct methods
.method public constructor <init>(Le/a/d/x/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/d/x/n;

    iget-object v0, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    invoke-direct {p1, v0, p2}, Le/a/d/x/n;-><init>(Le/a/d/x/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/x/n;

    iget-object v0, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    invoke-direct {p1, v0, p2}, Le/a/d/x/n;-><init>(Le/a/d/x/o;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/x/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/x/n;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-boolean v1, p0, Le/a/d/x/n;->e:Z

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
    iget-object p1, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    .line 5
    iget-object p1, p1, Le/a/d/x/o;->c:Le/a/d/g;

    .line 6
    check-cast p1, Le/a/d/e;

    invoke-virtual {p1}, Le/a/d/e;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object v2, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    .line 8
    iget-object v2, v2, Le/a/d/x/o;->f:Le/a/d/c0/y0;

    .line 9
    iput-boolean p1, p0, Le/a/d/x/n;->e:Z

    iput v3, p0, Le/a/d/x/n;->f:I

    invoke-interface {v2, p0}, Le/a/d/c0/y0;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    move v1, p1

    move-object p1, v2

    :goto_0
    if-nez p1, :cond_3

    return-object v0

    :cond_3
    move p1, v1

    .line 10
    :cond_4
    iget-object v1, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    .line 11
    iget-object v1, v1, Le/a/d/x/o;->d:Lo3/a;

    .line 12
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/g1;

    const-string v2, "reportedVoipState"

    invoke-interface {v1, v2}, Le/a/d/c0/g1;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 13
    iget-object v3, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    .line 14
    iget-object v3, v3, Le/a/d/x/o;->d:Lo3/a;

    .line 15
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d/c0/g1;

    const/4 v4, 0x0

    const-string v5, "reportedVoipVersion"

    invoke-interface {v3, v5, v4}, Le/a/d/c0/g1;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 16
    iget-object v4, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    .line 17
    iget-object v4, v4, Le/a/d/x/o;->c:Le/a/d/g;

    .line 18
    check-cast v4, Le/a/d/e;

    .line 19
    invoke-virtual {v4}, Le/a/d/e;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    :goto_1
    if-ne v1, p1, :cond_6

    if-eq v3, v4, :cond_7

    .line 20
    :cond_6
    iget-object v1, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    .line 21
    iget-object v1, v1, Le/a/d/x/o;->e:Le/a/d/c0/j1;

    .line 22
    invoke-interface {v1}, Le/a/d/c0/j1;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    iget-object v1, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    .line 24
    iget-object v1, v1, Le/a/d/x/o;->d:Lo3/a;

    .line 25
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/g1;

    invoke-interface {v1, v2, p1}, Le/a/d/c0/g1;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    iget-object p1, p0, Le/a/d/x/n;->g:Le/a/d/x/o;

    .line 27
    iget-object p1, p1, Le/a/d/x/o;->d:Lo3/a;

    .line 28
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/g1;

    invoke-interface {p1, v5, v4}, Le/a/d/c0/g1;->putInt(Ljava/lang/String;I)V

    :cond_7
    return-object v0
.end method
