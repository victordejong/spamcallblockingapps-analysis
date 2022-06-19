.class public final Le/a/v/a/q$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/q;->Lj(Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/data/entity/Contact;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.details_view.ui.DetailsPresenter$reloadAndRefreshView$contact$1"
    f = "DetailsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/v/a/q;


# direct methods
.method public constructor <init>(Le/a/v/a/q;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/q$c;->e:Le/a/v/a/q;

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

    new-instance p1, Le/a/v/a/q$c;

    iget-object v0, p0, Le/a/v/a/q$c;->e:Le/a/v/a/q;

    invoke-direct {p1, v0, p2}, Le/a/v/a/q$c;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/v/a/q$c;

    iget-object v0, p0, Le/a/v/a/q$c;->e:Le/a/v/a/q;

    invoke-direct {p1, v0, p2}, Le/a/v/a/q$c;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/v/a/q$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/v/a/q$c;->e:Le/a/v/a/q;

    .line 3
    iget-object v0, p1, Le/a/v/a/q;->q:Le/a/k3/j/b;

    .line 4
    iget-object p1, p1, Le/a/v/a/q;->d:Le/a/v/a/s;

    const-string v1, "detailsViewModel"

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 5
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/k3/j/b;->j(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/v/a/q$c;->e:Le/a/v/a/q;

    .line 8
    iget-object v0, p1, Le/a/v/a/q;->q:Le/a/k3/j/b;

    .line 9
    iget-object v3, p1, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v3, :cond_6

    .line 10
    iget-object v1, v3, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-static {p1, v1}, Le/a/v/a/q;->Jj(Le/a/v/a/q;Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v4

    :goto_1
    xor-int/2addr v3, v4

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_4
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    iget-object p1, p0, Le/a/v/a/q$c;->e:Le/a/v/a/q;

    invoke-static {p1}, Le/a/v/a/q;->Ij(Le/a/v/a/q;)Le/a/v/a/s;

    move-result-object p1

    .line 15
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    :goto_3
    return-object p1

    .line 16
    :cond_6
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_7
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
