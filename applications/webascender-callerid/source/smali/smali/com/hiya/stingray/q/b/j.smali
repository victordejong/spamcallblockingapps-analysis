.class public Lcom/hiya/stingray/q/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/q/b/v;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/b/j;->a:Lcom/hiya/stingray/q/b/v;

    return-void
.end method

.method private c(Z)Lg/g/a/a/c;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lg/g/a/a/c;->ADD_DENY_LIST_ITEM:Lg/g/a/a/c;

    goto :goto_0

    :cond_0
    sget-object p1, Lg/g/a/a/c;->ADD_ALLOW_LIST_ITEM:Lg/g/a/a/c;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(ZLjava/util/List;)Li/c/b0/b/v;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const-string v0, "blacklist"

    const-string v1, "whitelist"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/m;->d(Z)V

    const/4 v4, 0x0

    .line 2
    :try_start_0
    iget-object v5, p0, Lcom/hiya/stingray/q/b/j;->a:Lcom/hiya/stingray/q/b/v;

    invoke-virtual {v5}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/realm/exceptions/RealmException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_2

    .line 3
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v4, "Realm is null when removing block items."

    invoke-direct {p2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/realm/exceptions/RealmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {v5}, Lio/realm/y;->close()V

    :cond_1
    return-object p1

    .line 5
    :cond_2
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hiya/stingray/q/c/i/a;

    if-nez v6, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    const-class v7, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {v5, v7}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v7

    const-string v8, "isFullNumberType"

    .line 7
    invoke-virtual {v6}, Lcom/hiya/stingray/q/c/i/a;->Q0()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lio/realm/RealmQuery;->g(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    const-string v8, "isBlacklistItem"

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lio/realm/RealmQuery;->g(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    const-string v8, "phone"

    .line 9
    invoke-virtual {v6}, Lcom/hiya/stingray/q/c/i/a;->P0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lio/realm/RealmQuery;->i(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    invoke-virtual {v7}, Lio/realm/RealmQuery;->o()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hiya/stingray/q/c/i/a;

    if-nez v7, :cond_3

    .line 10
    invoke-virtual {v5}, Lio/realm/y;->beginTransaction()V

    new-array v7, v3, [Lio/realm/n;

    .line 11
    invoke-virtual {v5, v6, v7}, Lio/realm/y;->I0(Lio/realm/e0;[Lio/realm/n;)Lio/realm/e0;

    .line 12
    invoke-virtual {v5}, Lio/realm/y;->j()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lio/realm/exceptions/RealmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 13
    invoke-virtual {v5}, Lio/realm/y;->close()V

    .line 14
    :cond_6
    invoke-static {v4}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_6

    :catch_0
    move-exception p2

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v4, v5

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p2

    .line 15
    :goto_2
    :try_start_3
    new-instance v5, Lcom/hiya/stingray/exception/HiyaDbException;

    .line 16
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/j;->c(Z)Lg/g/a/a/c;

    move-result-object v6

    const-string v7, "Try to add a duplicate block item of list type: %s"

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    aput-object v0, v2, v3

    .line 17
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/exception/a;->SYSTEM_ERROR:Lcom/hiya/stingray/exception/a;

    invoke-direct {v5, v6, p1, v0, p2}, Lcom/hiya/stingray/exception/HiyaDbException;-><init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {v5}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_8

    .line 19
    invoke-virtual {v4}, Lio/realm/y;->close()V

    :cond_8
    return-object p1

    :catch_3
    move-exception p2

    .line 20
    :goto_4
    :try_start_4
    new-instance v5, Lcom/hiya/stingray/exception/HiyaDbException;

    .line 21
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/j;->c(Z)Lg/g/a/a/c;

    move-result-object v6

    const-string v7, "Try to add a null block item of list type: %s"

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    move-object v0, v1

    :goto_5
    aput-object v0, v2, v3

    .line 22
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/exception/a;->SYSTEM_ERROR:Lcom/hiya/stingray/exception/a;

    invoke-direct {v5, v6, p1, v0, p2}, Lcom/hiya/stingray/exception/HiyaDbException;-><init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;Ljava/lang/Throwable;)V

    .line 23
    invoke-static {v5}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_a

    .line 24
    invoke-virtual {v4}, Lio/realm/y;->close()V

    :cond_a
    return-object p1

    :goto_6
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lio/realm/y;->close()V

    .line 25
    :cond_b
    throw p1
.end method

.method public b()Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/j;->a:Lcom/hiya/stingray/q/b/v;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-class v1, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {v0, v1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isBlacklistItem"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->g(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    invoke-virtual {v1}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lio/realm/y;->u0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lio/realm/y;->close()V

    .line 7
    invoke-static {v1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public d()Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/j;->a:Lcom/hiya/stingray/q/b/v;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-class v1, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {v0, v1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "isBlacklistItem"

    invoke-virtual {v1, v3, v2}, Lio/realm/RealmQuery;->g(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    invoke-virtual {v1}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lio/realm/y;->u0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lio/realm/y;->close()V

    .line 7
    invoke-static {v1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public e(ZLjava/util/List;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/hiya/stingray/q/b/j;->a:Lcom/hiya/stingray/q/b/v;

    invoke-virtual {v3}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    .line 3
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v2, "Realm is null when removing block items."

    invoke-direct {p2, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lio/realm/y;->close()V

    :cond_1
    return-object p1

    .line 5
    :cond_2
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/g/a/a/i/c;

    .line 6
    invoke-virtual {v4}, Lg/g/a/a/i/c;->getPhone()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lg/g/a/a/i/c;->getPhone()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lg/g/a/a/i/c;->getBeginsWith()Ljava/lang/String;

    move-result-object v5

    .line 7
    :goto_2
    const-class v6, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {v3, v6}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v6

    const-string v7, "isFullNumberType"

    .line 8
    invoke-virtual {v4}, Lg/g/a/a/i/c;->getPhone()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lio/realm/RealmQuery;->g(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    const-string v4, "isBlacklistItem"

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lio/realm/RealmQuery;->g(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    const-string v4, "phone"

    .line 10
    invoke-virtual {v6, v4, v5}, Lio/realm/RealmQuery;->i(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    invoke-virtual {v6}, Lio/realm/RealmQuery;->o()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/q/c/i/a;

    if-eqz v4, :cond_3

    .line 11
    new-instance v5, Lcom/hiya/stingray/q/b/j$a;

    invoke-direct {v5, p0, v4}, Lcom/hiya/stingray/q/b/j$a;-><init>(Lcom/hiya/stingray/q/b/j;Lcom/hiya/stingray/q/c/i/a;)V

    invoke-virtual {v3, v5}, Lio/realm/y;->Z0(Lio/realm/y$b;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {v3}, Lio/realm/y;->close()V

    .line 13
    :cond_7
    invoke-static {v2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_7

    :catch_0
    move-exception p2

    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p2

    .line 14
    :goto_4
    :try_start_3
    new-instance v3, Lcom/hiya/stingray/exception/HiyaDbException;

    if-eqz p1, :cond_8

    sget-object v4, Lg/g/a/a/c;->REMOVE_DENY_LIST_ITEM:Lg/g/a/a/c;

    goto :goto_5

    :cond_8
    sget-object v4, Lg/g/a/a/c;->REMOVE_ALLOW_LIST_ITEM:Lg/g/a/a/c;

    :goto_5
    const-string v5, "Try to remove a null block item of item type: %s"

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_9

    const-string p1, "blacklist"

    goto :goto_6

    :cond_9
    const-string p1, "whitelist"

    :goto_6
    aput-object p1, v0, v1

    .line 15
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/exception/a;->SYSTEM_ERROR:Lcom/hiya/stingray/exception/a;

    invoke-direct {v3, v4, p1, v0, p2}, Lcom/hiya/stingray/exception/HiyaDbException;-><init>(Lg/g/a/a/b;Ljava/lang/String;Lcom/hiya/stingray/exception/a;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {v3}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_a

    .line 17
    invoke-virtual {v2}, Lio/realm/y;->close()V

    :cond_a
    return-object p1

    :goto_7
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lio/realm/y;->close()V

    .line 18
    :cond_b
    throw p1
.end method
