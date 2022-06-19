.class public final Le/a/l/p2/j;
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
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/data/entity/Contact;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.FriendUpgradedPromoRepository$getContactsForPromo$2"
    f = "FriendUpgradedPromoRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/p2/k;


# direct methods
.method public constructor <init>(Le/a/l/p2/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/j;->e:Le/a/l/p2/k;

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

    new-instance p1, Le/a/l/p2/j;

    iget-object v0, p0, Le/a/l/p2/j;->e:Le/a/l/p2/k;

    invoke-direct {p1, v0, p2}, Le/a/l/p2/j;-><init>(Le/a/l/p2/k;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/l/p2/j;->e:Le/a/l/p2/k;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/l/p2/k;->c:Le/a/l/c2;

    .line 6
    invoke-interface {p2}, Le/a/l/c2;->W()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    .line 7
    iget-object v3, p1, Le/a/l/p2/k;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v3, 0x6

    .line 8
    invoke-static {p2, v2, v1, v1, v3}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_3

    .line 10
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    iget-object v2, p1, Le/a/l/p2/k;->b:Le/a/k3/j/g;

    .line 14
    invoke-interface {v2, v1}, Le/a/k3/j/g;->c(Ljava/lang/String;)Ls1/k;

    move-result-object v1

    .line 15
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 16
    check-cast v1, Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/l/p2/j;->e:Le/a/l/p2/k;

    .line 3
    iget-object p1, p1, Le/a/l/p2/k;->c:Le/a/l/c2;

    .line 4
    invoke-interface {p1}, Le/a/l/c2;->W()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    iget-object v3, p0, Le/a/l/p2/j;->e:Le/a/l/p2/k;

    .line 5
    iget-object v3, v3, Le/a/l/p2/k;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v3, 0x6

    .line 6
    invoke-static {p1, v2, v1, v1, v3}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1

    .line 8
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    iget-object v2, p0, Le/a/l/p2/j;->e:Le/a/l/p2/k;

    .line 12
    iget-object v2, v2, Le/a/l/p2/k;->b:Le/a/k3/j/g;

    .line 13
    invoke-interface {v2, v1}, Le/a/k3/j/g;->c(Ljava/lang/String;)Ls1/k;

    move-result-object v1

    .line 14
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 15
    check-cast v1, Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method
