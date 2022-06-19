.class final Lio/realm/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/z$d;,
        Lio/realm/z$f;,
        Lio/realm/z$c;,
        Lio/realm/z$e;,
        Lio/realm/z$b;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/realm/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/realm/internal/s/a<",
            "Lio/realm/z$d;",
            "Lio/realm/internal/OsSharedRealm$a;",
            ">;",
            "Lio/realm/z$e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Lio/realm/b0;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/realm/z;->e:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/realm/z;->f:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/z;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/realm/z;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-object p1, p0, Lio/realm/z;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/realm/z;->c(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private static b(Lio/realm/b0;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/realm/b0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/realm/b0;->l()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/b0;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lio/realm/b0;->u()Z

    move-result v1

    .line 4
    invoke-static {v1}, Lio/realm/internal/i;->b(Z)Lio/realm/internal/i;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p0}, Lio/realm/internal/i;->e(Lio/realm/b0;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lio/realm/internal/Util;->d(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    .line 7
    :cond_1
    new-instance v3, Lio/realm/z$a;

    invoke-direct {v3, v0, p0, v2, v1}, Lio/realm/z$a;-><init>(Ljava/io/File;Lio/realm/b0;ZLjava/lang/String;)V

    invoke-static {p0, v3}, Lio/realm/internal/OsObjectStore;->a(Lio/realm/b0;Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/io/File;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lio/realm/a;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_5

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0x1000

    :try_start_2
    new-array p1, p1, [B

    .line 4
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    if-nez v0, :cond_3

    move-object v0, p0

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    return-void

    .line 8
    :cond_4
    new-instance p0, Lio/realm/exceptions/RealmFileException;

    sget-object p1, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    invoke-direct {p0, p1, v0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V

    throw p0

    :catch_2
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v2, v0

    goto :goto_3

    .line 9
    :cond_5
    :try_start_5
    new-instance p1, Lio/realm/exceptions/RealmFileException;

    sget-object v2, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input stream to the asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 10
    :goto_3
    :try_start_6
    new-instance v3, Lio/realm/exceptions/RealmFileException;

    sget-object v4, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not resolve the path to the asset file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0, p1}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :goto_4
    if-eqz v1, :cond_6

    .line 11
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 12
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 13
    :catch_6
    :cond_7
    throw p0
.end method

.method private d(Ljava/lang/Class;Lio/realm/z$e;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/a;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/z$e;",
            "Lio/realm/internal/OsSharedRealm$a;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lio/realm/y;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0, p3}, Lio/realm/y;->T0(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/y;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Lio/realm/h;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {p0, p3}, Lio/realm/h;->X(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/h;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p2, p1}, Lio/realm/z$e;->g(Lio/realm/a;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static e(Lio/realm/b0;Ljava/lang/Class;)Lio/realm/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/a;",
            ">(",
            "Lio/realm/b0;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/b0;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/z;->h(Ljava/lang/String;Z)Lio/realm/z;

    move-result-object v0

    .line 2
    sget-object v1, Lio/realm/internal/OsSharedRealm$a;->h:Lio/realm/internal/OsSharedRealm$a;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/z;->f(Lio/realm/b0;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/a;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized f(Lio/realm/b0;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/a;",
            ">(",
            "Lio/realm/b0;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsSharedRealm$a;",
            ")TE;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p2, p3}, Lio/realm/z;->j(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/z$e;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lio/realm/z;->k()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lio/realm/b0;->v()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v1, :cond_2

    .line 4
    invoke-static {p1}, Lio/realm/z;->b(Lio/realm/b0;)V

    .line 5
    invoke-virtual {p1}, Lio/realm/b0;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 6
    new-instance v1, Lio/realm/internal/OsRealmConfig$b;

    invoke-direct {v1, p1}, Lio/realm/internal/OsRealmConfig$b;-><init>(Lio/realm/b0;)V

    invoke-virtual {v1}, Lio/realm/internal/OsRealmConfig$b;->b()Lio/realm/internal/OsRealmConfig;

    move-result-object v1

    .line 7
    invoke-static {}, Lio/realm/internal/i;->d()Lio/realm/internal/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/internal/i;->i(Lio/realm/internal/OsRealmConfig;)V

    .line 8
    invoke-static {}, Lio/realm/internal/i;->d()Lio/realm/internal/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/realm/internal/i;->a(Lio/realm/b0;)V

    .line 9
    :cond_1
    iput-object p1, p0, Lio/realm/z;->c:Lio/realm/b0;

    goto :goto_1

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lio/realm/z;->p(Lio/realm/b0;)V

    .line 11
    :goto_1
    invoke-virtual {v0}, Lio/realm/z$e;->e()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    invoke-direct {p0, p2, v0, p3}, Lio/realm/z;->d(Ljava/lang/Class;Lio/realm/z$e;Lio/realm/internal/OsSharedRealm$a;)V

    .line 13
    :cond_3
    invoke-virtual {v0, v2}, Lio/realm/z$e;->f(I)V

    .line 14
    invoke-virtual {v0}, Lio/realm/z$e;->c()Lio/realm/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized g(Lio/realm/z$b;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/realm/z;->k()I

    move-result v0

    invoke-interface {p1, v0}, Lio/realm/z$b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static h(Ljava/lang/String;Z)Lio/realm/z;
    .locals 5

    .line 1
    sget-object v0, Lio/realm/z;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/z;

    if-nez v3, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v4, v3, Lio/realm/z;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 7
    new-instance v2, Lio/realm/z;

    invoke-direct {v2, p0}, Lio/realm/z;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lio/realm/z;->e:Ljava/util/List;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private j(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/z$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/a;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/internal/OsSharedRealm$a;",
            ")",
            "Lio/realm/z$e;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/realm/z$d;->valueOf(Ljava/lang/Class;)Lio/realm/z$d;

    move-result-object p1

    .line 2
    new-instance v0, Lio/realm/internal/s/a;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/s/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/realm/z;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/z$e;

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lio/realm/internal/OsSharedRealm$a;->h:Lio/realm/internal/OsSharedRealm$a;

    invoke-virtual {p2, p1}, Lio/realm/internal/OsSharedRealm$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lio/realm/z$f;

    invoke-direct {p1, p2}, Lio/realm/z$f;-><init>(Lio/realm/z$a;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lio/realm/z$c;

    invoke-direct {p1, p2}, Lio/realm/z$c;-><init>(Lio/realm/z$a;)V

    .line 7
    :goto_0
    iget-object p2, p0, Lio/realm/z;->a:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method private k()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/z$e;

    .line 2
    invoke-virtual {v2}, Lio/realm/z$e;->b()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private l()I
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/z$e;

    .line 2
    instance-of v3, v2, Lio/realm/z$f;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v2}, Lio/realm/z$e;->b()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method static m(Lio/realm/b0;Lio/realm/z$b;)V
    .locals 2

    .line 1
    sget-object v0, Lio/realm/z;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/realm/b0;->k()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lio/realm/z;->h(Ljava/lang/String;Z)Lio/realm/z;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lio/realm/z$b;->a(I)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lio/realm/z;->g(Lio/realm/z$b;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private p(Lio/realm/b0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/z;->c:Lio/realm/b0;

    invoke-virtual {v0, p1}, Lio/realm/b0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/z;->c:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->f()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/b0;->f()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lio/realm/b0;->i()Lio/realm/d0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/realm/z;->c:Lio/realm/b0;

    invoke-virtual {v1}, Lio/realm/b0;->i()Lio/realm/d0;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lio/realm/b0;->i()Lio/realm/d0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/z;->c:Lio/realm/b0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\nNew configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong key used to decrypt Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public i()Lio/realm/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/z;->c:Lio/realm/b0;

    return-object v0
.end method

.method n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/z;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/realm/z;->f:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method declared-synchronized o(Lio/realm/a;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/a;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lio/realm/internal/OsSharedRealm$a;->h:Lio/realm/internal/OsSharedRealm$a;

    :goto_0
    invoke-direct {p0, v1, v2}, Lio/realm/z;->j(Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/z$e;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/z$e;->d()I

    move-result v2

    if-gtz v2, :cond_1

    const-string p1, "%s has been closed already. refCount is %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lio/realm/log/RealmLog;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    .line 6
    :try_start_1
    invoke-virtual {v1}, Lio/realm/z$e;->a()V

    .line 7
    invoke-virtual {p1}, Lio/realm/a;->r()V

    .line 8
    invoke-direct {p0}, Lio/realm/z;->l()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/realm/z;->c:Lio/realm/b0;

    .line 10
    iget-object v0, p0, Lio/realm/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/z$e;

    .line 11
    instance-of v2, v1, Lio/realm/z$c;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v1}, Lio/realm/z$e;->c()Lio/realm/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    :goto_1
    invoke-virtual {v1}, Lio/realm/a;->K()Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {v1}, Lio/realm/a;->close()V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p1}, Lio/realm/a;->A()Lio/realm/b0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b0;->u()Z

    move-result v0

    invoke-static {v0}, Lio/realm/internal/i;->b(Z)Lio/realm/internal/i;

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/a;->A()Lio/realm/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/internal/i;->h(Lio/realm/b0;)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v1, v2}, Lio/realm/z$e;->h(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
