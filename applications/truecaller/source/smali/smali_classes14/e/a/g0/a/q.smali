.class public final Le/a/g0/a/q;
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
    c = "com.truecaller.suspension.ui.SuspensionPresenter$handleStatus$2"
    f = "SuspensionPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/g0/a/r;

.field public final synthetic f:Le/a/g0/c;

.field public final synthetic g:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/g0/a/r;Le/a/g0/c;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/a/q;->e:Le/a/g0/a/r;

    iput-object p2, p0, Le/a/g0/a/q;->f:Le/a/g0/c;

    iput-object p3, p0, Le/a/g0/a/q;->g:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/g0/a/q;

    iget-object v0, p0, Le/a/g0/a/q;->e:Le/a/g0/a/r;

    iget-object v1, p0, Le/a/g0/a/q;->f:Le/a/g0/c;

    iget-object v2, p0, Le/a/g0/a/q;->g:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g0/a/q;-><init>(Le/a/g0/a/r;Le/a/g0/c;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/g0/a/q;->e:Le/a/g0/a/r;

    iget-object v1, p0, Le/a/g0/a/q;->f:Le/a/g0/c;

    iget-object v2, p0, Le/a/g0/a/q;->g:Ls1/z/b/l;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p2, Le/a/g0/c$a;->a:Le/a/g0/c$a;

    invoke-static {v1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/g0/a/n;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Le/a/g0/a/n;->a0()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    instance-of p1, v1, Le/a/g0/c$b;

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/n;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Le/a/g0/a/n;->b0()V

    .line 10
    :cond_2
    check-cast v1, Le/a/g0/c$b;

    .line 11
    iget-boolean p1, v1, Le/a/g0/c$b;->a:Z

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 13
    invoke-interface {v2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :goto_0
    return-object p1

    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/g0/a/q;->f:Le/a/g0/c;

    .line 3
    sget-object v0, Le/a/g0/c$a;->a:Le/a/g0/c$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Le/a/g0/a/q;->e:Le/a/g0/a/r;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/n;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/g0/a/n;->a0()V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_1
    instance-of p1, p1, Le/a/g0/c$b;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Le/a/g0/a/q;->e:Le/a/g0/a/r;

    .line 8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g0/a/n;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Le/a/g0/a/n;->b0()V

    .line 10
    :cond_2
    iget-object p1, p0, Le/a/g0/a/q;->g:Ls1/z/b/l;

    iget-object v0, p0, Le/a/g0/a/q;->f:Le/a/g0/c;

    check-cast v0, Le/a/g0/c$b;

    .line 11
    iget-boolean v0, v0, Le/a/g0/c$b;->a:Z

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :goto_0
    return-object p1

    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
