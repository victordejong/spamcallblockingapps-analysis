.class public final Le/a/v/a/y/d;
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
    c = "com.truecaller.details_view.ui.ads.DetailsAdPresenter$loadAds$1"
    f = "DetailsAdPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/a/y/c;


# direct methods
.method public constructor <init>(Le/a/v/a/y/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/y/d;->e:Le/a/v/a/y/c;

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

    new-instance p1, Le/a/v/a/y/d;

    iget-object v0, p0, Le/a/v/a/y/d;->e:Le/a/v/a/y/c;

    invoke-direct {p1, v0, p2}, Le/a/v/a/y/d;-><init>(Le/a/v/a/y/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/v/a/y/d;->e:Le/a/v/a/y/c;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    .line 5
    iget-object v1, v0, Le/a/v/a/y/c;->h:Le/a/v/a/y/c$a;

    .line 6
    move-object v2, p2

    check-cast v2, Le/a/v/a/y/i;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adsListener"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object v1, v2, Le/a/v/a/y/i;->a:Le/a/i/n;

    .line 9
    iget-object v3, v2, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-virtual {v2}, Le/a/v/a/y/i;->c()Le/a/i/s;

    move-result-object v4

    invoke-interface {v3, v4}, Le/a/v/a/y/j;->c(Le/a/i/s;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Le/a/v/a/y/i;->f:Z

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {v1}, Le/a/i/n;->onAdLoaded()V

    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Le/a/v/a/y/c;->g:Z

    .line 12
    check-cast p2, Le/a/v/a/y/i;

    .line 13
    iget-object v2, p2, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-virtual {p2}, Le/a/v/a/y/i;->c()Le/a/i/s;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Le/a/v/a/y/j;->g(Le/a/i/s;Le/a/i/m;)V

    .line 14
    invoke-virtual {v0, v1}, Le/a/v/a/y/c;->Ij(Z)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/v/a/y/d;->e:Le/a/v/a/y/c;

    .line 3
    iget-object v0, p1, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    .line 4
    iget-object p1, p1, Le/a/v/a/y/c;->h:Le/a/v/a/y/c$a;

    .line 5
    move-object v1, v0

    check-cast v1, Le/a/v/a/y/i;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "adsListener"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, v1, Le/a/v/a/y/i;->a:Le/a/i/n;

    .line 8
    iget-object v2, v1, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-virtual {v1}, Le/a/v/a/y/i;->c()Le/a/i/s;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/v/a/y/j;->c(Le/a/i/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Le/a/v/a/y/i;->f:Z

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p1}, Le/a/i/n;->onAdLoaded()V

    .line 10
    :cond_0
    iget-object p1, p0, Le/a/v/a/y/d;->e:Le/a/v/a/y/c;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p1, Le/a/v/a/y/c;->g:Z

    .line 12
    check-cast v0, Le/a/v/a/y/i;

    .line 13
    iget-object p1, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-virtual {v0}, Le/a/v/a/y/i;->c()Le/a/i/s;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Le/a/v/a/y/j;->g(Le/a/i/s;Le/a/i/m;)V

    .line 14
    iget-object p1, p0, Le/a/v/a/y/d;->e:Le/a/v/a/y/c;

    .line 15
    invoke-virtual {p1, v1}, Le/a/v/a/y/c;->Ij(Z)V

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
