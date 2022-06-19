.class public final Lu3/p0/j/f$d$c;
.super Lu3/p0/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/j/f$d;->g(ZLu3/p0/j/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p0/j/f$d;

.field public final synthetic f:Z

.field public final synthetic g:Lu3/p0/j/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f$d;ZLu3/p0/j/t;)V
    .locals 0

    iput-object p5, p0, Lu3/p0/j/f$d$c;->e:Lu3/p0/j/f$d;

    iput-boolean p6, p0, Lu3/p0/j/f$d$c;->f:Z

    iput-object p7, p0, Lu3/p0/j/f$d$c;->g:Lu3/p0/j/t;

    .line 1
    invoke-direct {p0, p3, p4}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-object v13, v1, Lu3/p0/j/f$d$c;->e:Lu3/p0/j/f$d;

    iget-boolean v8, v1, Lu3/p0/j/f$d$c;->f:Z

    iget-object v10, v1, Lu3/p0/j/f$d$c;->g:Lu3/p0/j/t;

    .line 2
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "settings"

    invoke-static {v10, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v14, Ls1/z/c/b0;

    invoke-direct {v14}, Ls1/z/c/b0;-><init>()V

    .line 4
    new-instance v15, Ls1/z/c/c0;

    invoke-direct {v15}, Ls1/z/c/c0;-><init>()V

    .line 5
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    .line 6
    iget-object v2, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 7
    iget-object v12, v2, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    .line 8
    monitor-enter v12

    .line 9
    :try_start_0
    iget-object v11, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 10
    :try_start_1
    iget-object v2, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 11
    iget-object v2, v2, Lu3/p0/j/f;->t:Lu3/p0/j/t;

    if-eqz v8, :cond_0

    .line 12
    iput-object v10, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v3, Lu3/p0/j/t;

    invoke-direct {v3}, Lu3/p0/j/t;-><init>()V

    .line 14
    invoke-virtual {v3, v2}, Lu3/p0/j/t;->b(Lu3/p0/j/t;)V

    .line 15
    invoke-virtual {v3, v10}, Lu3/p0/j/t;->b(Lu3/p0/j/t;)V

    .line 16
    iput-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 17
    :goto_0
    iget-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Lu3/p0/j/t;

    invoke-virtual {v3}, Lu3/p0/j/t;->a()I

    move-result v3

    int-to-long v3, v3

    .line 18
    invoke-virtual {v2}, Lu3/p0/j/t;->a()I

    move-result v2

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, v14, Ls1/z/c/b0;->a:J

    const-wide/16 v6, 0x0

    cmp-long v2, v3, v6

    const/4 v9, 0x0

    const/16 v16, 0x0

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 20
    iget-object v2, v2, Lu3/p0/j/f;->c:Ljava/util/Map;

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    iget-object v2, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 23
    iget-object v2, v2, Lu3/p0/j/f;->c:Ljava/util/Map;

    .line 24
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v9, [Lu3/p0/j/o;

    .line 25
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, [Lu3/p0/j/o;

    goto :goto_2

    :cond_2
    new-instance v0, Ls1/p;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    move-object/from16 v2, v16

    .line 26
    :goto_2
    iput-object v2, v15, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 27
    iget-object v2, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    iget-object v3, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Lu3/p0/j/t;

    .line 28
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "<set-?>"

    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object v3, v2, Lu3/p0/j/f;->t:Lu3/p0/j/t;

    .line 30
    iget-object v2, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 31
    iget-object v5, v2, Lu3/p0/j/f;->k:Lu3/p0/f/c;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 33
    iget-object v3, v3, Lu3/p0/j/f;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    .line 35
    new-instance v4, Lu3/p0/j/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v4

    move-object/from16 v3, v17

    move-object/from16 v19, v4

    move/from16 v4, v18

    move-object/from16 v20, v5

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object v7, v13

    move/from16 v17, v9

    move-object v9, v0

    move-object/from16 v18, v11

    move-object v11, v14

    move-object/from16 v21, v12

    move-object v12, v15

    :try_start_2
    invoke-direct/range {v2 .. v12}, Lu3/p0/j/g;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f$d;ZLs1/z/c/c0;Lu3/p0/j/t;Ls1/z/c/b0;Ls1/z/c/c0;)V

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 37
    :try_start_4
    iget-object v2, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 38
    iget-object v2, v2, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    .line 39
    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Lu3/p0/j/t;

    invoke-virtual {v2, v0}, Lu3/p0/j/p;->b(Lu3/p0/j/t;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v0

    .line 40
    :try_start_5
    iget-object v2, v13, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 41
    sget-object v3, Lu3/p0/j/b;->c:Lu3/p0/j/b;

    invoke-virtual {v2, v3, v3, v0}, Lu3/p0/j/f;->b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 42
    :goto_3
    monitor-exit v21

    .line 43
    iget-object v0, v15, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, [Lu3/p0/j/o;

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    .line 44
    array-length v2, v0

    move/from16 v9, v17

    :goto_4
    if-ge v9, v2, :cond_6

    aget-object v3, v0, v9

    .line 45
    monitor-enter v3

    .line 46
    :try_start_6
    iget-wide v6, v14, Ls1/z/c/b0;->a:J

    .line 47
    iget-wide v10, v3, Lu3/p0/j/o;->d:J

    add-long/2addr v10, v6

    iput-wide v10, v3, Lu3/p0/j/o;->d:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_4

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 49
    :cond_4
    monitor-exit v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 50
    :cond_5
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v16

    :cond_6
    const-wide/16 v2, -0x1

    return-wide v2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    .line 51
    :goto_5
    :try_start_7
    monitor-exit v18

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v21, v12

    .line 52
    :goto_6
    monitor-exit v21

    throw v0
.end method
