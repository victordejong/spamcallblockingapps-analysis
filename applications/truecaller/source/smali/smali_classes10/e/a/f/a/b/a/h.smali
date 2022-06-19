.class public final Le/a/f/a/b/a/h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/util/List<",
        "+",
        "Le/a/f/y/f;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.ongoing.manageConference.ManageConferencePresenter$listenToConferenceCallChildren$1"
    f = "ManageConferencePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/f/a/b/a/i;


# direct methods
.method public constructor <init>(Le/a/f/a/b/a/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/a/h;->f:Le/a/f/a/b/a/i;

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

    new-instance v0, Le/a/f/a/b/a/h;

    iget-object v1, p0, Le/a/f/a/b/a/h;->f:Le/a/f/a/b/a/i;

    invoke-direct {v0, v1, p2}, Le/a/f/a/b/a/h;-><init>(Le/a/f/a/b/a/i;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/b/a/h;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/f/a/b/a/h;->f:Le/a/f/a/b/a/i;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/a/g;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Le/a/f/a/b/a/g;->close()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/a/g;

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2, p1}, Le/a/f/a/b/a/g;->un(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/b/a/h;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/f/a/b/a/h;->f:Le/a/f/a/b/a/i;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/a/g;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/f/a/b/a/g;->close()V

    :cond_0
    return-object v0

    .line 6
    :cond_1
    iget-object v1, p0, Le/a/f/a/b/a/h;->f:Le/a/f/a/b/a/i;

    .line 7
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/a/g;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1, p1}, Le/a/f/a/b/a/g;->un(Ljava/util/List;)V

    :cond_2
    return-object v0
.end method
