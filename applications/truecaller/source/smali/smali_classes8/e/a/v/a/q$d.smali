.class public final Le/a/v/a/q$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/q;->Mj(Z)Lq3/a/p1;
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
    c = "com.truecaller.details_view.ui.DetailsPresenter$toggleFavorite$1"
    f = "DetailsPresenter.kt"
    l = {
        0xee
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/v/a/q;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/v/a/q;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/q$d;->f:Le/a/v/a/q;

    iput-boolean p2, p0, Le/a/v/a/q$d;->g:Z

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

    new-instance p1, Le/a/v/a/q$d;

    iget-object v0, p0, Le/a/v/a/q$d;->f:Le/a/v/a/q;

    iget-boolean v1, p0, Le/a/v/a/q$d;->g:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/q$d;-><init>(Le/a/v/a/q;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/q$d;

    iget-object v0, p0, Le/a/v/a/q$d;->f:Le/a/v/a/q;

    iget-boolean v1, p0, Le/a/v/a/q$d;->g:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/v/a/q$d;-><init>(Le/a/v/a/q;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/q$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/v/a/q$d;->e:I

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
    iget-object p1, p0, Le/a/v/a/q$d;->f:Le/a/v/a/q;

    .line 5
    iget-object v1, p1, Le/a/v/a/q;->D:Le/a/v/p/d;

    .line 6
    invoke-static {p1}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object p1

    .line 7
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 8
    iget-boolean v3, p0, Le/a/v/a/q$d;->g:Z

    iput v2, p0, Le/a/v/a/q$d;->e:I

    invoke-interface {v1, p1, v3, p0}, Le/a/v/p/d;->a(Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/v/a/q$d;->f:Le/a/v/a/q;

    .line 10
    iget-object v0, p1, Le/a/v/a/q;->E:Le/a/p5/c0;

    .line 11
    iget-boolean v1, p0, Le/a/v/a/q$d;->g:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/truecaller/details_view/R$string;->details_view_contact_favorited:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_contact_unfavorited:I

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 12
    invoke-static {p1}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object p1

    .line 13
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 15
    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026layNameOrNumber\n        )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Le/a/v/a/q$d;->f:Le/a/v/a/q;

    .line 17
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    if-eqz v0, :cond_4

    .line 18
    invoke-interface {v0, p1}, Le/a/v/a/g;->l(Ljava/lang/String;)V

    .line 19
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
