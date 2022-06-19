.class public Ln3/c0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/c0/o$e;,
        Ln3/c0/o$b;,
        Ln3/c0/o$c;,
        Ln3/c0/o$d;
    }
.end annotation


# static fields
.field public static final m:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ln3/c0/q;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile f:Z

.field public volatile g:Ln3/e0/a/f;

.field public h:Ln3/c0/o$b;

.field public final i:Ln3/c0/n;

.field public final j:Ln3/c/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c/a/b/b<",
            "Ln3/c0/o$c;",
            "Ln3/c0/o$d;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ln3/c0/p;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/c0/o;->m:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ln3/c0/q;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/c0/q;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ln3/c0/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-boolean v1, p0, Ln3/c0/o;->f:Z

    .line 4
    new-instance v0, Ln3/c/a/b/b;

    invoke-direct {v0}, Ln3/c/a/b/b;-><init>()V

    iput-object v0, p0, Ln3/c0/o;->j:Ln3/c/a/b/b;

    .line 5
    new-instance v0, Ln3/c0/o$a;

    invoke-direct {v0, p0}, Ln3/c0/o$a;-><init>(Ln3/c0/o;)V

    iput-object v0, p0, Ln3/c0/o;->l:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Ln3/c0/o;->d:Ln3/c0/q;

    .line 7
    new-instance v0, Ln3/c0/o$b;

    array-length v2, p4

    invoke-direct {v0, v2}, Ln3/c0/o$b;-><init>(I)V

    iput-object v0, p0, Ln3/c0/o;->h:Ln3/c0/o$b;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/c0/o;->a:Ljava/util/HashMap;

    .line 9
    iput-object p3, p0, Ln3/c0/o;->c:Ljava/util/Map;

    .line 10
    new-instance p3, Ln3/c0/n;

    invoke-direct {p3, p1}, Ln3/c0/n;-><init>(Ln3/c0/q;)V

    iput-object p3, p0, Ln3/c0/o;->i:Ln3/c0/n;

    .line 11
    array-length p1, p4

    .line 12
    new-array p3, p1, [Ljava/lang/String;

    iput-object p3, p0, Ln3/c0/o;->b:[Ljava/lang/String;

    :goto_0
    if-ge v1, p1, :cond_1

    .line 13
    aget-object p3, p4, v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 14
    iget-object v2, p0, Ln3/c0/o;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    aget-object v2, p4, v1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 16
    iget-object p3, p0, Ln3/c0/o;->b:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Ln3/c0/o;->b:[Ljava/lang/String;

    aput-object p3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 20
    iget-object v0, p0, Ln3/c0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 22
    iget-object p4, p0, Ln3/c0/o;->a:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ln3/c0/o$c;)V
    .locals 10

    .line 1
    iget-object v0, p1, Ln3/c0/o$c;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ln3/c0/o;->e([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    new-array v2, v1, [I

    .line 3
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 4
    iget-object v6, p0, Ln3/c0/o;->a:Ljava/util/HashMap;

    aget-object v7, v0, v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no table with name "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance v3, Ln3/c0/o$d;

    invoke-direct {v3, p1, v2, v0}, Ln3/c0/o$d;-><init>(Ln3/c0/o$c;[I[Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Ln3/c0/o;->j:Ln3/c/a/b/b;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v5, p0, Ln3/c0/o;->j:Ln3/c/a/b/b;

    invoke-virtual {v5, p1, v3}, Ln3/c/a/b/b;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/c0/o$d;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Ln3/c0/o;->h:Ln3/c0/o$b;

    .line 12
    monitor-enter p1

    move v0, v4

    :goto_1
    if-ge v4, v1, :cond_3

    .line 13
    :try_start_1
    aget v3, v2, v4

    .line 14
    iget-object v5, p1, Ln3/c0/o$b;->a:[J

    aget-wide v6, v5, v3

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    .line 15
    aput-wide v8, v5, v3

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 16
    iput-boolean v5, p1, Ln3/c0/o$b;->d:Z

    move v0, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0}, Ln3/c0/o;->h()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 19
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v2, p0, Ln3/c0/o;->i:Ln3/c0/n;

    .line 2
    invoke-virtual {p0, p1}, Ln3/c0/o;->e([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3
    array-length p1, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, v5, v0

    .line 4
    iget-object v3, p0, Ln3/c0/o;->a:Ljava/util/HashMap;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There is no table with name "

    invoke-static {p2, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Ln3/c0/z;

    iget-object v1, v2, Ln3/c0/n;->b:Ln3/c0/q;

    move-object v0, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ln3/c0/z;-><init>(Ln3/c0/q;Ln3/c0/n;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/c0/o;->d:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Ln3/c0/o;->f:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/c0/o;->d:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getOpenHelper()Ln3/e0/a/c;

    move-result-object v0

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    .line 4
    :cond_1
    iget-boolean v0, p0, Ln3/c0/o;->f:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public d(Ln3/c0/o$c;)V
    .locals 12

    .line 1
    iget-object v0, p0, Ln3/c0/o;->j:Ln3/c/a/b/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/c0/o;->j:Ln3/c/a/b/b;

    invoke-virtual {v1, p1}, Ln3/c/a/b/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/c0/o$d;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Ln3/c0/o;->h:Ln3/c0/o$b;

    iget-object p1, p1, Ln3/c0/o$d;->a:[I

    .line 5
    monitor-enter v0

    .line 6
    :try_start_1
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    .line 7
    iget-object v5, v0, Ln3/c0/o$b;->a:[J

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x1

    sub-long v10, v6, v8

    .line 8
    aput-wide v10, v5, v4

    cmp-long v4, v6, v8

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 9
    iput-boolean v5, v0, Ln3/c0/o$b;->d:Z

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {p0}, Ln3/c0/o;->h()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final e([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p0, Ln3/c0/o;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    iget-object v3, p0, Ln3/c0/o;->c:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public final f(Ln3/e0/a/b;I)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln3/c0/o;->b:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v2, Ln3/c0/o;->m:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    .line 6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "`"

    .line 7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "room_table_modification_trigger_"

    .line 8
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    .line 9
    invoke-static {v1, v0, v8, v6, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, " AFTER "

    const-string v8, " ON `"

    .line 10
    invoke-static {v1, v7, v6, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "` BEGIN UPDATE "

    const-string v7, "room_table_modification_log"

    const-string v8, " SET "

    const-string v9, "invalidated"

    .line 11
    invoke-static {v1, v6, v7, v8, v9}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, " = 1"

    const-string v7, " WHERE "

    const-string v8, "table_id"

    const-string v10, " = "

    .line 12
    invoke-static {v1, v6, v7, v8, v10}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    .line 14
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = 0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; END"

    .line 15
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Ln3/e0/a/b;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/c0/o;->b:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v1, Ln3/c0/o;->m:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "DROP TRIGGER IF EXISTS "

    .line 5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "`"

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "room_table_modification_trigger_"

    .line 7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    .line 8
    invoke-static {v0, p2, v7, v5, v6}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-interface {p1, v5}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/o;->d:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/c0/o;->d:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getOpenHelper()Ln3/e0/a/c;

    move-result-object v0

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln3/c0/o;->i(Ln3/e0/a/b;)V

    return-void
.end method

.method public i(Ln3/e0/a/b;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ln3/e0/a/b;->X1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Ln3/c0/o;->d:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Ln3/c0/o;->h:Ln3/c0/o$b;

    invoke-virtual {v1}, Ln3/c0/o$b;->a()[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 5
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 6
    :cond_1
    :try_start_3
    array-length v2, v1

    .line 7
    invoke-interface {p1}, Ln3/e0/a/b;->e2()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {p1}, Ln3/e0/a/b;->M()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 9
    :cond_2
    invoke-interface {p1}, Ln3/e0/a/b;->w()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    .line 10
    :try_start_4
    aget v5, v1, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {p0, p1, v4}, Ln3/c0/o;->g(Ln3/e0/a/b;I)V

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {p0, p1, v4}, Ln3/c0/o;->f(Ln3/e0/a/b;I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 13
    :cond_5
    invoke-interface {p1}, Ln3/e0/a/b;->b1()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 14
    :try_start_5
    invoke-interface {p1}, Ln3/e0/a/b;->f1()V

    .line 15
    iget-object v1, p0, Ln3/c0/o;->h:Ln3/c0/o$b;

    .line 16
    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    :try_start_6
    iput-boolean v3, v1, Ln3/c0/o$b;->e:Z

    .line 18
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 19
    :try_start_7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 20
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1

    :catchall_2
    move-exception v1

    .line 21
    invoke-interface {p1}, Ln3/e0/a/b;->f1()V

    .line 22
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 23
    :goto_4
    :try_start_a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    throw p1
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    return-void
.end method
