.class public final Le/a/r/a0/z$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/z;->Lj()Lq3/a/p1;
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
    c = "com.truecaller.wizard.welcome.WelcomePresenter$onPermissionsGranted$1"
    f = "WelcomePresenter.kt"
    l = {
        0xb3,
        0xb5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/a0/z;


# direct methods
.method public constructor <init>(Le/a/r/a0/z;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/z$c;->f:Le/a/r/a0/z;

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

    new-instance p1, Le/a/r/a0/z$c;

    iget-object v0, p0, Le/a/r/a0/z$c;->f:Le/a/r/a0/z;

    invoke-direct {p1, v0, p2}, Le/a/r/a0/z$c;-><init>(Le/a/r/a0/z;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a0/z$c;

    iget-object v0, p0, Le/a/r/a0/z$c;->f:Le/a/r/a0/z;

    invoke-direct {p1, v0, p2}, Le/a/r/a0/z$c;-><init>(Le/a/r/a0/z;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a0/z$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/r/a0/z$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/r/a0/z$c;->f:Le/a/r/a0/z;

    .line 5
    iget-object p1, p1, Le/a/r/a0/z;->h:Le/a/r/h;

    .line 6
    invoke-interface {p1}, Le/a/r/h;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/a/r/a0/z$c;->f:Le/a/r/a0/z;

    iput v4, p0, Le/a/r/a0/z$c;->e:I

    invoke-virtual {p1, p0}, Le/a/r/a0/z;->Nj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/r/a0/z$c;->f:Le/a/r/a0/z;

    .line 8
    iget-object p1, p1, Le/a/r/a0/z;->s:Lo3/a;

    .line 9
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/u3/g;

    .line 10
    iget-object v2, p1, Le/a/u3/g;->J4:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x12d

    aget-object v4, v4, v5

    invoke-virtual {v2, p1, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/a/r/a0/z$c;->f:Le/a/r/a0/z;

    iput v3, p0, Le/a/r/a0/z$c;->e:I

    invoke-virtual {p1, p0}, Le/a/r/a0/z;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 12
    :cond_5
    iget-object p1, p0, Le/a/r/a0/z$c;->f:Le/a/r/a0/z;

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_6

    .line 14
    invoke-interface {p1}, Le/a/r/a0/x;->pq()V

    :cond_6
    :goto_1
    return-object v0
.end method
