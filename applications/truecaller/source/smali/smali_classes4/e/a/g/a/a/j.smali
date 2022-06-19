.class public final Le/a/g/a/a/j;
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
    c = "com.truecaller.acs.ui.popup.AfterCallPopupPresenter$setSpamDataInternal$1"
    f = "AfterCallPopupPresenter.kt"
    l = {
        0x1e8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/a/i;

.field public final synthetic g:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Le/a/g/a/a/i;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/j;->f:Le/a/g/a/a/i;

    iput-object p2, p0, Le/a/g/a/a/j;->g:Lcom/truecaller/data/entity/Contact;

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

    new-instance p1, Le/a/g/a/a/j;

    iget-object v0, p0, Le/a/g/a/a/j;->f:Le/a/g/a/a/i;

    iget-object v1, p0, Le/a/g/a/a/j;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/a/a/j;-><init>(Le/a/g/a/a/i;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/a/j;

    iget-object v0, p0, Le/a/g/a/a/j;->f:Le/a/g/a/a/i;

    iget-object v1, p0, Le/a/g/a/a/j;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/g/a/a/j;-><init>(Le/a/g/a/a/i;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/a/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/a/j;->e:I

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
    iget-object p1, p0, Le/a/g/a/a/j;->f:Le/a/g/a/a/i;

    .line 5
    iget-object p1, p1, Le/a/g/a/m;->n0:Le/a/a0/n;

    .line 6
    iget-object v1, p0, Le/a/g/a/a/j;->g:Lcom/truecaller/data/entity/Contact;

    iput v2, p0, Le/a/g/a/a/j;->e:I

    invoke-static {p1, v1, p0}, Le/a/l4/k;->Y(Le/a/a0/n;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 8
    iget-object v0, p0, Le/a/g/a/a/j;->f:Le/a/g/a/a/i;

    iget-object v1, p0, Le/a/g/a/a/j;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v1

    .line 9
    invoke-virtual {v0, v1, p1}, Le/a/g/a/m;->Ek(ILcom/truecaller/data/entity/SpamCategoryModel;)V

    .line 10
    iget-object p1, p0, Le/a/g/a/a/j;->g:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Le/a/g/a/a/j;->f:Le/a/g/a/a/i;

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/h;

    if-eqz p1, :cond_3

    .line 13
    sget v0, Lcom/truecaller/acs/R$color;->white:I

    sget v1, Lcom/truecaller/acs/R$drawable;->background_spam_popup_acs:I

    invoke-interface {p1, v0, v1}, Le/a/g/a/a/h;->c5(II)V

    .line 14
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
