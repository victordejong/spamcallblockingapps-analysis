.class public final Le/a/m0/c1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/m0/c1/b0$k;,
        Le/a/m0/c1/b0$n;,
        Le/a/m0/c1/b0$r;,
        Le/a/m0/c1/b0$l;,
        Le/a/m0/c1/b0$e;,
        Le/a/m0/c1/b0$c;,
        Le/a/m0/c1/b0$j;,
        Le/a/m0/c1/b0$i;,
        Le/a/m0/c1/b0$g;,
        Le/a/m0/c1/b0$o;,
        Le/a/m0/c1/b0$h;,
        Le/a/m0/c1/b0$d;,
        Le/a/m0/c1/b0$m;,
        Le/a/m0/c1/b0$f;,
        Le/a/m0/c1/b0$b;,
        Le/a/m0/c1/b0$q;,
        Le/a/m0/c1/b0$p;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final g:I

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/m0/c1/b0$o;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Le/a/m0/c1/b0$n;

.field public static final j:Le/a/m0/c1/b0$r;

.field public static final k:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final l:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Le/a/m0/c1/b0$o;

.field public d:Le/a/m0/c1/b0$m;

.field public final e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Le/a/m0/c1/b0$d;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    sput v3, Le/a/m0/c1/b0;->g:I

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/a/m0/c1/b0;->h:Ljava/util/Map;

    .line 3
    new-instance v0, Le/a/m0/c1/b0$n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/m0/c1/b0$n;-><init>(Le/a/m0/c1/b0$a;)V

    sput-object v0, Le/a/m0/c1/b0;->i:Le/a/m0/c1/b0$n;

    .line 4
    new-instance v7, Le/a/m0/c1/b0$r;

    invoke-direct {v7, v1}, Le/a/m0/c1/b0$r;-><init>(Le/a/m0/c1/b0$a;)V

    sput-object v7, Le/a/m0/c1/b0;->j:Le/a/m0/c1/b0$r;

    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Le/a/m0/c1/b0$l;->a:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    const-wide/16 v4, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Le/a/m0/c1/b0;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/m0/c1/b0;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Le/a/m0/c1/b0$m;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/a/m0/c1/b0$h;->a:Le/a/m0/c1/b0$m;

    iput-object v0, p0, Le/a/m0/c1/b0;->d:Le/a/m0/c1/b0$m;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Le/a/m0/c1/b0;->e:Ljava/util/WeakHashMap;

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Le/a/m0/c1/b0;->f:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "/shared_prefs"

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/a/m0/c1/b0;->b:Ljava/io/File;

    .line 7
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/m0/c1/b0;->a:Ljava/io/File;

    .line 8
    iput-object p3, p0, Le/a/m0/c1/b0;->d:Le/a/m0/c1/b0$m;

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    sget-object p3, Le/a/m0/c1/b0;->h:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/m0/c1/b0$o;

    if-nez v1, :cond_1

    .line 11
    monitor-enter p3

    .line 12
    :try_start_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/m0/c1/b0$o;

    if-nez v1, :cond_0

    .line 13
    new-instance p2, Le/a/m0/c1/b0$o;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Le/a/m0/c1/b0$o;-><init>(Le/a/m0/c1/b0$a;)V

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    move-object v1, p2

    move p2, p1

    .line 14
    :cond_0
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 15
    :cond_1
    :goto_0
    iput-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    const-class p1, Le/a/m0/c1/b0;

    monitor-enter p1

    .line 18
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_2

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_2
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 21
    invoke-virtual {p0}, Le/a/m0/c1/b0;->b()Z

    .line 22
    :cond_4
    :goto_2
    iget-object p1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object p1, p1, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_5

    .line 23
    iget-object p1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object p1, p1, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter p1

    .line 24
    :try_start_2
    iget-object p2, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object p2, p2, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, 0x28

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 25
    :try_start_3
    monitor-exit p1

    goto :goto_2

    :catchall_2
    move-exception p2

    goto :goto_3

    .line 26
    :catch_0
    monitor-exit p1

    goto :goto_4

    .line 27
    :goto_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p2

    :cond_5
    :goto_4
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 4

    if-eqz p0, :cond_7

    .line 1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    check-cast p1, Le/a/m0/c1/b0;

    invoke-virtual {p1}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->N(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    move-object v2, p1

    check-cast v2, Le/a/m0/c1/b0$e;

    invoke-virtual {v2, v1, v0}, Le/a/m0/c1/b0$e;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Le/a/m0/c1/b0$e;

    invoke-virtual {v2, v1, v0}, Le/a/m0/c1/b0$e;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v2, p1

    check-cast v2, Le/a/m0/c1/b0$e;

    invoke-virtual {v2, v1, v0}, Le/a/m0/c1/b0$e;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object v2, p1

    check-cast v2, Le/a/m0/c1/b0$e;

    invoke-virtual {v2, v1, v0}, Le/a/m0/c1/b0$e;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 10
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p1

    check-cast v0, Le/a/m0/c1/b0$e;

    invoke-virtual {v0, v1, v2, v3}, Le/a/m0/c1/b0$e;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 11
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v2, p1

    check-cast v2, Le/a/m0/c1/b0$e;

    invoke-virtual {v2, v1, v0}, Le/a/m0/c1/b0$e;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 12
    :cond_6
    check-cast p1, Le/a/m0/c1/b0$e;

    invoke-virtual {p1}, Le/a/m0/c1/b0$e;->apply()V

    :cond_7
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "/shared_prefs"

    invoke-static {v1, p0, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/io/File;

    const-string v1, ".xml"

    invoke-static {p1, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/m0/c1/b0;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Le/a/m0/c1/b0;->a:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object v2, v1

    .line 8
    :catchall_1
    :goto_0
    invoke-static {v1}, Le/a/e/a2;->o(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v2}, Le/a/e/a2;->o(Ljava/io/Closeable;)V

    move-object v1, v0

    .line 10
    :cond_0
    :try_start_2
    iget-object v0, p0, Le/a/m0/c1/b0;->d:Le/a/m0/c1/b0$m;

    .line 11
    invoke-interface {v0, v1}, Le/a/m0/c1/b0$m;->b([B)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 13
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 14
    :try_start_3
    iget-object v2, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v2, v2, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 16
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 17
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 18
    :try_start_5
    iget-object v2, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v2, v2, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 19
    monitor-exit v1

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 20
    :catchall_4
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 21
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 22
    :try_start_6
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 23
    monitor-exit v0

    const/4 v0, 0x0

    :goto_2
    return v0

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Landroid/content/SharedPreferences$Editor;Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Queue<",
            "Le/a/m0/c1/b0$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/m0/c1/b0;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/m0/c1/b0$d;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 3
    invoke-interface {v1, p1}, Le/a/m0/c1/b0$d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v1, p1, p2}, Le/a/m0/c1/b0$d;->c(Landroid/content/SharedPreferences$Editor;Ljava/util/Queue;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 1
    new-instance v0, Le/a/m0/c1/b0$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/m0/c1/b0$e;-><init>(Le/a/m0/c1/b0;Le/a/m0/c1/b0$a;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

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

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 6
    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    monitor-exit v0

    return p1

    .line 6
    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    monitor-exit v0

    return p1

    .line 6
    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    .line 6
    :cond_0
    monitor-exit v0

    return-wide p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p2, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object p2, p2, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v0, v0, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, v1, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Ljava/util/Set;

    monitor-exit v0

    return-object p1

    .line 6
    :cond_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->f:Ljava/util/WeakHashMap;

    sget-object v1, Le/a/m0/c1/b0;->l:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    iget-object v1, p0, Le/a/m0/c1/b0;->b:Ljava/io/File;

    iget-object v2, p0, Le/a/m0/c1/b0;->a:Ljava/io/File;

    .line 2
    iget-object v3, p0, Le/a/m0/c1/b0;->d:Le/a/m0/c1/b0$m;

    .line 3
    iget-object v4, v0, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 5
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".bak"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".temp"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 8
    sget-object v5, Le/a/m0/c1/b0;->j:Le/a/m0/c1/b0$r;

    invoke-virtual {v5}, Le/a/m0/c1/b0$r;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v9, 0x1

    if-le v5, v6, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    .line 9
    :cond_0
    sget v6, Le/a/m0/c1/b0;->g:I

    if-le v5, v6, :cond_1

    const/4 v5, 0x5

    goto :goto_0

    :cond_1
    move v5, v9

    .line 10
    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 11
    :try_start_0
    iget-object v1, v0, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 12
    invoke-interface {v3, v1}, Le/a/m0/c1/b0$m;->d(Ljava/util/Map;)[B

    move-result-object v1

    .line 13
    iget-object v3, v0, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v4, :cond_4

    if-eqz v1, :cond_3

    .line 14
    array-length v3, v1

    if-nez v3, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 16
    new-instance v4, Ljava/io/BufferedOutputStream;

    const v5, 0x8000

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 17
    invoke-virtual {v4, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 18
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 19
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_2

    .line 20
    :cond_3
    :goto_1
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 21
    :cond_4
    new-instance v1, Le/a/m0/c1/b0$k;

    const-string v3, "Collection modified during serialization. Reschedule is needed."

    invoke-direct {v1, v3}, Le/a/m0/c1/b0$k;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v9, 0x0

    .line 22
    instance-of v1, v1, Le/a/m0/c1/b0$k;

    :goto_2
    if-eqz v9, :cond_5

    .line 23
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    :cond_5
    if-eqz v9, :cond_6

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    :cond_6
    if-eqz v9, :cond_8

    .line 27
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    monitor-enter v0

    .line 29
    :try_start_1
    invoke-virtual {v8, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    .line 30
    iget-object v1, v0, Le/a/m0/c1/b0$o;->d:Ljava/lang/Thread;

    if-eqz v1, :cond_7

    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, v0, Le/a/m0/c1/b0$o;->d:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Le/a/m0/c1/b0$o;->d:Ljava/lang/Thread;

    .line 33
    :cond_7
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 34
    :cond_8
    :goto_3
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_9
    if-nez v9, :cond_a

    .line 36
    sget-object v0, Le/a/m0/c1/b0;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_a

    .line 37
    sget-object v1, Le/a/m0/c1/b0;->i:Le/a/m0/c1/b0$n;

    iget-object v1, v1, Le/a/m0/c1/b0$n;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 38
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_a
    if-eqz v9, :cond_b

    .line 39
    iget-object v0, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    monitor-enter v0

    .line 40
    :try_start_2
    iget-object v1, p0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 41
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    sget-object v0, Le/a/m0/c1/b0;->i:Le/a/m0/c1/b0$n;

    iget-object v0, v0, Le/a/m0/c1/b0$n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_4

    :catchall_2
    move-exception v1

    .line 43
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_b
    :goto_4
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
