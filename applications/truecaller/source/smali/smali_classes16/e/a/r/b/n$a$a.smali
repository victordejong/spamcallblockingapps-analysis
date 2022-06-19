.class public final Le/a/r/b/n$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/b/n$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.wizard.adschoices.BaseAdsChoicesPresenter$setChoice$1$1"
    f = "BaseAdsChoicesPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r/b/n$a;

.field public final synthetic f:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Le/a/r/b/n$a;Ls1/z/c/y;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iput-object p2, p0, Le/a/r/b/n$a$a;->f:Ls1/z/c/y;

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

    new-instance p1, Le/a/r/b/n$a$a;

    iget-object v0, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iget-object v1, p0, Le/a/r/b/n$a$a;->f:Ls1/z/c/y;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/b/n$a$a;-><init>(Le/a/r/b/n$a;Ls1/z/c/y;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iget-object v1, p0, Le/a/r/b/n$a$a;->f:Ls1/z/c/y;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p2, v1, Ls1/z/c/y;->a:Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, v0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    iget-object v1, v0, Le/a/r/b/n$a;->h:Lcom/truecaller/wizard/adschoices/AdsChoice;

    iget-boolean v2, v0, Le/a/r/b/n$a;->g:Z

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v2, v3}, Le/a/r/b/n;->Pj(Lcom/truecaller/wizard/adschoices/AdsChoice;ZZ)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, v0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    invoke-virtual {p2}, Le/a/r/b/n;->Nj()V

    .line 7
    iget-object p2, v0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 8
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/r/b/i;

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {p2}, Le/a/r/b/i;->F5()V

    .line 10
    :cond_1
    :goto_0
    iget-object p2, v0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 11
    invoke-virtual {p2}, Le/a/r/b/n;->Kj()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, v0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 13
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/r/b/i;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    .line 14
    invoke-interface {p2, v1}, Le/a/r/b/i;->f(Z)V

    .line 15
    :cond_2
    iget-object p2, v0, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 16
    invoke-virtual {p2}, Le/a/r/b/n;->Rj()V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/r/b/n$a$a;->f:Ls1/z/c/y;

    iget-boolean p1, p1, Ls1/z/c/y;->a:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iget-object v0, p1, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    iget-object v1, p1, Le/a/r/b/n$a;->h:Lcom/truecaller/wizard/adschoices/AdsChoice;

    iget-boolean p1, p1, Le/a/r/b/n$a;->g:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Le/a/r/b/n;->Pj(Lcom/truecaller/wizard/adschoices/AdsChoice;ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iget-object p1, p1, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    invoke-virtual {p1}, Le/a/r/b/n;->Nj()V

    .line 5
    iget-object p1, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iget-object p1, p1, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/i;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Le/a/r/b/i;->F5()V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iget-object p1, p1, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 9
    invoke-virtual {p1}, Le/a/r/b/n;->Kj()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iget-object p1, p1, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/i;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, v0}, Le/a/r/b/i;->f(Z)V

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/r/b/n$a$a;->e:Le/a/r/b/n$a;

    iget-object p1, p1, Le/a/r/b/n$a;->f:Le/a/r/b/n;

    .line 14
    invoke-virtual {p1}, Le/a/r/b/n;->Rj()V

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
