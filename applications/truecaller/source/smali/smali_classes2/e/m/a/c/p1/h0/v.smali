.class public final Le/m/a/c/p1/h0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/h0/c;


# static fields
.field public static final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Le/m/a/c/p1/h0/h;

.field public final c:Le/m/a/c/p1/h0/o;

.field public final d:Le/m/a/c/p1/h0/j;

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Le/m/a/c/p1/h0/c$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Random;

.field public final g:Z

.field public h:J

.field public i:J

.field public j:Le/m/a/c/p1/h0/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Le/m/a/c/p1/h0/v;->k:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Le/m/a/c/p1/h0/h;Le/m/a/c/d1/b;)V
    .locals 7

    .line 1
    new-instance v6, Le/m/a/c/p1/h0/o;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Le/m/a/c/p1/h0/o;-><init>(Le/m/a/c/d1/b;Ljava/io/File;[BZZ)V

    if-eqz p3, :cond_0

    new-instance v0, Le/m/a/c/p1/h0/j;

    invoke-direct {v0, p3}, Le/m/a/c/p1/h0/j;-><init>(Le/m/a/c/d1/b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class p3, Le/m/a/c/p1/h0/v;

    monitor-enter p3

    .line 4
    :try_start_0
    sget-object v1, Le/m/a/c/p1/h0/v;->k:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    if-eqz v1, :cond_1

    .line 5
    iput-object p1, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    .line 6
    iput-object p2, p0, Le/m/a/c/p1/h0/v;->b:Le/m/a/c/p1/h0/h;

    .line 7
    iput-object v6, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 8
    iput-object v0, p0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/m/a/c/p1/h0/v;->e:Ljava/util/HashMap;

    .line 10
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Le/m/a/c/p1/h0/v;->f:Ljava/util/Random;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Le/m/a/c/p1/h0/v;->g:Z

    const-wide/16 p1, -0x1

    .line 12
    iput-wide p1, p0, Le/m/a/c/p1/h0/v;->h:J

    .line 13
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 14
    new-instance p2, Le/m/a/c/p1/h0/u;

    const-string p3, "SimpleCache.initialize()"

    invoke-direct {p2, p0, p3, p1}, Le/m/a/c/p1/h0/u;-><init>(Le/m/a/c/p1/h0/v;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 16
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 17
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p3

    throw p1
.end method

.method public static l(Le/m/a/c/p1/h0/v;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to create cache directory: "

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Le/m/a/c/p1/h0/c$a;

    invoke-direct {v1, v0}, Le/m/a/c/p1/h0/c$a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Le/m/a/c/p1/h0/v;->j:Le/m/a/c/p1/h0/c$a;

    goto/16 :goto_5

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Failed to list cache directory files: "

    .line 6
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Le/m/a/c/p1/h0/c$a;

    invoke-direct {v1, v0}, Le/m/a/c/p1/h0/c$a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Le/m/a/c/p1/h0/v;->j:Le/m/a/c/p1/h0/c$a;

    goto/16 :goto_5

    .line 8
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, -0x1

    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".uid"

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x2e

    .line 11
    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed UID file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-wide v6, v4

    .line 14
    :goto_1
    iput-wide v6, p0, Le/m/a/c/p1/h0/v;->h:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_4

    .line 15
    :try_start_1
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-static {v1}, Le/m/a/c/p1/h0/v;->o(Ljava/io/File;)J

    move-result-wide v3

    iput-wide v3, p0, Le/m/a/c/p1/h0/v;->h:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to create cache UID: "

    .line 16
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    new-instance v2, Le/m/a/c/p1/h0/c$a;

    invoke-direct {v2, v1, v0}, Le/m/a/c/p1/h0/c$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Le/m/a/c/p1/h0/v;->j:Le/m/a/c/p1/h0/c$a;

    goto :goto_5

    .line 19
    :cond_4
    :goto_2
    :try_start_2
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    iget-wide v3, p0, Le/m/a/c/p1/h0/v;->h:J

    invoke-virtual {v1, v3, v4}, Le/m/a/c/p1/h0/o;->e(J)V

    .line 20
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 21
    iget-wide v4, p0, Le/m/a/c/p1/h0/v;->h:J

    invoke-virtual {v1, v4, v5}, Le/m/a/c/p1/h0/j;->b(J)V

    .line 22
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;

    invoke-virtual {v1}, Le/m/a/c/p1/h0/j;->a()Ljava/util/Map;

    move-result-object v1

    .line 23
    iget-object v4, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {p0, v4, v3, v0, v1}, Le/m/a/c/p1/h0/v;->q(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 24
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    check-cast v1, Ljava/util/HashMap;

    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/a/c/p1/h0/j;->c(Ljava/util/Set;)V

    goto :goto_3

    .line 25
    :cond_5
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v0, v4}, Le/m/a/c/p1/h0/v;->q(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 26
    :goto_3
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 27
    iget-object v1, v0, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 28
    iget-object v4, v0, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_4
    if-ge v2, v1, :cond_6

    .line 29
    aget-object v4, v3, v2

    .line 30
    invoke-virtual {v0, v4}, Le/m/a/c/p1/h0/o;->f(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 31
    :cond_6
    :try_start_4
    iget-object p0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    invoke-virtual {p0}, Le/m/a/c/p1/h0/o;->g()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    const-string v0, "Storing index file failed"

    .line 32
    invoke-static {v0, p0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v1, "Failed to initialize cache indices: "

    .line 33
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 35
    new-instance v2, Le/m/a/c/p1/h0/c$a;

    invoke-direct {v2, v1, v0}, Le/m/a/c/p1/h0/c$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Le/m/a/c/p1/h0/v;->j:Le/m/a/c/p1/h0/c$a;

    :goto_5
    return-void
.end method

.method public static o(Ljava/io/File;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    .line 3
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    const-string v4, ".uid"

    invoke-static {v2, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create UID file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Le/m/a/c/p1/h0/q;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 3
    iget-object v0, v0, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/p1/h0/n;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Le/m/a/c/p1/h0/s;->c:Le/m/a/c/p1/h0/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Le/m/a/c/p1/h0/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h0/c$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    invoke-virtual {p0}, Le/m/a/c/p1/h0/v;->n()V

    .line 3
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 4
    invoke-virtual {v1, p1}, Le/m/a/c/p1/h0/o;->d(Ljava/lang/String;)Le/m/a/c/p1/h0/n;

    move-result-object p1

    .line 5
    iget-object v2, p1, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    .line 6
    invoke-virtual {v2, p2}, Le/m/a/c/p1/h0/s;->a(Le/m/a/c/p1/h0/r;)Le/m/a/c/p1/h0/s;

    move-result-object p2

    iput-object p2, p1, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    .line 7
    invoke-virtual {p2, v2}, Le/m/a/c/p1/h0/s;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, v1, Le/m/a/c/p1/h0/o;->e:Le/m/a/c/p1/h0/o$c;

    invoke-interface {p2, p1}, Le/m/a/c/p1/h0/o$c;->g(Le/m/a/c/p1/h0/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    :try_start_1
    iget-object p1, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    invoke-virtual {p1}, Le/m/a/c/p1/h0/o;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    new-instance p2, Le/m/a/c/p1/h0/c$a;

    invoke-direct {p2, p1}, Le/m/a/c/p1/h0/c$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Le/m/a/c/p1/h0/l;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    invoke-virtual {p0, p1}, Le/m/a/c/p1/h0/v;->r(Le/m/a/c/p1/h0/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;J)Le/m/a/c/p1/h0/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Le/m/a/c/p1/h0/c$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    invoke-virtual {p0}, Le/m/a/c/p1/h0/v;->n()V

    .line 3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Le/m/a/c/p1/h0/v;->i(Ljava/lang/String;J)Le/m/a/c/p1/h0/l;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h0/c$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    invoke-virtual {p0}, Le/m/a/c/p1/h0/v;->n()V

    .line 3
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 4
    iget-object v0, v0, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/p1/h0/n;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, v0, Le/m/a/c/p1/h0/n;->e:Z

    .line 7
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 8
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10
    invoke-virtual {p0}, Le/m/a/c/p1/h0/v;->s()V

    .line 11
    :cond_0
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->b:Le/m/a/c/p1/h0/h;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Le/m/a/c/p1/h0/h;->b(Le/m/a/c/p1/h0/c;Ljava/lang/String;JJ)V

    .line 12
    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Le/m/a/c/p1/h0/v;->a:Ljava/io/File;

    iget-object p4, p0, Le/m/a/c/p1/h0/v;->f:Ljava/util/Random;

    const/16 p5, 0xa

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 15
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 16
    iget v3, v0, Le/m/a/c/p1/h0/n;->a:I

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Le/m/a/c/p1/h0/w;->d(Ljava/io/File;IJJ)Ljava/io/File;

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

.method public declared-synchronized f(Ljava/lang/String;JJ)J
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 3
    iget-object v0, v0, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/p1/h0/n;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3, p4, p5}, Le/m/a/c/p1/h0/n;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    neg-long p1, p4

    :goto_0
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g()J
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-wide v0, p0, Le/m/a/c/p1/h0/v;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Le/m/a/c/p1/h0/l;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    iget-object p1, p1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Le/m/a/c/p1/h0/o;->c(Ljava/lang/String;)Le/m/a/c/p1/h0/n;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v0, p1, Le/m/a/c/p1/h0/n;->e:Z

    .line 5
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Le/m/a/c/p1/h0/n;->e:Z

    .line 7
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    iget-object p1, p1, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Le/m/a/c/p1/h0/o;->f(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(Ljava/lang/String;J)Le/m/a/c/p1/h0/l;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h0/c$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    invoke-virtual {p0}, Le/m/a/c/p1/h0/v;->n()V

    .line 3
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 4
    iget-object v1, v1, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/p1/h0/n;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Le/m/a/c/p1/h0/w;

    const-wide/16 v6, -0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v10}, Le/m/a/c/p1/h0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v1, p2, p3}, Le/m/a/c/p1/h0/n;->b(J)Le/m/a/c/p1/h0/w;

    move-result-object v2

    .line 7
    iget-boolean v3, v2, Le/m/a/c/p1/h0/l;->d:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Le/m/a/c/p1/h0/l;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, v2, Le/m/a/c/p1/h0/l;->c:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p0}, Le/m/a/c/p1/h0/v;->s()V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 9
    :goto_1
    iget-boolean p2, v1, Le/m/a/c/p1/h0/l;->d:Z

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0, p1, v1}, Le/m/a/c/p1/h0/v;->t(Ljava/lang/String;Le/m/a/c/p1/h0/w;)Le/m/a/c/p1/h0/w;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 11
    :cond_2
    :try_start_1
    iget-object p2, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    invoke-virtual {p2, p1}, Le/m/a/c/p1/h0/o;->d(Ljava/lang/String;)Le/m/a/c/p1/h0/n;

    move-result-object p1

    .line 12
    iget-boolean p2, p1, Le/m/a/c/p1/h0/n;->e:Z

    if-nez p2, :cond_3

    .line 13
    iput-boolean v0, p1, Le/m/a/c/p1/h0/n;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-object v1

    :cond_3
    const/4 p1, 0x0

    .line 15
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(Ljava/io/File;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h0/c$a;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    iget-object v6, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p1

    move-wide v2, p2

    .line 7
    invoke-static/range {v1 .. v6}, Le/m/a/c/p1/h0/w;->c(Ljava/io/File;JJLe/m/a/c/p1/h0/o;)Le/m/a/c/p1/h0/w;

    move-result-object p2

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    iget-object v1, p2, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {p3, v1}, Le/m/a/c/p1/h0/o;->c(Ljava/lang/String;)Le/m/a/c/p1/h0/n;

    move-result-object p3

    .line 10
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-boolean v1, p3, Le/m/a/c/p1/h0/n;->e:Z

    .line 12
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 13
    iget-object p3, p3, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    .line 14
    invoke-static {p3}, Le/m/a/c/p1/h0/p;->a(Le/m/a/c/p1/h0/q;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-eqz p3, :cond_3

    .line 15
    iget-wide v3, p2, Le/m/a/c/p1/h0/l;->b:J

    iget-wide v5, p2, Le/m/a/c/p1/h0/l;->c:J

    add-long/2addr v3, v5

    cmp-long p3, v3, v1

    if-gtz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 16
    :cond_3
    iget-object p3, p0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;

    if-eqz p3, :cond_4

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;

    iget-wide v2, p2, Le/m/a/c/p1/h0/l;->c:J

    iget-wide v4, p2, Le/m/a/c/p1/h0/l;->f:J

    invoke-virtual/range {v0 .. v5}, Le/m/a/c/p1/h0/j;->d(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    :try_start_4
    new-instance p2, Le/m/a/c/p1/h0/c$a;

    invoke-direct {p2, p1}, Le/m/a/c/p1/h0/c$a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 20
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Le/m/a/c/p1/h0/v;->m(Le/m/a/c/p1/h0/w;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :try_start_5
    iget-object p1, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    invoke-virtual {p1}, Le/m/a/c/p1/h0/o;->g()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 22
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 24
    :try_start_7
    new-instance p2, Le/m/a/c/p1/h0/c$a;

    invoke-direct {p2, p1}, Le/m/a/c/p1/h0/c$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Le/m/a/c/p1/h0/l;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 3
    iget-object v0, v0, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/p1/h0/n;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p1, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    .line 6
    iget-object p1, p1, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    .line 7
    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m(Le/m/a/c/p1/h0/w;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    iget-object v1, p1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/a/c/p1/h0/o;->d(Ljava/lang/String;)Le/m/a/c/p1/h0/n;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3
    iget-wide v0, p0, Le/m/a/c/p1/h0/v;->i:J

    iget-wide v2, p1, Le/m/a/c/p1/h0/l;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Le/m/a/c/p1/h0/v;->i:J

    .line 4
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->e:Ljava/util/HashMap;

    iget-object v1, p1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/p1/h0/c$b;

    invoke-interface {v2, p0, p1}, Le/m/a/c/p1/h0/c$b;->a(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->b:Le/m/a/c/p1/h0/h;

    invoke-interface {v0, p0, p1}, Le/m/a/c/p1/h0/c$b;->a(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;)V

    return-void
.end method

.method public declared-synchronized n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/p1/h0/c$a;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->j:Le/m/a/c/p1/h0/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 3
    iget-object v1, v1, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/a/c/p1/h0/i;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_8

    .line 1
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_7

    aget-object v8, p3, v1

    .line 3
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/16 v3, 0x2e

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 5
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v8, v0, v2, p4}, Le/m/a/c/p1/h0/v;->q(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "cached_content_index.exi"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".uid"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p4, :cond_3

    .line 8
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/p1/h0/i;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 9
    iget-wide v3, v2, Le/m/a/c/p1/h0/i;->a:J

    .line 10
    iget-wide v5, v2, Le/m/a/c/p1/h0/i;->b:J

    .line 11
    :cond_4
    iget-object v7, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    move-object v2, v8

    .line 12
    invoke-static/range {v2 .. v7}, Le/m/a/c/p1/h0/w;->c(Ljava/io/File;JJLe/m/a/c/p1/h0/o;)Le/m/a/c/p1/h0/w;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p0, v2}, Le/m/a/c/p1/h0/v;->m(Le/m/a/c/p1/h0/w;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_3
    if-nez p2, :cond_9

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method public final r(Le/m/a/c/p1/h0/l;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    iget-object v1, p1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/a/c/p1/h0/o;->c(Ljava/lang/String;)Le/m/a/c/p1/h0/n;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, v0, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Le/m/a/c/p1/h0/l;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    iget-wide v4, p0, Le/m/a/c/p1/h0/v;->i:J

    iget-wide v6, p1, Le/m/a/c/p1/h0/l;->c:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Le/m/a/c/p1/h0/v;->i:J

    .line 5
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p1, Le/m/a/c/p1/h0/l;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    :try_start_0
    iget-object v4, p0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;

    .line 8
    iget-object v5, v4, Le/m/a/c/p1/h0/j;->b:Ljava/lang/String;

    .line 9
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    iget-object v5, v4, Le/m/a/c/p1/h0/j;->a:Le/m/a/c/d1/b;

    invoke-interface {v5}, Le/m/a/c/d1/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 11
    iget-object v4, v4, Le/m/a/c/p1/h0/j;->b:Ljava/lang/String;

    const-string v6, "name = ?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {v5, v4, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    new-instance v2, Le/m/a/c/d1/a;

    invoke-direct {v2, v1}, Le/m/a/c/d1/a;-><init>(Landroid/database/SQLException;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 13
    :catch_1
    :cond_2
    :goto_1
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    iget-object v0, v0, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/m/a/c/p1/h0/o;->f(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->e:Ljava/util/HashMap;

    iget-object v1, p1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/p1/h0/c$b;

    invoke-interface {v2, p0, p1}, Le/m/a/c/p1/h0/c$b;->d(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, p0, Le/m/a/c/p1/h0/v;->b:Le/m/a/c/p1/h0/h;

    invoke-interface {v0, p0, p1}, Le/m/a/c/p1/h0/c$b;->d(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final s()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 3
    iget-object v1, v1, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/p1/h0/n;

    .line 5
    iget-object v2, v2, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    .line 6
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/p1/h0/l;

    .line 7
    iget-object v4, v3, Le/m/a/c/p1/h0/l;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v3, Le/m/a/c/p1/h0/l;->c:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/p1/h0/l;

    invoke-virtual {p0, v2}, Le/m/a/c/p1/h0/v;->r(Le/m/a/c/p1/h0/l;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final t(Ljava/lang/String;Le/m/a/c/p1/h0/w;)Le/m/a/c/p1/h0/w;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Le/m/a/c/p1/h0/v;->g:Z

    if-nez v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, v1, Le/m/a/c/p1/h0/l;->e:Ljava/io/File;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-wide v5, v1, Le/m/a/c/p1/h0/l;->c:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v2, 0x0

    .line 7
    iget-object v3, v0, Le/m/a/c/p1/h0/v;->d:Le/m/a/c/p1/h0/j;

    if-eqz v3, :cond_1

    move-wide v7, v13

    .line 8
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Le/m/a/c/p1/h0/j;->d(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 9
    :catch_0
    :goto_0
    iget-object v3, v0, Le/m/a/c/p1/h0/v;->c:Le/m/a/c/p1/h0/o;

    .line 10
    iget-object v3, v3, Le/m/a/c/p1/h0/o;->a:Ljava/util/HashMap;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/p1/h0/n;

    .line 11
    iget-object v4, v3, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    invoke-virtual {v4, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ln3/g0/y;->x(Z)V

    .line 12
    iget-object v4, v1, Le/m/a/c/p1/h0/l;->e:Ljava/io/File;

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 14
    iget-wide v9, v1, Le/m/a/c/p1/h0/l;->b:J

    .line 15
    iget v8, v3, Le/m/a/c/p1/h0/n;->a:I

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Le/m/a/c/p1/h0/w;->d(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v2

    .line 16
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v15, v2

    goto :goto_1

    .line 17
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    move-object v15, v4

    .line 18
    :goto_1
    iget-boolean v2, v1, Le/m/a/c/p1/h0/l;->d:Z

    invoke-static {v2}, Ln3/g0/y;->x(Z)V

    .line 19
    new-instance v2, Le/m/a/c/p1/h0/w;

    iget-object v8, v1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    iget-wide v9, v1, Le/m/a/c/p1/h0/l;->b:J

    iget-wide v11, v1, Le/m/a/c/p1/h0/l;->c:J

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Le/m/a/c/p1/h0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 20
    iget-object v3, v3, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v3, v0, Le/m/a/c/p1/h0/v;->e:Ljava/util/HashMap;

    iget-object v4, v1, Le/m/a/c/p1/h0/l;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    .line 23
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/p1/h0/c$b;

    invoke-interface {v5, v0, v1, v2}, Le/m/a/c/p1/h0/c$b;->e(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;Le/m/a/c/p1/h0/l;)V

    goto :goto_2

    .line 24
    :cond_4
    iget-object v3, v0, Le/m/a/c/p1/h0/v;->b:Le/m/a/c/p1/h0/h;

    invoke-interface {v3, v0, v1, v2}, Le/m/a/c/p1/h0/c$b;->e(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/h0/l;Le/m/a/c/p1/h0/l;)V

    return-object v2
.end method
