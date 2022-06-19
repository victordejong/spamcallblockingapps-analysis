.class public final Le/a/k/a/b/g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/k/a/k/z/b;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.ui.fullscreenpopupvideo.FullScreenPopupVideoPresenter$setUpAudio$1"
    f = "FullScreenPopupVideoPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/k/a/b/h;


# direct methods
.method public constructor <init>(Le/a/k/a/b/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/b/g;->f:Le/a/k/a/b/h;

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

    new-instance v0, Le/a/k/a/b/g;

    iget-object v1, p0, Le/a/k/a/b/g;->f:Le/a/k/a/b/h;

    invoke-direct {v0, v1, p2}, Le/a/k/a/b/g;-><init>(Le/a/k/a/b/h;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/a/b/g;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/k/a/b/g;->f:Le/a/k/a/b/h;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/k/a/k/z/b;

    .line 4
    instance-of p1, p1, Le/a/k/a/k/z/b$e;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Le/a/k/a/b/f;->Y()Le/a/k/a/k/z/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    instance-of p2, p1, Le/a/k/a/k/z/a$a;

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/k/a/b/f;

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .line 9
    invoke-interface {p2, v2}, Le/a/k/a/b/f;->yA(Z)V

    .line 10
    iget-object p2, v1, Le/a/k/a/b/h;->d:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    .line 11
    check-cast p1, Le/a/k/a/k/z/a$a;

    .line 12
    iget-boolean p1, p1, Le/a/k/a/k/z/a$a;->a:Z

    .line 13
    invoke-virtual {v1, p1}, Le/a/k/a/b/h;->Ij(Z)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 15
    invoke-interface {p1, p2}, Le/a/k/a/b/f;->yA(Z)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/k/a/b/g;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/z/b;

    .line 2
    instance-of p1, p1, Le/a/k/a/k/z/b$e;

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Le/a/k/a/b/g;->f:Le/a/k/a/b/h;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/k/a/b/f;->Y()Le/a/k/a/k/z/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    instance-of v0, p1, Le/a/k/a/k/z/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/k/a/b/g;->f:Le/a/k/a/b/h;

    .line 7
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/b/f;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1}, Le/a/k/a/b/f;->yA(Z)V

    .line 9
    iget-object v0, p0, Le/a/k/a/b/g;->f:Le/a/k/a/b/h;

    .line 10
    iget-object v1, v0, Le/a/k/a/b/h;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 11
    check-cast p1, Le/a/k/a/k/z/a$a;

    .line 12
    iget-boolean p1, p1, Le/a/k/a/k/z/a$a;->a:Z

    .line 13
    invoke-virtual {v0, p1}, Le/a/k/a/b/h;->Ij(Z)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Le/a/k/a/b/g;->f:Le/a/k/a/b/h;

    .line 15
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/b/f;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Le/a/k/a/b/f;->yA(Z)V

    .line 17
    :cond_2
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
