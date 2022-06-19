.class public final Le/a/p/a/q;
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
    c = "com.truecaller.editprofile.ui.EditProfilePresenter$onRemoveSecondaryNumber$1"
    f = "EditProfilePresenter.kt"
    l = {
        0x2c3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/p/a/m;


# direct methods
.method public constructor <init>(Le/a/p/a/m;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

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

    new-instance p1, Le/a/p/a/q;

    iget-object v0, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    invoke-direct {p1, v0, p2}, Le/a/p/a/q;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/p/a/q;

    iget-object v0, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    invoke-direct {p1, v0, p2}, Le/a/p/a/q;-><init>(Le/a/p/a/m;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/p/a/q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p/a/q;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 5
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->Bb()V

    .line 6
    :cond_2
    iput-boolean v2, p1, Le/a/p/a/m;->p:Z

    .line 7
    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 8
    iget-object p1, p1, Le/a/p/a/m;->C:Le/a/p/c;

    .line 9
    iput v2, p0, Le/a/p/a/q;->e:I

    invoke-interface {p1, p0}, Le/a/p/c;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 10
    :cond_3
    :goto_0
    check-cast p1, Le/a/b0/e/d;

    .line 11
    iget-object v0, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 12
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->pz()V

    :cond_4
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, Le/a/p/a/m;->p:Z

    .line 14
    sget-object v0, Le/a/b0/e/d$b;->a:Le/a/b0/e/d$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 15
    invoke-virtual {p1}, Le/a/p/a/m;->Zj()V

    goto/16 :goto_1

    .line 16
    :cond_5
    instance-of v0, p1, Le/a/b0/e/d$a$a;

    const-string v2, "resourceProvider.getString(R.string.ErrorGeneral)"

    if-eqz v0, :cond_6

    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 17
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_b

    .line 18
    iget-object p1, p1, Le/a/p/a/m;->w:Le/a/p5/c0;

    .line 19
    sget v3, Lcom/truecaller/editprofile/R$string;->ErrorGeneral:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_6
    sget-object v0, Le/a/b0/e/d$a$b;->a:Le/a/b0/e/d$a$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 21
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_b

    .line 22
    iget-object p1, p1, Le/a/p/a/m;->w:Le/a/p5/c0;

    .line 23
    sget v2, Lcom/truecaller/editprofile/R$string;->ErrorConnectionGeneral:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026g.ErrorConnectionGeneral)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_7
    sget-object v0, Le/a/b0/e/d$a$c;->a:Le/a/b0/e/d$a$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 26
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_8

    .line 27
    iget-object p1, p1, Le/a/p/a/m;->w:Le/a/p5/c0;

    .line 28
    sget v3, Lcom/truecaller/editprofile/R$string;->ErrorGeneral:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->m(Ljava/lang/String;)V

    .line 29
    :cond_8
    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 30
    invoke-virtual {p1}, Le/a/p/a/m;->Zj()V

    goto :goto_1

    .line 31
    :cond_9
    sget-object v0, Le/a/b0/e/d$a$d;->a:Le/a/b0/e/d$a$d;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 32
    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 33
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;

    if-eqz v0, :cond_a

    .line 34
    iget-object p1, p1, Le/a/p/a/m;->w:Le/a/p5/c0;

    .line 35
    sget v3, Lcom/truecaller/editprofile/R$string;->ErrorGeneral:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/truecaller/editprofile/ui/EditProfileMvp$View;->m(Ljava/lang/String;)V

    .line 36
    :cond_a
    iget-object p1, p0, Le/a/p/a/q;->f:Le/a/p/a/m;

    .line 37
    invoke-virtual {p1}, Le/a/p/a/m;->Zj()V

    .line 38
    :cond_b
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
