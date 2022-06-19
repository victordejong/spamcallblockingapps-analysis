.class public Le/f/a/n/o/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/g;
.implements Le/f/a/n/n/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/o/g;",
        "Le/f/a/n/n/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/o/g$a;

.field public final b:Le/f/a/n/o/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/h<",
            "*>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Le/f/a/n/f;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/n/p/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public g:I

.field public volatile h:Le/f/a/n/p/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Ljava/io/File;

.field public j:Le/f/a/n/o/y;


# direct methods
.method public constructor <init>(Le/f/a/n/o/h;Le/f/a/n/o/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/h<",
            "*>;",
            "Le/f/a/n/o/g$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le/f/a/n/o/x;->d:I

    .line 3
    iput-object p1, p0, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 4
    iput-object p2, p0, Le/f/a/n/o/x;->a:Le/f/a/n/o/g$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    invoke-virtual {v0}, Le/f/a/n/o/h;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 3
    :cond_0
    iget-object v2, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 4
    iget-object v4, v2, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 5
    iget-object v4, v4, Le/f/a/e;->b:Le/f/a/g;

    .line 6
    iget-object v5, v2, Le/f/a/n/o/h;->d:Ljava/lang/Object;

    .line 7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v2, Le/f/a/n/o/h;->g:Ljava/lang/Class;

    iget-object v2, v2, Le/f/a/n/o/h;->k:Ljava/lang/Class;

    .line 8
    iget-object v7, v4, Le/f/a/g;->h:Le/f/a/q/d;

    .line 9
    iget-object v8, v7, Le/f/a/q/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/f/a/t/i;

    if-nez v8, :cond_1

    .line 10
    new-instance v8, Le/f/a/t/i;

    invoke-direct {v8, v5, v6, v2}, Le/f/a/t/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 11
    :cond_1
    iput-object v5, v8, Le/f/a/t/i;->a:Ljava/lang/Class;

    .line 12
    iput-object v6, v8, Le/f/a/t/i;->b:Ljava/lang/Class;

    .line 13
    iput-object v2, v8, Le/f/a/t/i;->c:Ljava/lang/Class;

    .line 14
    :goto_0
    iget-object v10, v7, Le/f/a/q/d;->b:Ln3/g/a;

    monitor-enter v10

    .line 15
    :try_start_0
    iget-object v11, v7, Le/f/a/q/d;->b:Ln3/g/a;

    .line 16
    invoke-virtual {v11, v8, v9}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 17
    check-cast v11, Ljava/util/List;

    .line 18
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    iget-object v7, v7, Le/f/a/q/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v11, :cond_5

    .line 20
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v7, v4, Le/f/a/g;->a:Le/f/a/n/p/p;

    .line 22
    monitor-enter v7

    .line 23
    :try_start_1
    iget-object v8, v7, Le/f/a/n/p/p;->a:Le/f/a/n/p/r;

    invoke-virtual {v8, v5}, Le/f/a/n/p/r;->e(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    .line 24
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 25
    iget-object v10, v4, Le/f/a/g;->c:Le/f/a/q/e;

    .line 26
    invoke-virtual {v10, v8, v6}, Le/f/a/q/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 27
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 28
    iget-object v12, v4, Le/f/a/g;->f:Le/f/a/n/q/i/f;

    .line 29
    invoke-virtual {v12, v10, v2}, Le/f/a/n/q/i/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    .line 30
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 31
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_4
    iget-object v4, v4, Le/f/a/g;->h:Le/f/a/q/d;

    .line 33
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 34
    iget-object v8, v4, Le/f/a/q/d;->b:Ln3/g/a;

    monitor-enter v8

    .line 35
    :try_start_2
    iget-object v4, v4, Le/f/a/q/d;->b:Ln3/g/a;

    new-instance v10, Le/f/a/t/i;

    invoke-direct {v10, v5, v6, v2}, Le/f/a/t/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v7}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 37
    monitor-exit v7

    throw v0

    .line 38
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 39
    const-class v0, Ljava/io/File;

    iget-object v2, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 40
    iget-object v2, v2, Le/f/a/n/o/h;->k:Ljava/lang/Class;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to find any load path from "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 43
    iget-object v3, v3, Le/f/a/n/o/h;->d:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 45
    iget-object v3, v3, Le/f/a/n/o/h;->k:Ljava/lang/Class;

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_7
    :goto_3
    iget-object v2, v1, Le/f/a/n/o/x;->f:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    .line 48
    iget v5, v1, Le/f/a/n/o/x;->g:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    if-nez v2, :cond_9

    goto :goto_7

    .line 49
    :cond_9
    iput-object v9, v1, Le/f/a/n/o/x;->h:Le/f/a/n/p/n$a;

    move v0, v3

    :cond_a
    :goto_5
    if-nez v0, :cond_c

    .line 50
    iget v2, v1, Le/f/a/n/o/x;->g:I

    iget-object v5, v1, Le/f/a/n/o/x;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    move v2, v4

    goto :goto_6

    :cond_b
    move v2, v3

    :goto_6
    if-eqz v2, :cond_c

    .line 51
    iget-object v2, v1, Le/f/a/n/o/x;->f:Ljava/util/List;

    iget v5, v1, Le/f/a/n/o/x;->g:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Le/f/a/n/o/x;->g:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/n/p/n;

    .line 52
    iget-object v5, v1, Le/f/a/n/o/x;->i:Ljava/io/File;

    iget-object v6, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 53
    iget v7, v6, Le/f/a/n/o/h;->e:I

    .line 54
    iget v8, v6, Le/f/a/n/o/h;->f:I

    .line 55
    iget-object v6, v6, Le/f/a/n/o/h;->i:Le/f/a/n/i;

    .line 56
    invoke-interface {v2, v5, v7, v8, v6}, Le/f/a/n/p/n;->a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;

    move-result-object v2

    iput-object v2, v1, Le/f/a/n/o/x;->h:Le/f/a/n/p/n$a;

    .line 57
    iget-object v2, v1, Le/f/a/n/o/x;->h:Le/f/a/n/p/n$a;

    if-eqz v2, :cond_a

    iget-object v2, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    iget-object v5, v1, Le/f/a/n/o/x;->h:Le/f/a/n/p/n$a;

    iget-object v5, v5, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v5}, Le/f/a/n/n/d;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Le/f/a/n/o/h;->g(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 58
    iget-object v0, v1, Le/f/a/n/o/x;->h:Le/f/a/n/p/n$a;

    iget-object v0, v0, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    iget-object v2, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 59
    iget-object v2, v2, Le/f/a/n/o/h;->o:Le/f/a/f;

    .line 60
    invoke-interface {v0, v2, v1}, Le/f/a/n/n/d;->d(Le/f/a/f;Le/f/a/n/n/d$a;)V

    move v0, v4

    goto :goto_5

    :cond_c
    return v0

    .line 61
    :cond_d
    :goto_7
    iget v2, v1, Le/f/a/n/o/x;->d:I

    add-int/2addr v2, v4

    iput v2, v1, Le/f/a/n/o/x;->d:I

    .line 62
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_f

    .line 63
    iget v2, v1, Le/f/a/n/o/x;->c:I

    add-int/2addr v2, v4

    iput v2, v1, Le/f/a/n/o/x;->c:I

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_e

    return v3

    .line 65
    :cond_e
    iput v3, v1, Le/f/a/n/o/x;->d:I

    .line 66
    :cond_f
    iget v2, v1, Le/f/a/n/o/x;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/n/f;

    .line 67
    iget v4, v1, Le/f/a/n/o/x;->d:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 68
    iget-object v5, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    invoke-virtual {v5, v4}, Le/f/a/n/o/h;->f(Ljava/lang/Class;)Le/f/a/n/m;

    move-result-object v18

    .line 69
    new-instance v5, Le/f/a/n/o/y;

    iget-object v6, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 70
    iget-object v7, v6, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 71
    iget-object v13, v7, Le/f/a/e;->a:Le/f/a/n/o/b0/b;

    .line 72
    iget-object v15, v6, Le/f/a/n/o/h;->n:Le/f/a/n/f;

    .line 73
    iget v7, v6, Le/f/a/n/o/h;->e:I

    .line 74
    iget v8, v6, Le/f/a/n/o/h;->f:I

    .line 75
    iget-object v10, v6, Le/f/a/n/o/h;->i:Le/f/a/n/i;

    move-object v12, v5

    move-object v14, v2

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    .line 76
    invoke-direct/range {v12 .. v20}, Le/f/a/n/o/y;-><init>(Le/f/a/n/o/b0/b;Le/f/a/n/f;Le/f/a/n/f;IILe/f/a/n/m;Ljava/lang/Class;Le/f/a/n/i;)V

    iput-object v5, v1, Le/f/a/n/o/x;->j:Le/f/a/n/o/y;

    .line 77
    invoke-virtual {v6}, Le/f/a/n/o/h;->b()Le/f/a/n/o/c0/a;

    move-result-object v4

    iget-object v5, v1, Le/f/a/n/o/x;->j:Le/f/a/n/o/y;

    invoke-interface {v4, v5}, Le/f/a/n/o/c0/a;->b(Le/f/a/n/f;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Le/f/a/n/o/x;->i:Ljava/io/File;

    if-eqz v4, :cond_7

    .line 78
    iput-object v2, v1, Le/f/a/n/o/x;->e:Le/f/a/n/f;

    .line 79
    iget-object v2, v1, Le/f/a/n/o/x;->b:Le/f/a/n/o/h;

    .line 80
    iget-object v2, v2, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 81
    iget-object v2, v2, Le/f/a/e;->b:Le/f/a/g;

    .line 82
    invoke-virtual {v2, v4}, Le/f/a/g;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 83
    iput-object v2, v1, Le/f/a/n/o/x;->f:Ljava/util/List;

    .line 84
    iput v3, v1, Le/f/a/n/o/x;->g:I

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    .line 85
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/o/x;->h:Le/f/a/n/p/n$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    invoke-interface {v0}, Le/f/a/n/n/d;->cancel()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/f/a/n/o/x;->a:Le/f/a/n/o/g$a;

    iget-object v1, p0, Le/f/a/n/o/x;->e:Le/f/a/n/f;

    iget-object v2, p0, Le/f/a/n/o/x;->h:Le/f/a/n/p/n$a;

    iget-object v3, v2, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    sget-object v4, Le/f/a/n/a;->d:Le/f/a/n/a;

    iget-object v5, p0, Le/f/a/n/o/x;->j:Le/f/a/n/o/y;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Le/f/a/n/o/g$a;->h(Le/f/a/n/f;Ljava/lang/Object;Le/f/a/n/n/d;Le/f/a/n/a;Le/f/a/n/f;)V

    return-void
.end method

.method public f(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/n/o/x;->a:Le/f/a/n/o/g$a;

    iget-object v1, p0, Le/f/a/n/o/x;->j:Le/f/a/n/o/y;

    iget-object v2, p0, Le/f/a/n/o/x;->h:Le/f/a/n/p/n$a;

    iget-object v2, v2, Le/f/a/n/p/n$a;->c:Le/f/a/n/n/d;

    sget-object v3, Le/f/a/n/a;->d:Le/f/a/n/a;

    invoke-interface {v0, v1, p1, v2, v3}, Le/f/a/n/o/g$a;->c(Le/f/a/n/f;Ljava/lang/Exception;Le/f/a/n/n/d;Le/f/a/n/a;)V

    return-void
.end method
