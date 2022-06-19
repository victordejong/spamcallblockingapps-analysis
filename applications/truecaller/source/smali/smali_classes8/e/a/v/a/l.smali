.class public final Le/a/v/a/l;
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
    c = "com.truecaller.details_view.ui.DetailsPresenter$onDeleteIdentifiedContactConfirmed$1"
    f = "DetailsPresenter.kt"
    l = {
        0xe4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v/a/q;


# direct methods
.method public constructor <init>(Le/a/v/a/q;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/l;->f:Le/a/v/a/q;

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

    new-instance p1, Le/a/v/a/l;

    iget-object v0, p0, Le/a/v/a/l;->f:Le/a/v/a/q;

    invoke-direct {p1, v0, p2}, Le/a/v/a/l;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/l;

    iget-object v0, p0, Le/a/v/a/l;->f:Le/a/v/a/q;

    invoke-direct {p1, v0, p2}, Le/a/v/a/l;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v/a/l;->e:I

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
    iget-object p1, p0, Le/a/v/a/l;->f:Le/a/v/a/q;

    .line 5
    iget-object v1, p1, Le/a/v/a/q;->D:Le/a/v/p/d;

    .line 6
    invoke-static {p1}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object p1

    .line 7
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 8
    iput v2, p0, Le/a/v/a/l;->e:I

    invoke-interface {v1, p1, p0}, Le/a/v/p/d;->b(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    sget v0, Lcom/truecaller/details_view/R$string;->details_view_contact_deleted_successfully:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/truecaller/details_view/R$string;->details_view_contact_deleted_failed:I

    .line 10
    :goto_1
    iget-object v1, p0, Le/a/v/a/l;->f:Le/a/v/a/q;

    .line 11
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/g;

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v1, v0}, Le/a/v/a/g;->h(I)V

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Le/a/v/a/l;->f:Le/a/v/a/q;

    .line 14
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/g;

    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p1}, Le/a/v/a/g;->finish()V

    .line 16
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
