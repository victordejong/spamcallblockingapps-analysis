.class public final Le/a/h/b/a0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$listenToCallLogSimFabVisibilityRequest$1"
    f = "DialerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Z

.field public final synthetic f:Le/a/h/b/y;


# direct methods
.method public constructor <init>(Le/a/h/b/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/a0;->f:Le/a/h/b/y;

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

    new-instance v0, Le/a/h/b/a0;

    iget-object v1, p0, Le/a/h/b/a0;->f:Le/a/h/b/y;

    invoke-direct {v0, v1, p2}, Le/a/h/b/a0;-><init>(Le/a/h/b/y;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Le/a/h/b/a0;->e:Z

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h/b/a0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h/b/a0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/a0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-boolean p1, p0, Le/a/h/b/a0;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/h/b/a0;->f:Le/a/h/b/y;

    .line 3
    invoke-virtual {p1}, Le/a/h/b/y;->bk()V

    return-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/h/b/a0;->f:Le/a/h/b/y;

    .line 5
    iget-object p1, p1, Le/a/h/b/y;->k0:Le/a/e4/p;

    .line 6
    invoke-static {p1}, Le/a/n/g0;->b0(Le/a/e4/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Le/a/h/b/a0;->f:Le/a/h/b/y;

    .line 8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/v;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 9
    invoke-interface {p1, v1}, Le/a/h/b/v;->Ex(Z)V

    :cond_1
    return-object v0
.end method
