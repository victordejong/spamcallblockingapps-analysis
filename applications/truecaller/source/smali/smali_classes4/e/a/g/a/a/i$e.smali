.class public final Le/a/g/a/a/i$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/i;->xk(Lcom/truecaller/data/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.acs.ui.popup.AfterCallPopupPresenter$setLandscapeVideo$1"
    f = "AfterCallPopupPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/g/a/a/i;


# direct methods
.method public constructor <init>(Le/a/g/a/a/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/i$e;->f:Le/a/g/a/a/i;

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

    new-instance v0, Le/a/g/a/a/i$e;

    iget-object v1, p0, Le/a/g/a/a/i$e;->f:Le/a/g/a/a/i;

    invoke-direct {v0, v1, p2}, Le/a/g/a/a/i$e;-><init>(Le/a/g/a/a/i;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g/a/a/i$e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/g/a/a/i$e;->f:Le/a/g/a/a/i;

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

    check-cast p1, Le/a/g/a/a/h;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Le/a/g/a/h;->Bh()Le/a/k/a/k/z/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    instance-of p2, p1, Le/a/k/a/k/z/a$a;

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/g/a/a/h;

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    .line 9
    invoke-interface {p2, v2}, Le/a/g/a/h;->aA(Z)V

    .line 10
    :cond_1
    check-cast p1, Le/a/k/a/k/z/a$a;

    .line 11
    iget-boolean p1, p1, Le/a/k/a/k/z/a$a;->a:Z

    .line 12
    invoke-virtual {v1, p1}, Le/a/g/a/a/i;->Xk(Z)V

    :cond_2
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/g/a/a/i$e;->e:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/k/z/b;

    .line 2
    instance-of p1, p1, Le/a/k/a/k/z/b$e;

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Le/a/g/a/a/i$e;->f:Le/a/g/a/a/i;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/h;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/g/a/h;->Bh()Le/a/k/a/k/z/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    instance-of v0, p1, Le/a/k/a/k/z/a$a;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Le/a/g/a/a/i$e;->f:Le/a/g/a/a/i;

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/a/h;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Le/a/g/a/h;->aA(Z)V

    .line 10
    :cond_1
    iget-object v0, p0, Le/a/g/a/a/i$e;->f:Le/a/g/a/a/i;

    check-cast p1, Le/a/k/a/k/z/a$a;

    .line 11
    iget-boolean p1, p1, Le/a/k/a/k/z/a$a;->a:Z

    .line 12
    invoke-virtual {v0, p1}, Le/a/g/a/a/i;->Xk(Z)V

    .line 13
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
