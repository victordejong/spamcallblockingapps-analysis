.class public final Le/a/g/a/b/j;
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
    c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$listenVideoPlayerEvents$1"
    f = "AfterCallScreenPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/g/a/b/l;


# direct methods
.method public constructor <init>(Le/a/g/a/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/j;->f:Le/a/g/a/b/l;

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

    new-instance v0, Le/a/g/a/b/j;

    iget-object v1, p0, Le/a/g/a/b/j;->f:Le/a/g/a/b/l;

    invoke-direct {v0, v1, p2}, Le/a/g/a/b/j;-><init>(Le/a/g/a/b/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g/a/b/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/g/a/b/j;

    iget-object v1, p0, Le/a/g/a/b/j;->f:Le/a/g/a/b/l;

    invoke-direct {v0, v1, p2}, Le/a/g/a/b/j;-><init>(Le/a/g/a/b/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g/a/b/j;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/g/a/b/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/g/a/b/j;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/z/b;

    .line 2
    instance-of v0, p1, Le/a/k/a/k/z/b$f;

    const-string v1, "it"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/k/a/k/z/b$a;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Le/a/k/a/k/z/b$e;

    if-eqz v0, :cond_4

    :goto_0
    iget-object v2, p0, Le/a/g/a/b/j;->f:Le/a/g/a/b/l;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;->FULL_SCREEN_VIDEO:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    iput-object p1, v2, Le/a/g/a/b/l;->F0:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    .line 7
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/b/h;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Le/a/g/a/b/h;->d4(Z)V

    .line 8
    :cond_2
    iput-boolean v0, v2, Le/a/g/a/b/l;->H0:Z

    .line 9
    invoke-virtual {v2}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Le/a/g/a/b/l;->Rk(Lcom/truecaller/data/entity/Contact;)V

    .line 12
    :cond_3
    new-instance v5, Le/a/g/a/b/m;

    const/4 p1, 0x0

    invoke-direct {v5, v2, p1}, Le/a/g/a/b/m;-><init>(Le/a/g/a/b/l;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_2

    .line 13
    :cond_4
    instance-of v0, p1, Le/a/k/a/k/z/b$b;

    if-eqz v0, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    instance-of p1, p1, Le/a/k/a/k/z/b$d;

    if-eqz p1, :cond_8

    :goto_1
    iget-object p1, p0, Le/a/g/a/b/j;->f:Le/a/g/a/b/l;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;->NONE:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    iput-object v0, p1, Le/a/g/a/b/l;->F0:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    .line 17
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/b/h;

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Le/a/g/a/b/h;->d4(Z)V

    .line 18
    :cond_6
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_7

    .line 20
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/g/a/b/l;->Vk(Lcom/truecaller/data/entity/Contact;)V

    .line 21
    :cond_7
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_8

    .line 23
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/g/a/b/l;->Rk(Lcom/truecaller/data/entity/Contact;)V

    .line 24
    :cond_8
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
