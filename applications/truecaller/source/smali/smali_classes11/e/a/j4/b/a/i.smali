.class public abstract Le/a/j4/b/a/i;
.super Le/a/j4/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/j4/b/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/a/j4/b/b/f;",
        ">",
        "Le/a/j4/b/a/b;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "+",
            "Le/a/j4/b/b/f;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/j4/b/a/i;->b:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/j4/b/a/i;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/a/j4/b/a/i;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Le/a/j4/b/a/b;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Le/a/j4/b/a/i;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    sget-object v0, Le/a/j4/b/a/i;->d:Ljava/util/Map;

    const-string v1, "Notifications"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Le/a/j4/b/a/i;->d:Ljava/util/Map;

    const-string v1, "Notifications"

    invoke-virtual {p0}, Le/a/j4/b/a/i;->f()Ljava/util/TreeSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public c(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/j4/b/a/i;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/j4/b/a/i;->d()Ljava/util/TreeSet;

    move-result-object v2

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 6
    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p0}, Le/a/j4/b/a/i;->h()V

    .line 8
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Ljava/util/TreeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/j4/b/a/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Le/a/j4/b/a/i;->d:Ljava/util/Map;

    const-string v2, "Notifications"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeSet;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Le/a/j4/b/a/i;->d()Ljava/util/TreeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final f()Ljava/util/TreeSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    :try_start_0
    const-string v1, "LIST"

    .line 2
    invoke-virtual {p0}, Le/a/j4/b/a/b;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    check-cast v2, Le/a/m0/c1/b0;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Le/a/m0/c1/b0;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 5
    :try_start_1
    new-instance v1, Le/m/e/g0/a;

    invoke-direct {v1, v2}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 6
    invoke-static {v1}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v2

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    instance-of v3, v2, Le/m/e/s;

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {v1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v1

    sget-object v3, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Le/m/e/z;

    const-string v2, "Did not consume the entire document."

    invoke-direct {v1, v2}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Le/m/e/g0/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 11
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Le/m/e/q;->c()Le/m/e/n;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1}, Le/m/e/n;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_3

    .line 14
    invoke-virtual {v1, v3}, Le/m/e/n;->i(I)Le/m/e/q;

    move-result-object v5

    invoke-virtual {v5}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 15
    :try_start_3
    new-instance v6, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    invoke-direct {v6, v5}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;-><init>(Le/m/e/t;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    .line 16
    :try_start_4
    invoke-static {v5}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    .line 17
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_3
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 19
    new-instance v2, Le/m/e/z;

    invoke-direct {v2, v1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 20
    new-instance v2, Le/m/e/r;

    invoke-direct {v2, v1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    .line 21
    new-instance v2, Le/m/e/z;

    invoke-direct {v2, v1}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v1

    .line 22
    invoke-static {v1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-object v0
.end method

.method public g(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/j4/b/a/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/j4/b/a/i;->d()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0, p1}, Le/a/j4/b/a/i;->c(Ljava/util/Collection;)I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Le/a/j4/b/a/i;->d()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/a/j4/b/a/i;->i(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Le/a/j4/b/a/i;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Le/a/j4/b/a/i;->d()Ljava/util/TreeSet;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    new-instance v1, Le/m/e/n;

    invoke-direct {v1}, Le/m/e/n;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/j4/b/b/f;

    .line 11
    :try_start_1
    invoke-interface {v2}, Le/a/j4/b/b/f;->a()Le/m/e/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/e/n;->h(Le/m/e/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 12
    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string v0, "LIST"

    .line 13
    invoke-virtual {v1}, Le/m/e/q;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Le/a/j4/b/a/b;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    check-cast v2, Le/a/m0/c1/b0;

    invoke-virtual {v2}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 15
    check-cast v2, Le/a/m0/c1/b0$e;

    invoke-virtual {v2, v0, v1}, Le/a/m0/c1/b0$e;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-virtual {v2}, Le/a/m0/c1/b0$e;->apply()V

    .line 17
    move-object v0, p0

    check-cast v0, Le/a/j4/b/a/f;

    .line 18
    iget-object v0, v0, Le/a/j4/b/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/truecaller/service/WidgetListProvider;->b(Landroid/content/Context;)V

    return-void

    :catchall_1
    move-exception v0

    .line 19
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final i(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/j4/b/b/f;

    .line 3
    move-object v4, v1

    check-cast v4, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 4
    invoke-virtual {v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v5

    sget-object v6, Lcom/truecaller/network/notification/NotificationType;->TRIGGER_INITIALIZE:Lcom/truecaller/network/notification/NotificationType;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v5

    sget-object v6, Lcom/truecaller/network/notification/NotificationType;->SOFTWARE_UPDATE:Lcom/truecaller/network/notification/NotificationType;

    if-ne v5, v6, :cond_3

    const-string v5, "v"

    .line 6
    invoke-virtual {v4, v5}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "12.21.6"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    :goto_1
    move v2, v3

    :cond_3
    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_4
    move-object p1, p0

    check-cast p1, Le/a/j4/b/a/f;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v4, Le/a/j4/b/a/e;

    invoke-direct {v4, p1}, Le/a/j4/b/a/e;-><init>(Le/a/j4/b/a/f;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 13
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/j4/b/a/i$a;

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/j4/b/b/f;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/j4/b/a/i$a;

    .line 18
    invoke-interface {v7, v5}, Le/a/j4/b/a/i$a;->a(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 19
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v2

    goto :goto_4

    :cond_8
    move v6, v3

    :goto_4
    if-nez v6, :cond_6

    .line 20
    invoke-virtual {p1, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/j4/b/a/i$a;

    .line 22
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 24
    invoke-interface {v1, v2}, Le/a/j4/b/a/i$a;->b(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/j4/b/b/f;

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    return-object p1
.end method
