.class public Le/a/q4/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q4/h0;


# instance fields
.field public final a:Le/a/q4/u;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/q4/u;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q4/i0;->a:Le/a/q4/u;

    .line 3
    iput-object p2, p0, Le/a/q4/i0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/q4/i0;->d()Ljava/util/List;

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q4/i0;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "com.whatsapp"

    .line 2
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-static {v0, p1, v2}, Le/a/o5/t;->c(Landroid/content/Context;Ljava/lang/Long;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k3/l/d;

    .line 5
    iget-object v0, v0, Le/a/k3/l/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public c()Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/q4/i0;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q4/i0;->a:Le/a/q4/u;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, v0, Le/a/q4/u;->h:Le/a/w/b/b;

    const-string v2, "smsReferralPrefetchBatch"

    invoke-interface {v1, v2}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    .line 6
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    const-string v2, ","

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 9
    iget-object v6, v0, Le/a/q4/u;->g:Le/a/k3/j/b;

    invoke-virtual {v6, v5}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v7

    invoke-virtual {v0, v5, v7}, Le/a/q4/u;->b(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v7, v0, Le/a/q4/u;->i:Le/a/b0/q/z;

    .line 12
    invoke-static {v6, v4}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v8

    .line 13
    invoke-static {v6, v5, v7, v8}, Lcom/truecaller/data/entity/messaging/Participant;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Le/a/b0/q/z;Landroid/net/Uri;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v5

    .line 14
    iget-object v6, v0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v0}, Le/a/q4/u;->c()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_3

    .line 17
    :cond_3
    :try_start_1
    iget-object v1, v0, Le/a/q4/u;->a:Le/a/h/b/w0/d;

    invoke-interface {v1, v3}, Le/a/h/b/w0/d;->d(I)Ljava/util/List;

    move-result-object v1

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/w0/c;

    .line 20
    iget-object v3, v3, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_5
    iget-object v1, v0, Le/a/q4/u;->h:Le/a/w/b/b;

    const-string v3, "referralSuggestionCountLogged"

    invoke-interface {v1, v3}, Le/a/b0/g/b;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    iget-object v1, v0, Le/a/q4/u;->h:Le/a/w/b/b;

    const-string v3, "referralSuggestionCountLogged"

    invoke-interface {v1, v3, v4}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    .line 25
    :cond_6
    iget-object v1, v0, Le/a/q4/u;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-object v1, v0, Le/a/q4/u;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    invoke-virtual {v0}, Le/a/q4/u;->e()V

    .line 28
    iget-object v1, v0, Le/a/q4/u;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Le/a/q4/u;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_3
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
