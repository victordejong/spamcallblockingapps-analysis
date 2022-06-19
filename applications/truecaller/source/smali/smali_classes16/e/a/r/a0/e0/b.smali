.class public final Le/a/r/a0/e0/b;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.welcome.autologin.AutoLoginHelperImpl$maybeRestoreAccount$2"
    f = "AutoLoginHelper.kt"
    l = {
        0x2b,
        0x2d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/a0/e0/c;

.field public final synthetic g:Le/a/r/a0/e0/g;


# direct methods
.method public constructor <init>(Le/a/r/a0/e0/c;Le/a/r/a0/e0/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/e0/b;->f:Le/a/r/a0/e0/c;

    iput-object p2, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

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

    new-instance p1, Le/a/r/a0/e0/b;

    iget-object v0, p0, Le/a/r/a0/e0/b;->f:Le/a/r/a0/e0/c;

    iget-object v1, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a0/e0/b;-><init>(Le/a/r/a0/e0/c;Le/a/r/a0/e0/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a0/e0/b;

    iget-object v0, p0, Le/a/r/a0/e0/b;->f:Le/a/r/a0/e0/c;

    iget-object v1, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a0/e0/b;-><init>(Le/a/r/a0/e0/c;Le/a/r/a0/e0/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a0/e0/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/a0/e0/b;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

    invoke-interface {p1}, Le/a/r/a0/e0/g;->f9()V

    .line 5
    iget-object p1, p0, Le/a/r/a0/e0/b;->f:Le/a/r/a0/e0/c;

    .line 6
    iget-object p1, p1, Le/a/r/a0/e0/c;->b:Le/a/r/a0/e0/d;

    .line 7
    iput v3, p0, Le/a/r/a0/e0/b;->e:I

    check-cast p1, Le/a/r/a0/e0/e;

    .line 8
    iget-object v1, p1, Le/a/r/a0/e0/e;->a:Ls1/w/f;

    new-instance v4, Le/a/r/a0/e0/f;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Le/a/r/a0/e0/f;-><init>(Le/a/r/a0/e0/e;Ls1/w/d;)V

    invoke-static {v1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    .line 10
    iget-object p1, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

    invoke-interface {p1}, Le/a/r/a0/e0/g;->J9()V

    const/4 v3, 0x0

    goto :goto_2

    .line 11
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 12
    :cond_5
    iget-object p1, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

    invoke-interface {p1}, Le/a/r/a0/e0/g;->J9()V

    .line 13
    iget-object p1, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

    invoke-interface {p1}, Le/a/r/a0/e0/g;->Ev()V

    goto :goto_2

    .line 14
    :cond_6
    iget-object p1, p0, Le/a/r/a0/e0/b;->f:Le/a/r/a0/e0/c;

    .line 15
    iget-object p1, p1, Le/a/r/a0/e0/c;->c:Le/a/r/c/o;

    .line 16
    iput v2, p0, Le/a/r/a0/e0/b;->e:I

    invoke-interface {p1, p0}, Le/a/r/c/o;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 17
    :cond_7
    :goto_1
    iget-object p1, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

    invoke-interface {p1}, Le/a/r/a0/e0/g;->J9()V

    .line 18
    iget-object p1, p0, Le/a/r/a0/e0/b;->f:Le/a/r/a0/e0/c;

    iget-object v0, p0, Le/a/r/a0/e0/b;->g:Le/a/r/a0/e0/g;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v0}, Le/a/r/a0/e0/g;->e3()V

    .line 21
    iget-object v1, p1, Le/a/r/a0/e0/c;->d:Le/a/r/g$a;

    invoke-virtual {v1}, Le/a/r/g$a;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    invoke-interface {v0}, Le/a/r/a0/e0/g;->h3()V

    goto :goto_2

    .line 23
    :cond_8
    iget-object p1, p1, Le/a/r/a0/e0/c;->e:Le/a/r/c/l;

    .line 24
    iget-object p1, p1, Le/a/r/c/l;->d:Le/a/p5/a0;

    invoke-interface {p1}, Le/a/p5/a0;->k()Z

    move-result p1

    if-nez p1, :cond_9

    .line 25
    invoke-interface {v0}, Le/a/r/a0/e0/g;->Ye()V

    goto :goto_2

    .line 26
    :cond_9
    invoke-interface {v0}, Le/a/r/a0/e0/g;->l4()V

    .line 27
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
