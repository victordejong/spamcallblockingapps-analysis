.class public final Le/a/a0/h;
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
    c = "com.truecaller.spamcategories.SpamCategoriesPresenter$onAttachView$1"
    f = "SpamCategoriesPresenter.kt"
    l = {
        0x4c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a0/b;


# direct methods
.method public constructor <init>(Le/a/a0/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a0/h;->f:Le/a/a0/b;

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

    new-instance p1, Le/a/a0/h;

    iget-object v0, p0, Le/a/a0/h;->f:Le/a/a0/b;

    invoke-direct {p1, v0, p2}, Le/a/a0/h;-><init>(Le/a/a0/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a0/h;

    iget-object v0, p0, Le/a/a0/h;->f:Le/a/a0/b;

    invoke-direct {p1, v0, p2}, Le/a/a0/h;-><init>(Le/a/a0/b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a0/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a0/h;->e:I

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
    iget-object p1, p0, Le/a/a0/h;->f:Le/a/a0/b;

    .line 5
    iget-object p1, p1, Le/a/a0/b;->n:Le/a/a0/i;

    .line 6
    iput v2, p0, Le/a/a0/h;->e:I

    invoke-interface {p1, p0}, Le/a/a0/i;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 8
    iget-object v0, p0, Le/a/a0/h;->f:Le/a/a0/b;

    .line 9
    iget-object v0, v0, Le/a/a0/b;->d:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Le/a/a0/h;->f:Le/a/a0/b;

    .line 12
    iget-object v0, v0, Le/a/a0/b;->d:Ljava/util/List;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move v9, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v10, v9, 0x1

    if-ltz v9, :cond_5

    .line 15
    check-cast v4, Lcom/truecaller/spamcategories/SpamCategory;

    const/4 v5, 0x2

    if-gt v9, v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    if-eqz v5, :cond_4

    .line 16
    new-instance v11, Le/a/a0/a/e;

    invoke-virtual {v4}, Lcom/truecaller/spamcategories/SpamCategory;->getId()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/truecaller/spamcategories/SpamCategory;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/truecaller/spamcategories/SpamCategory;->getIcon()Ljava/lang/String;

    move-result-object v8

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Le/a/a0/a/e;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 17
    :cond_4
    new-instance v11, Le/a/a0/a/i;

    invoke-virtual {v4}, Lcom/truecaller/spamcategories/SpamCategory;->getId()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/truecaller/spamcategories/SpamCategory;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/truecaller/spamcategories/SpamCategory;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v5, v6, v7, v4}, Le/a/a0/a/i;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_3
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    .line 20
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object p1, p0, Le/a/a0/h;->f:Le/a/a0/b;

    .line 22
    iget-object v0, p1, Le/a/a0/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    .line 23
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a0/f;

    if-eqz v0, :cond_c

    .line 24
    iget-object v1, p1, Le/a/a0/b;->d:Ljava/util/List;

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Le/a/a0/a/e;

    if-eqz v4, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_8
    iget-object p1, p1, Le/a/a0/b;->d:Ljava/util/List;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Le/a/a0/a/i;

    if-eqz v4, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 30
    :cond_a
    invoke-interface {v0, v2, v1}, Le/a/a0/f;->Bn(Ljava/util/List;Ljava/util/List;)V

    goto :goto_6

    .line 31
    :cond_b
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a0/f;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/a0/f;->mu()V

    .line 32
    :cond_c
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
