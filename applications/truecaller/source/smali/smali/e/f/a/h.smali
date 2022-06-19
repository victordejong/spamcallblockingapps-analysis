.class public Le/f/a/h;
.super Le/f/a/r/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Le/f/a/r/a<",
        "Le/f/a/h<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Object<",
        "Le/f/a/h<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public final A:Landroid/content/Context;

.field public final B:Le/f/a/i;

.field public final C:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final D:Le/f/a/e;

.field public E:Le/f/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/j<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public J:Ljava/lang/Object;

.field public K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/r/g<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field public L:Le/f/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public M:Z

.field public N:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/f/a/r/h;

    invoke-direct {v0}, Le/f/a/r/h;-><init>()V

    sget-object v1, Le/f/a/n/o/k;->c:Le/f/a/n/o/k;

    .line 2
    invoke-virtual {v0, v1}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    sget-object v1, Le/f/a/f;->d:Le/f/a/f;

    .line 3
    invoke-virtual {v0, v1}, Le/f/a/r/a;->w(Le/f/a/f;)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    return-void
.end method

.method public constructor <init>(Le/f/a/c;Le/f/a/i;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/c;",
            "Le/f/a/i;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/f/a/r/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/f/a/h;->M:Z

    .line 3
    iput-object p2, p0, Le/f/a/h;->B:Le/f/a/i;

    .line 4
    iput-object p3, p0, Le/f/a/h;->C:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Le/f/a/h;->A:Landroid/content/Context;

    .line 6
    iget-object p4, p2, Le/f/a/i;->a:Le/f/a/c;

    .line 7
    iget-object p4, p4, Le/f/a/c;->d:Le/f/a/e;

    .line 8
    iget-object v0, p4, Le/f/a/e;->f:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/j;

    if-nez v0, :cond_1

    .line 9
    iget-object p4, p4, Le/f/a/e;->f:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/j;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 12
    sget-object v0, Le/f/a/e;->k:Le/f/a/j;

    .line 13
    :cond_2
    iput-object v0, p0, Le/f/a/h;->E:Le/f/a/j;

    .line 14
    iget-object p1, p1, Le/f/a/c;->d:Le/f/a/e;

    .line 15
    iput-object p1, p0, Le/f/a/h;->D:Le/f/a/e;

    .line 16
    iget-object p1, p2, Le/f/a/i;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/f/a/r/g;

    .line 18
    invoke-virtual {p0, p3}, Le/f/a/h;->H(Le/f/a/r/g;)Le/f/a/h;

    goto :goto_1

    .line 19
    :cond_3
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object p1, p2, Le/f/a/i;->k:Le/f/a/r/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 21
    invoke-virtual {p0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    return-void

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public H(Le/f/a/r/g;)Le/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/g<",
            "TTranscodeType;>;)",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Le/f/a/h;->K:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/f/a/h;->K:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/a/h;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public J(Le/f/a/r/a;)Le/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/a<",
            "*>;)",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Le/f/a/r/a;->a(Le/f/a/r/a;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    return-object p1
.end method

.method public final K(Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/e;Le/f/a/j;Le/f/a/f;IILe/f/a/r/a;Ljava/util/concurrent/Executor;)Le/f/a/r/d;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "TTranscodeType;>;",
            "Le/f/a/r/g<",
            "TTranscodeType;>;",
            "Le/f/a/r/e;",
            "Le/f/a/j<",
            "*-TTranscodeType;>;",
            "Le/f/a/f;",
            "II",
            "Le/f/a/r/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Le/f/a/r/d;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p9

    .line 1
    iget-object v0, v11, Le/f/a/h;->L:Le/f/a/h;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/f/a/r/b;

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Le/f/a/r/b;-><init>(Ljava/lang/Object;Le/f/a/r/e;)V

    move-object v5, v0

    move-object v15, v5

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v15, v0

    move-object v5, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 3
    invoke-virtual/range {v0 .. v10}, Le/f/a/h;->W(Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/a;Le/f/a/r/e;Le/f/a/j;Le/f/a/f;IILjava/util/concurrent/Executor;)Le/f/a/r/d;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v1, v11, Le/f/a/h;->L:Le/f/a/h;

    .line 5
    iget v2, v1, Le/f/a/r/a;->k:I

    .line 6
    iget v1, v1, Le/f/a/r/a;->j:I

    .line 7
    invoke-static/range {p7 .. p8}, Le/f/a/t/j;->j(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Le/f/a/h;->L:Le/f/a/h;

    .line 8
    iget v4, v3, Le/f/a/r/a;->k:I

    iget v3, v3, Le/f/a/r/a;->j:I

    invoke-static {v4, v3}, Le/f/a/t/j;->j(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    iget v1, v12, Le/f/a/r/a;->k:I

    .line 10
    iget v2, v12, Le/f/a/r/a;->j:I

    move/from16 v19, v1

    move/from16 v20, v2

    goto :goto_1

    :cond_2
    move/from16 v20, v1

    move/from16 v19, v2

    .line 11
    :goto_1
    iget-object v1, v11, Le/f/a/h;->L:Le/f/a/h;

    iget-object v2, v1, Le/f/a/h;->E:Le/f/a/j;

    .line 12
    iget-object v3, v1, Le/f/a/r/a;->d:Le/f/a/f;

    move-object v12, v1

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v4, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v1

    move-object/from16 v22, p10

    .line 13
    invoke-virtual/range {v12 .. v22}, Le/f/a/h;->K(Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/e;Le/f/a/j;Le/f/a/f;IILe/f/a/r/a;Ljava/util/concurrent/Executor;)Le/f/a/r/d;

    move-result-object v1

    .line 14
    iput-object v0, v4, Le/f/a/r/b;->c:Le/f/a/r/d;

    .line 15
    iput-object v1, v4, Le/f/a/r/b;->d:Le/f/a/r/d;

    return-object v4
.end method

.method public L()Le/f/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/h;

    .line 2
    iget-object v1, v0, Le/f/a/h;->E:Le/f/a/j;

    invoke-virtual {v1}, Le/f/a/j;->a()Le/f/a/j;

    move-result-object v1

    iput-object v1, v0, Le/f/a/h;->E:Le/f/a/j;

    return-object v0
.end method

.method public M(Le/f/a/r/k/k;)Le/f/a/r/k/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Le/f/a/r/k/k<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/t/e;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v1, p0, v0}, Le/f/a/h;->N(Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/a;Ljava/util/concurrent/Executor;)Le/f/a/r/k/k;

    return-object p1
.end method

.method public final N(Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/a;Ljava/util/concurrent/Executor;)Le/f/a/r/k/k;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Le/f/a/r/k/k<",
            "TTranscodeType;>;>(TY;",
            "Le/f/a/r/g<",
            "TTranscodeType;>;",
            "Le/f/a/r/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p1

    move-object/from16 v13, p3

    const-string v1, "Argument must not be null"

    .line 1
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v1, v12, Le/f/a/h;->N:Z

    if-eqz v1, :cond_4

    .line 3
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v6, v12, Le/f/a/h;->E:Le/f/a/j;

    .line 4
    iget-object v7, v13, Le/f/a/r/a;->d:Le/f/a/f;

    .line 5
    iget v8, v13, Le/f/a/r/a;->k:I

    .line 6
    iget v9, v13, Le/f/a/r/a;->j:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 7
    invoke-virtual/range {v1 .. v11}, Le/f/a/h;->K(Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/e;Le/f/a/j;Le/f/a/f;IILe/f/a/r/a;Ljava/util/concurrent/Executor;)Le/f/a/r/d;

    move-result-object v1

    .line 8
    invoke-interface {p1}, Le/f/a/r/k/k;->b()Le/f/a/r/d;

    move-result-object v2

    .line 9
    invoke-interface {v1, v2}, Le/f/a/r/d;->c(Le/f/a/r/d;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    iget-boolean v3, v13, Le/f/a/r/a;->i:Z

    if-nez v3, :cond_0

    .line 11
    invoke-interface {v2}, Le/f/a/r/d;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    const-string v1, "Argument must not be null"

    .line 12
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-interface {v2}, Le/f/a/r/d;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-interface {v2}, Le/f/a/r/d;->h()V

    :cond_1
    return-object v0

    .line 15
    :cond_2
    iget-object v2, v12, Le/f/a/h;->B:Le/f/a/i;

    invoke-virtual {v2, p1}, Le/f/a/i;->n(Le/f/a/r/k/k;)V

    .line 16
    invoke-interface {p1, v1}, Le/f/a/r/k/k;->h(Le/f/a/r/d;)V

    .line 17
    iget-object v2, v12, Le/f/a/h;->B:Le/f/a/i;

    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, v2, Le/f/a/i;->f:Le/f/a/o/p;

    .line 20
    iget-object v3, v3, Le/f/a/o/p;->a:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v3, v2, Le/f/a/i;->d:Le/f/a/o/n;

    .line 22
    iget-object v4, v3, Le/f/a/o/n;->a:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-boolean v4, v3, Le/f/a/o/n;->c:Z

    if-nez v4, :cond_3

    .line 24
    invoke-interface {v1}, Le/f/a/r/d;->h()V

    goto :goto_1

    .line 25
    :cond_3
    invoke-interface {v1}, Le/f/a/r/d;->clear()V

    const/4 v4, 0x2

    const-string v5, "RequestTracker"

    .line 26
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    iget-object v3, v3, Le/f/a/o/n;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 29
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O(Landroid/widget/ImageView;)Le/f/a/r/k/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Le/f/a/r/k/l<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/f/a/t/j;->a()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Le/f/a/r/a;->a:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Le/f/a/r/a;->n:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Le/f/a/h$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Le/f/a/h;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0}, Le/f/a/r/a;->q()Le/f/a/r/a;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Le/f/a/h;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0}, Le/f/a/r/a;->r()Le/f/a/r/a;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Le/f/a/h;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0}, Le/f/a/r/a;->q()Le/f/a/r/a;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Le/f/a/h;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0}, Le/f/a/r/a;->p()Le/f/a/r/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 11
    :goto_1
    iget-object v1, p0, Le/f/a/h;->D:Le/f/a/e;

    iget-object v2, p0, Le/f/a/h;->C:Ljava/lang/Class;

    .line 12
    iget-object v1, v1, Le/f/a/e;->c:Le/f/a/r/k/g;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    new-instance v1, Le/f/a/r/k/b;

    invoke-direct {v1, p1}, Le/f/a/r/k/b;-><init>(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 16
    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    new-instance v1, Le/f/a/r/k/e;

    invoke-direct {v1, p1}, Le/f/a/r/k/e;-><init>(Landroid/widget/ImageView;)V

    :goto_2
    const/4 p1, 0x0

    .line 18
    sget-object v2, Le/f/a/t/e;->a:Ljava/util/concurrent/Executor;

    .line 19
    invoke-virtual {p0, v1, p1, v0, v2}, Le/f/a/h;->N(Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/a;Ljava/util/concurrent/Executor;)Le/f/a/r/k/k;

    return-object v1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public P(Le/f/a/r/g;)Le/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/g<",
            "TTranscodeType;>;)",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/f/a/h;->K:Ljava/util/List;

    .line 2
    invoke-virtual {p0, p1}, Le/f/a/h;->H(Le/f/a/r/g;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public Q(Landroid/graphics/Bitmap;)Le/f/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    .line 3
    sget-object p1, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-static {p1}, Le/f/a/r/h;->J(Le/f/a/n/o/k;)Le/f/a/r/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public R(Landroid/graphics/drawable/Drawable;)Le/f/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    .line 3
    sget-object p1, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-static {p1}, Le/f/a/r/h;->J(Le/f/a/n/o/k;)Le/f/a/r/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public S(Landroid/net/Uri;)Le/f/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    return-object p0
.end method

.method public T(Ljava/lang/Integer;)Le/f/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    .line 3
    iget-object p1, p0, Le/f/a/h;->A:Landroid/content/Context;

    .line 4
    sget v0, Le/f/a/s/a;->d:I

    .line 5
    sget-object v0, Le/f/a/s/b;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Le/f/a/s/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/n/f;

    if-nez v1, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 10
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_1
    new-instance v2, Le/f/a/s/d;

    invoke-direct {v2, v1}, Le/f/a/s/d;-><init>(Ljava/lang/Object;)V

    .line 13
    sget-object v1, Le/f/a/s/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/f/a/n/f;

    if-nez v1, :cond_1

    move-object v1, v2

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    .line 15
    new-instance v0, Le/f/a/s/a;

    invoke-direct {v0, p1, v1}, Le/f/a/s/a;-><init>(ILe/f/a/n/f;)V

    .line 16
    new-instance p1, Le/f/a/r/h;

    invoke-direct {p1}, Le/f/a/r/h;-><init>()V

    invoke-virtual {p1, v0}, Le/f/a/r/a;->z(Le/f/a/n/f;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/r/h;

    .line 17
    invoke-virtual {p0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public U(Ljava/lang/Object;)Le/f/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    return-object p0
.end method

.method public V(Ljava/lang/String;)Le/f/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/f/a/h<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    return-object p0
.end method

.method public final W(Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/a;Le/f/a/r/e;Le/f/a/j;Le/f/a/f;IILjava/util/concurrent/Executor;)Le/f/a/r/d;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "TTranscodeType;>;",
            "Le/f/a/r/g<",
            "TTranscodeType;>;",
            "Le/f/a/r/a<",
            "*>;",
            "Le/f/a/r/e;",
            "Le/f/a/j<",
            "*-TTranscodeType;>;",
            "Le/f/a/f;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Le/f/a/r/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Le/f/a/h;->A:Landroid/content/Context;

    iget-object v3, v0, Le/f/a/h;->D:Le/f/a/e;

    iget-object v5, v0, Le/f/a/h;->J:Ljava/lang/Object;

    iget-object v6, v0, Le/f/a/h;->C:Ljava/lang/Class;

    iget-object v13, v0, Le/f/a/h;->K:Ljava/util/List;

    .line 2
    iget-object v15, v3, Le/f/a/e;->g:Le/f/a/n/o/l;

    move-object/from16 v1, p6

    .line 3
    iget-object v14, v1, Le/f/a/j;->a:Le/f/a/r/l/e;

    .line 4
    new-instance v18, Le/f/a/r/j;

    move-object/from16 v1, v18

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p7

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v14

    move-object/from16 v14, p5

    move-object/from16 v17, p10

    invoke-direct/range {v1 .. v17}, Le/f/a/r/j;-><init>(Landroid/content/Context;Le/f/a/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Le/f/a/r/a;IILe/f/a/f;Le/f/a/r/k/k;Le/f/a/r/g;Ljava/util/List;Le/f/a/r/e;Le/f/a/n/o/l;Le/f/a/r/l/e;Ljava/util/concurrent/Executor;)V

    return-object v18
.end method

.method public X()Le/f/a/r/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/a/r/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p0, v0, v0}, Le/f/a/h;->Y(II)Le/f/a/r/c;

    move-result-object v0

    return-object v0
.end method

.method public Y(II)Le/f/a/r/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Le/f/a/r/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/a/r/f;

    invoke-direct {v0, p1, p2}, Le/f/a/r/f;-><init>(II)V

    .line 2
    sget-object p1, Le/f/a/t/e;->b:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {p0, v0, v0, p0, p1}, Le/f/a/h;->N(Le/f/a/r/k/k;Le/f/a/r/g;Le/f/a/r/a;Ljava/util/concurrent/Executor;)Le/f/a/r/k/k;

    return-object v0
.end method

.method public bridge synthetic a(Le/f/a/r/a;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/a/h;->L()Le/f/a/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f/a/h;->L()Le/f/a/h;

    move-result-object v0

    return-object v0
.end method
