.class public final Le/a/k5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k5/a;


# instance fields
.field public final a:Le/a/a3/a;

.field public final b:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/a3/a;Landroid/telephony/TelephonyManager;)V
    .locals 1
    .param p1    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "blockManager"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "telephonyManager"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/k5/b;->a:Le/a/a3/a;

    iput-object p3, p0, Le/a/k5/b;->b:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p2, Le/a/k5/b$b;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/k5/b$b;

    iget v2, v1, Le/a/k5/b$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k5/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k5/b$b;

    invoke-direct {v1, p0, p2}, Le/a/k5/b$b;-><init>(Le/a/k5/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/k5/b$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k5/b$b;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/k5/b$b;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iget-object v1, v1, Le/a/k5/b$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/k5/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v1, Le/a/k5/b$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/k5/b$b;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/k5/b$b;->e:I

    invoke-virtual {p0, p1, v1}, Le/a/k5/b;->c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of v2, p2, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/blocking/FilterMatch;

    .line 9
    invoke-virtual {v6}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v5, v3

    :goto_3
    if-nez v5, :cond_16

    if-eqz v2, :cond_7

    .line 10
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/blocking/FilterMatch;

    .line 12
    invoke-virtual {v2}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    move p2, v4

    goto :goto_5

    :cond_9
    :goto_4
    move p2, v3

    :goto_5
    if-nez p2, :cond_16

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p2

    if-eqz p2, :cond_a

    goto/16 :goto_c

    .line 14
    :cond_a
    invoke-virtual {v1, p1}, Le/a/k5/b;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result p2

    if-eqz p2, :cond_b

    return-object v0

    .line 15
    :cond_b
    iget-object p2, v1, Le/a/k5/b;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->k()Ljava/util/List;

    move-result-object v1

    const-string v2, "contact.addresses"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "it"

    const/4 v7, 0x0

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/truecaller/data/entity/Address;

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-static {v8}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    move v8, v3

    goto :goto_7

    :cond_e
    :goto_6
    move v8, v4

    :goto_7
    xor-int/2addr v8, v4

    .line 17
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_8

    :cond_f
    move-object v5, v7

    :goto_8
    check-cast v5, Lcom/truecaller/data/entity/Address;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_10
    move-object v1, v7

    :goto_9
    if-eqz p2, :cond_16

    .line 19
    invoke-static {p2, v1, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_c

    .line 20
    :cond_11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->k()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/truecaller/data/entity/Address;

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Address;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_a

    :cond_13
    move v1, v3

    goto :goto_b

    :cond_14
    :goto_a
    move v1, v4

    :goto_b
    xor-int/2addr v1, v4

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v7, p2

    :cond_15
    check-cast v7, Lcom/truecaller/data/entity/Address;

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/truecaller/data/entity/Address;->getTimeZone()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 23
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_16
    :goto_c
    return-object v0
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;
    .locals 4

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/k5/b;->d(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->k()Ljava/util/List;

    move-result-object p1

    const-string v0, "contact.addresses"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/truecaller/data/entity/Address;

    const-string v3, "it"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Address;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v3

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    check-cast v0, Lcom/truecaller/data/entity/Address;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_3
    return-object v1
.end method

.method public final synthetic c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k5/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k5/b$a;

    iget v1, v0, Le/a/k5/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k5/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k5/b$a;

    invoke-direct {v0, p0, p2}, Le/a/k5/b$a;-><init>(Le/a/k5/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k5/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k5/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/k5/b$a;->j:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object v2, v0, Le/a/k5/b$a;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Le/a/k5/b$a;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v5, v0, Le/a/k5/b$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/k5/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    const-string p2, "contact.numbers"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p1

    move-object p1, p2

    move-object p2, p0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lcom/truecaller/data/entity/Number;

    .line 7
    iget-object v5, p2, Le/a/k5/b;->a:Le/a/a3/a;

    const-string v6, "it"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    iput-object p2, v0, Le/a/k5/b$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k5/b$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k5/b$a;->i:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k5/b$a;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/k5/b$a;->e:I

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v0

    invoke-static/range {v4 .. v10}, Le/a/n/g0;->x(Le/a/a3/a;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p2

    move-object p2, v4

    move-object v4, p1

    :goto_3
    check-cast p2, Lcom/truecaller/blocking/FilterMatch;

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v4

    move-object p2, v5

    goto :goto_1

    .line 8
    :cond_5
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final d(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    const-string v0, "contact.numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/truecaller/data/entity/Number;

    const-string v3, "it"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
