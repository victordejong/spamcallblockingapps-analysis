.class public final Le/a/o4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o4/l;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/b0/o/a;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o4/m;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/o4/m;->c:Lo3/a;

    iput-object p3, p0, Le/a/o4/m;->d:Lo3/a;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/o4/m;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/o4/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Le/a/o4/m;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const-string v1, "payloads"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/o4/m;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    .line 2
    iget-object v1, p0, Le/a/o4/m;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3
    invoke-interface {v0, v2}, Le/a/q2/a;->d(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/o4/m;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const-string v1, "payloads"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "coreSettings.get().getSt\u2026SSAGE_PAYLOADS) ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    :goto_0
    instance-of v0, v1, Ls1/l$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/o4/m;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const-string v1, "payloads"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5
    :cond_0
    instance-of v0, v1, Ls1/l$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v1, v2

    .line 6
    :cond_1
    check-cast v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v0, v3}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v0

    .line 8
    iget-object v3, p0, Le/a/o4/m;->a:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    check-cast v4, Ls1/u/z;

    invoke-virtual {v4}, Ls1/u/z;->a()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    :try_start_3
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v4}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    :goto_2
    instance-of v5, v4, Ls1/l$a;

    if-eqz v5, :cond_3

    move-object v4, v2

    .line 12
    :cond_3
    check-cast v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const-string v6, "jsonObject.keys()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->A(Ljava/util/Iterator;)Ls1/e0/k;

    move-result-object v5

    .line 15
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-interface {v5}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 17
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v6, v2

    :cond_5
    if-eqz v6, :cond_2

    .line 18
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 19
    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    .line 20
    :cond_7
    monitor-exit p0

    return-void

    .line 21
    :cond_8
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Landroid/os/Bundle;J)V
    .locals 3

    const-class v0, Le/a/o4/l;

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onMessage with Intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v1, p0, Le/a/o4/m;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Le/a/o4/m;->f()V

    .line 4
    invoke-virtual {p0, p1}, Le/a/o4/m;->e(Landroid/os/Bundle;)Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    :try_start_1
    iget-object v1, p0, Le/a/o4/m;->b:Landroid/content/Context;

    invoke-static {p1, v1, p2, p3}, Le/a/e/a2;->H(Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " onNotification - error while handling notification"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    :cond_0
    :goto_0
    iget-object p1, p0, Le/a/o4/m;->b:Landroid/content/Context;

    invoke-static {p1}, Le/a/e/a2;->j(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Landroid/os/Bundle;)Lcom/truecaller/notifications/internal/InternalTruecallerNotification;
    .locals 10

    .line 1
    sget-object v0, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    const-string v1, "e"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a"

    .line 2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    if-nez v4, :cond_b

    .line 4
    :cond_4
    :try_start_0
    new-instance v4, Le/m/e/t;

    invoke-direct {v4}, Le/m/e/t;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    const-string v6, "JsonParser().parse(it)"

    const-string v7, "Did not consume the entire document."

    if-eqz v2, :cond_7

    .line 5
    :try_start_1
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 6
    :try_start_2
    new-instance v2, Le/m/e/g0/a;

    invoke-direct {v2, v8}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 7
    invoke-static {v2}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v8

    .line 8
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    instance-of v9, v8, Le/m/e/s;

    if-nez v9, :cond_6

    .line 10
    invoke-virtual {v2}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v2

    if-ne v2, v0, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    new-instance p1, Le/m/e/z;

    invoke-direct {p1, v7}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Le/m/e/g0/d; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    .line 12
    :cond_6
    :goto_2
    :try_start_3
    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object v2

    .line 13
    iget-object v8, v4, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v8, v1, v2}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 15
    new-instance v0, Le/m/e/r;

    invoke-direct {v0, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 16
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    :goto_3
    if-eqz p1, :cond_a

    .line 17
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    .line 18
    :try_start_4
    new-instance p1, Le/m/e/g0/a;

    invoke-direct {p1, v1}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 19
    invoke-static {p1}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    instance-of v2, v1, Le/m/e/s;

    if-nez v2, :cond_9

    .line 22
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_4

    .line 23
    :cond_8
    new-instance p1, Le/m/e/z;

    invoke-direct {p1, v7}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Le/m/e/g0/d; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 24
    :cond_9
    :goto_4
    :try_start_5
    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object p1

    .line 25
    iget-object v0, v4, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {v0, v3, p1}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catch_3
    move-exception p1

    .line 26
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    .line 27
    new-instance v0, Le/m/e/r;

    invoke-direct {v0, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception p1

    .line 28
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 29
    :cond_a
    :goto_5
    new-instance p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    sget-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->NEW:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-direct {p1, v4, v0, v5}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;-><init>(Le/m/e/t;Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Le/a/o4/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " asNotification - error while parsing notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized f()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/o4/m;->a:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    .line 2
    sget-object v1, Le/a/o4/m$a;->b:Le/a/o4/m$a;

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4
    check-cast v0, Ls1/e0/c0;

    .line 5
    iget-object v2, v0, Ls1/e0/c0;->a:Ls1/e0/k;

    .line 6
    invoke-interface {v2}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v0, Ls1/e0/c0;->b:Ls1/z/b/l;

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, "jsonArray.put(jsonObject)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Le/a/o4/m;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    const-string v2, "payloads"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
