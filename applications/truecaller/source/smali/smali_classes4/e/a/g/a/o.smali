.class public final Le/a/g/a/o;
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
    c = "com.truecaller.acs.ui.AfterCallBasePresenter$loadAds$1"
    f = "AfterCallBasePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/g/a/m;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/o;->e:Le/a/g/a/m;

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

    new-instance p1, Le/a/g/a/o;

    iget-object v0, p0, Le/a/g/a/o;->e:Le/a/g/a/m;

    invoke-direct {p1, v0, p2}, Le/a/g/a/o;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/g/a/o;->e:Le/a/g/a/m;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/g/a/m;->N:Le/a/g/e/a;

    .line 5
    iget-object v0, v0, Le/a/g/a/m;->w:Le/a/g/a/i;

    .line 6
    move-object v1, p2

    check-cast v1, Le/a/g/e/d;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 8
    iput-object v0, v1, Le/a/g/e/d;->a:Le/a/i/n;

    .line 9
    iget-object v2, v1, Le/a/g/e/d;->h:Le/a/g/e/e;

    invoke-virtual {v1}, Le/a/g/e/d;->c()Le/a/i/s;

    move-result-object v3

    check-cast v2, Le/a/g/b;

    invoke-virtual {v2, v3}, Le/a/g/b;->e(Le/a/i/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Le/a/g/e/d;->c:Z

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {v0}, Le/a/i/n;->onAdLoaded()V

    .line 11
    :cond_0
    check-cast p2, Le/a/g/e/d;

    .line 12
    iget-object v0, p2, Le/a/g/e/d;->h:Le/a/g/e/e;

    invoke-virtual {p2}, Le/a/g/e/d;->c()Le/a/i/s;

    move-result-object v1

    check-cast v0, Le/a/g/b;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "unitConfig"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adsListener"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v2, v0, Le/a/g/b;->d:Le/a/i/f0/d;

    invoke-interface {v2}, Le/a/i/f0/d;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    iget-object v2, v0, Le/a/g/b;->d:Le/a/i/f0/d;

    .line 16
    iget-object v0, v0, Le/a/g/b;->a:Ljava/lang/String;

    .line 17
    invoke-interface {v2, v1, p2, v0}, Le/a/i/f0/d;->l(Le/a/i/s;Le/a/i/m;Ljava/lang/String;)V

    :cond_1
    return-object p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/g/a/o;->e:Le/a/g/a/m;

    .line 3
    iget-object v0, p1, Le/a/g/a/m;->N:Le/a/g/e/a;

    .line 4
    iget-object p1, p1, Le/a/g/a/m;->w:Le/a/g/a/i;

    .line 5
    move-object v1, v0

    check-cast v1, Le/a/g/e/d;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 7
    iput-object p1, v1, Le/a/g/e/d;->a:Le/a/i/n;

    .line 8
    iget-object v2, v1, Le/a/g/e/d;->h:Le/a/g/e/e;

    invoke-virtual {v1}, Le/a/g/e/d;->c()Le/a/i/s;

    move-result-object v3

    check-cast v2, Le/a/g/b;

    invoke-virtual {v2, v3}, Le/a/g/b;->e(Le/a/i/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Le/a/g/e/d;->c:Z

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p1}, Le/a/i/n;->onAdLoaded()V

    .line 10
    :cond_0
    check-cast v0, Le/a/g/e/d;

    .line 11
    iget-object p1, v0, Le/a/g/e/d;->h:Le/a/g/e/e;

    invoke-virtual {v0}, Le/a/g/e/d;->c()Le/a/i/s;

    move-result-object v1

    check-cast p1, Le/a/g/b;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "unitConfig"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adsListener"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, p1, Le/a/g/b;->d:Le/a/i/f0/d;

    invoke-interface {v2}, Le/a/i/f0/d;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    iget-object v2, p1, Le/a/g/b;->d:Le/a/i/f0/d;

    .line 15
    iget-object p1, p1, Le/a/g/b;->a:Ljava/lang/String;

    .line 16
    invoke-interface {v2, v1, v0, p1}, Le/a/i/f0/d;->l(Le/a/i/s;Le/a/i/m;Ljava/lang/String;)V

    .line 17
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
