.class public Le/a/j4/b/a/g;
.super Le/a/j4/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/j4/b/a/g<",
        "Le/a/j4/b/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Le/a/j4/b/b/a;",
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

    sput-object v0, Le/a/j4/b/a/g;->b:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/j4/b/a/g;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Le/a/j4/b/a/g;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Le/a/j4/b/a/b;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Le/a/j4/b/a/g;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    sget-object v0, Le/a/j4/b/a/g;->d:Ljava/util/Map;

    const-string v1, "PhoneNotification"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/j4/b/a/g;->e()Ljava/util/List;

    move-result-object v1

    const-string v2, "PhoneNotification"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
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
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "PhoneNotification"

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    sget-object v0, Le/a/j4/b/a/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/j4/b/a/g;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Le/a/j4/b/a/b;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    check-cast v1, Le/a/m0/c1/b0;

    invoke-virtual {v1}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    check-cast v1, Le/a/m0/c1/b0$e;

    :try_start_1
    invoke-virtual {v1}, Le/a/m0/c1/b0$e;->clear()Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-virtual {v1}, Le/a/m0/c1/b0$e;->apply()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Le/a/j4/b/a/g;->d:Ljava/util/Map;

    const-string v1, "PhoneNotification"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 6

    :try_start_0
    const-string v0, "LIST"

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/b;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    check-cast v1, Le/a/m0/c1/b0;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Le/a/m0/c1/b0;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4
    :try_start_1
    new-instance v0, Le/m/e/g0/a;

    invoke-direct {v0, v1}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 5
    invoke-static {v0}, Le/m/e/v;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of v2, v1, Le/m/e/s;

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v0

    sget-object v2, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Le/m/e/z;

    const-string v1, "Did not consume the entire document."

    invoke-direct {v0, v1}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Le/m/e/g0/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 10
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Le/m/e/q;->c()Le/m/e/n;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0}, Le/m/e/n;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    .line 13
    invoke-virtual {v0, v2}, Le/m/e/n;->i(I)Le/m/e/q;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object v4

    .line 15
    new-instance v5, Le/a/j4/b/b/e;

    invoke-direct {v5, v4}, Le/a/j4/b/b/e;-><init>(Le/m/e/t;)V

    .line 16
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Le/m/e/z;

    invoke-direct {v1, v0}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 18
    new-instance v1, Le/m/e/r;

    invoke-direct {v1, v0}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 19
    new-instance v1, Le/m/e/z;

    invoke-direct {v1, v0}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception v0

    const-string v1, "DAO Error on reading"

    .line 20
    invoke-static {v0, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 21
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    return-object v1
.end method

.method public f(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/g;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/j4/b/b/e;

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2

    .line 4
    iget-boolean v3, v2, Le/a/j4/b/b/e;->e:Z

    if-nez v3, :cond_3

    :cond_2
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    .line 5
    iget-boolean v3, v2, Le/a/j4/b/b/e;->e:Z

    if-nez v3, :cond_1

    .line 6
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_4
    sget-object p1, Le/a/j4/b/a/g;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Le/a/j4/b/a/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {p0}, Le/a/j4/b/a/g;->g()V

    .line 10
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/g;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Le/m/e/n;

    invoke-direct {v1}, Le/m/e/n;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/j4/b/b/a;

    .line 4
    invoke-interface {v2}, Le/a/j4/b/b/a;->a()Le/m/e/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/e/n;->h(Le/m/e/q;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Le/m/e/q;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Le/a/j4/b/a/b;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    check-cast v1, Le/a/m0/c1/b0;

    invoke-virtual {v1}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 7
    check-cast v1, Le/a/m0/c1/b0$e;

    const-string v2, "LIST"

    invoke-virtual {v1, v2, v0}, Le/a/m0/c1/b0$e;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-virtual {v1}, Le/a/m0/c1/b0$e;->apply()V

    return-void
.end method
