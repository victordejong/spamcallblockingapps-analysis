.class public final Le/a/g/a/b/n;
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
    c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$setCallerLabel$1"
    f = "AfterCallScreenPresenter.kt"
    l = {
        0x22a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/b/l;

.field public final synthetic g:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/n;->f:Le/a/g/a/b/l;

    iput-object p2, p0, Le/a/g/a/b/n;->g:Lcom/truecaller/data/entity/Contact;

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

    new-instance p1, Le/a/g/a/b/n;

    iget-object v0, p0, Le/a/g/a/b/n;->f:Le/a/g/a/b/l;

    iget-object v1, p0, Le/a/g/a/b/n;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/a/b/n;-><init>(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/b/n;

    iget-object v0, p0, Le/a/g/a/b/n;->f:Le/a/g/a/b/l;

    iget-object v1, p0, Le/a/g/a/b/n;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/a/b/n;-><init>(Le/a/g/a/b/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/b/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/b/n;->e:I

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
    iget-object p1, p0, Le/a/g/a/b/n;->f:Le/a/g/a/b/l;

    .line 5
    iget-object p1, p1, Le/a/g/a/m;->n0:Le/a/a0/n;

    .line 6
    iget-object v1, p0, Le/a/g/a/b/n;->g:Lcom/truecaller/data/entity/Contact;

    iput v2, p0, Le/a/g/a/b/n;->e:I

    invoke-static {p1, v1, p0}, Le/a/l4/k;->Y(Le/a/a0/n;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 8
    iget-object v0, p0, Le/a/g/a/b/n;->f:Le/a/g/a/b/l;

    iget-object v1, p0, Le/a/g/a/b/n;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v1

    .line 9
    invoke-virtual {v0, v1, p1}, Le/a/g/a/m;->Ek(ILcom/truecaller/data/entity/SpamCategoryModel;)V

    .line 10
    iget-object p1, p0, Le/a/g/a/b/n;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Le/a/g/a/b/n;->f:Le/a/g/a/b/l;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/b/h;

    if-eqz p1, :cond_3

    .line 13
    sget v0, Lcom/truecaller/acs/R$string;->acs_caller_label_verified_business:I

    invoke-interface {p1, v0}, Le/a/g/a/b/h;->ya(I)V

    .line 14
    invoke-interface {p1}, Le/a/g/a/h;->By()V

    .line 15
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
