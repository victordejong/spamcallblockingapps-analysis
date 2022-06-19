.class public final Le/f/a/r/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/d;
.implements Le/f/a/r/k/j;
.implements Le/f/a/r/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/r/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/r/d;",
        "Le/f/a/r/k/j;",
        "Le/f/a/r/i;"
    }
.end annotation


# static fields
.field public static final D:Z


# instance fields
.field public A:I

.field public B:Z

.field public C:Ljava/lang/RuntimeException;

.field public final a:Ljava/lang/String;

.field public final b:Le/f/a/t/k/d;

.field public final c:Ljava/lang/Object;

.field public final d:Le/f/a/r/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:Le/f/a/r/e;

.field public final f:Landroid/content/Context;

.field public final g:Le/f/a/e;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final j:Le/f/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:I

.field public final l:I

.field public final m:Le/f/a/f;

.field public final n:Le/f/a/r/k/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/k/k<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/a/r/g<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final p:Le/f/a/r/l/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/l/e<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/Executor;

.field public r:Le/f/a/n/o/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/o/w<",
            "TR;>;"
        }
    .end annotation
.end field

.field public s:Le/f/a/n/o/l$d;

.field public t:J

.field public volatile u:Le/f/a/n/o/l;

.field public v:Le/f/a/r/j$a;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Le/f/a/r/j;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/f/a/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Le/f/a/r/a;IILe/f/a/f;Le/f/a/r/k/k;Le/f/a/r/g;Ljava/util/List;Le/f/a/r/e;Le/f/a/n/o/l;Le/f/a/r/l/e;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/f/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Le/f/a/r/a<",
            "*>;II",
            "Le/f/a/f;",
            "Le/f/a/r/k/k<",
            "TR;>;",
            "Le/f/a/r/g<",
            "TR;>;",
            "Ljava/util/List<",
            "Le/f/a/r/g<",
            "TR;>;>;",
            "Le/f/a/r/e;",
            "Le/f/a/n/o/l;",
            "Le/f/a/r/l/e<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v2, Le/f/a/r/j;->D:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Le/f/a/r/j;->a:Ljava/lang/String;

    .line 3
    new-instance v2, Le/f/a/t/k/d$b;

    invoke-direct {v2}, Le/f/a/t/k/d$b;-><init>()V

    .line 4
    iput-object v2, v0, Le/f/a/r/j;->b:Le/f/a/t/k/d;

    move-object v2, p3

    .line 5
    iput-object v2, v0, Le/f/a/r/j;->c:Ljava/lang/Object;

    move-object v2, p1

    .line 6
    iput-object v2, v0, Le/f/a/r/j;->f:Landroid/content/Context;

    .line 7
    iput-object v1, v0, Le/f/a/r/j;->g:Le/f/a/e;

    move-object v2, p4

    .line 8
    iput-object v2, v0, Le/f/a/r/j;->h:Ljava/lang/Object;

    move-object v2, p5

    .line 9
    iput-object v2, v0, Le/f/a/r/j;->i:Ljava/lang/Class;

    move-object v2, p6

    .line 10
    iput-object v2, v0, Le/f/a/r/j;->j:Le/f/a/r/a;

    move v2, p7

    .line 11
    iput v2, v0, Le/f/a/r/j;->k:I

    move v2, p8

    .line 12
    iput v2, v0, Le/f/a/r/j;->l:I

    move-object v2, p9

    .line 13
    iput-object v2, v0, Le/f/a/r/j;->m:Le/f/a/f;

    move-object v2, p10

    .line 14
    iput-object v2, v0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    move-object v2, p11

    .line 15
    iput-object v2, v0, Le/f/a/r/j;->d:Le/f/a/r/g;

    move-object v2, p12

    .line 16
    iput-object v2, v0, Le/f/a/r/j;->o:Ljava/util/List;

    move-object/from16 v2, p13

    .line 17
    iput-object v2, v0, Le/f/a/r/j;->e:Le/f/a/r/e;

    move-object/from16 v2, p14

    .line 18
    iput-object v2, v0, Le/f/a/r/j;->u:Le/f/a/n/o/l;

    move-object/from16 v2, p15

    .line 19
    iput-object v2, v0, Le/f/a/r/j;->p:Le/f/a/r/l/e;

    move-object/from16 v2, p16

    .line 20
    iput-object v2, v0, Le/f/a/r/j;->q:Ljava/util/concurrent/Executor;

    .line 21
    sget-object v2, Le/f/a/r/j$a;->a:Le/f/a/r/j$a;

    iput-object v2, v0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    .line 22
    iget-object v2, v0, Le/f/a/r/j;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 23
    iget-boolean v1, v1, Le/f/a/e;->h:Z

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Le/f/a/r/j;->C:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 24

    move-object/from16 v15, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1
    iget-object v2, v15, Le/f/a/r/j;->b:Le/f/a/t/k/d;

    invoke-virtual {v2}, Le/f/a/t/k/d;->a()V

    .line 2
    iget-object v14, v15, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v14

    .line 3
    :try_start_0
    sget-boolean v21, Le/f/a/r/j;->D:Z

    if-eqz v21, :cond_0

    .line 4
    iget-wide v2, v15, Le/f/a/r/j;->t:J

    invoke-static {v2, v3}, Le/f/a/t/f;->a(J)D

    .line 5
    :cond_0
    iget-object v2, v15, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    sget-object v3, Le/f/a/r/j$a;->c:Le/f/a/r/j$a;

    if-eq v2, v3, :cond_1

    .line 6
    monitor-exit v14

    return-void

    .line 7
    :cond_1
    sget-object v13, Le/f/a/r/j$a;->b:Le/f/a/r/j$a;

    iput-object v13, v15, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    .line 8
    iget-object v2, v15, Le/f/a/r/j;->j:Le/f/a/r/a;

    .line 9
    iget v2, v2, Le/f/a/r/a;->b:F

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 11
    :goto_0
    iput v0, v15, Le/f/a/r/j;->z:I

    if-ne v1, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float/2addr v2, v0

    .line 12
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 13
    :goto_1
    iput v0, v15, Le/f/a/r/j;->A:I

    if-eqz v21, :cond_4

    .line 14
    iget-wide v0, v15, Le/f/a/r/j;->t:J

    invoke-static {v0, v1}, Le/f/a/t/f;->a(J)D

    .line 15
    :cond_4
    iget-object v1, v15, Le/f/a/r/j;->u:Le/f/a/n/o/l;

    iget-object v2, v15, Le/f/a/r/j;->g:Le/f/a/e;

    iget-object v3, v15, Le/f/a/r/j;->h:Ljava/lang/Object;

    iget-object v0, v15, Le/f/a/r/j;->j:Le/f/a/r/a;

    .line 16
    iget-object v4, v0, Le/f/a/r/a;->l:Le/f/a/n/f;

    .line 17
    iget v5, v15, Le/f/a/r/j;->z:I

    iget v6, v15, Le/f/a/r/j;->A:I

    .line 18
    iget-object v7, v0, Le/f/a/r/a;->s:Ljava/lang/Class;

    .line 19
    iget-object v8, v15, Le/f/a/r/j;->i:Ljava/lang/Class;

    iget-object v9, v15, Le/f/a/r/j;->m:Le/f/a/f;

    .line 20
    iget-object v10, v0, Le/f/a/r/a;->c:Le/f/a/n/o/k;

    .line 21
    iget-object v11, v0, Le/f/a/r/a;->r:Ljava/util/Map;

    .line 22
    iget-boolean v12, v0, Le/f/a/r/a;->m:Z

    move-object/from16 v16, v13

    .line 23
    iget-boolean v13, v0, Le/f/a/r/a;->y:Z

    move/from16 v17, v13

    .line 24
    iget-object v13, v0, Le/f/a/r/a;->q:Le/f/a/n/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v18, v14

    .line 25
    :try_start_1
    iget-boolean v14, v0, Le/f/a/r/a;->i:Z

    move/from16 v19, v14

    .line 26
    iget-boolean v14, v0, Le/f/a/r/a;->w:Z

    move/from16 v20, v14

    .line 27
    iget-boolean v14, v0, Le/f/a/r/a;->z:Z

    .line 28
    iget-boolean v0, v0, Le/f/a/r/a;->x:Z

    move/from16 p1, v0

    .line 29
    iget-object v0, v15, Le/f/a/r/j;->q:Ljava/util/concurrent/Executor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v22, v16

    move-object/from16 v16, v13

    move/from16 v13, v17

    move-object/from16 v23, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, p1

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    .line 30
    :try_start_2
    invoke-virtual/range {v1 .. v20}, Le/f/a/n/o/l;->b(Le/f/a/e;Ljava/lang/Object;Le/f/a/n/f;IILjava/lang/Class;Ljava/lang/Class;Le/f/a/f;Le/f/a/n/o/k;Ljava/util/Map;ZZLe/f/a/n/i;ZZZZLe/f/a/r/i;Ljava/util/concurrent/Executor;)Le/f/a/n/o/l$d;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    iput-object v0, v1, Le/f/a/r/j;->s:Le/f/a/n/o/l$d;

    .line 31
    iget-object v0, v1, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    move-object/from16 v2, v22

    if-eq v0, v2, :cond_5

    const/4 v0, 0x0

    .line 32
    iput-object v0, v1, Le/f/a/r/j;->s:Le/f/a/n/o/l$d;

    :cond_5
    if-eqz v21, :cond_6

    .line 33
    iget-wide v2, v1, Le/f/a/r/j;->t:J

    invoke-static {v2, v3}, Le/f/a/t/f;->a(J)D

    .line 34
    :cond_6
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v15

    move-object/from16 v23, v18

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v23, v14

    move-object v1, v15

    :goto_2
    move-object/from16 v14, v23

    :goto_3
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    sget-object v2, Le/f/a/r/j$a;->f:Le/f/a/r/j$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Le/f/a/r/d;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Le/f/a/r/j;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v1, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget v4, v1, Le/f/a/r/j;->k:I

    .line 4
    iget v5, v1, Le/f/a/r/j;->l:I

    .line 5
    iget-object v6, v1, Le/f/a/r/j;->h:Ljava/lang/Object;

    .line 6
    iget-object v7, v1, Le/f/a/r/j;->i:Ljava/lang/Class;

    .line 7
    iget-object v8, v1, Le/f/a/r/j;->j:Le/f/a/r/a;

    .line 8
    iget-object v9, v1, Le/f/a/r/j;->m:Le/f/a/f;

    .line 9
    iget-object v10, v1, Le/f/a/r/j;->o:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    move v10, v3

    .line 10
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    check-cast v0, Le/f/a/r/j;

    .line 12
    iget-object v11, v0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v11

    .line 13
    :try_start_1
    iget v2, v0, Le/f/a/r/j;->k:I

    .line 14
    iget v12, v0, Le/f/a/r/j;->l:I

    .line 15
    iget-object v13, v0, Le/f/a/r/j;->h:Ljava/lang/Object;

    .line 16
    iget-object v14, v0, Le/f/a/r/j;->i:Ljava/lang/Class;

    .line 17
    iget-object v15, v0, Le/f/a/r/j;->j:Le/f/a/r/a;

    .line 18
    iget-object v3, v0, Le/f/a/r/j;->m:Le/f/a/f;

    .line 19
    iget-object v0, v0, Le/f/a/r/j;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x1

    if-ne v4, v2, :cond_6

    if-ne v5, v12, :cond_6

    .line 21
    sget-object v2, Le/f/a/t/j;->a:[C

    if-nez v6, :cond_4

    if-nez v13, :cond_3

    move v2, v11

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 22
    :cond_4
    instance-of v2, v6, Le/f/a/n/p/l;

    if-eqz v2, :cond_5

    .line 23
    check-cast v6, Le/f/a/n/p/l;

    invoke-interface {v6, v13}, Le/f/a/n/p/l;->a(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    invoke-virtual {v8, v15}, Le/f/a/r/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v9, v3, :cond_6

    if-ne v10, v0, :cond_6

    move v3, v11

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    return v3

    :catchall_0
    move-exception v0

    .line 27
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 28
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/f/a/r/j;->d()V

    .line 3
    iget-object v1, p0, Le/f/a/r/j;->b:Le/f/a/t/k/d;

    invoke-virtual {v1}, Le/f/a/t/k/d;->a()V

    .line 4
    iget-object v1, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    sget-object v2, Le/f/a/r/j$a;->f:Le/f/a/r/j$a;

    if-ne v1, v2, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/f/a/r/j;->e()V

    .line 7
    iget-object v1, p0, Le/f/a/r/j;->r:Le/f/a/n/o/w;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 8
    iput-object v3, p0, Le/f/a/r/j;->r:Le/f/a/n/o/w;

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 9
    :goto_0
    iget-object v3, p0, Le/f/a/r/j;->e:Le/f/a/r/e;

    if-eqz v3, :cond_3

    invoke-interface {v3, p0}, Le/f/a/r/e;->i(Le/f/a/r/d;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    .line 10
    iget-object v3, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    invoke-virtual {p0}, Le/f/a/r/j;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Le/f/a/r/k/k;->d(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_4
    iput-object v2, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 13
    iget-object v0, p0, Le/f/a/r/j;->u:Le/f/a/n/o/l;

    invoke-virtual {v0, v1}, Le/f/a/n/o/l;->f(Le/f/a/n/o/w;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/f/a/r/j;->B:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/f/a/r/j;->d()V

    .line 2
    iget-object v0, p0, Le/f/a/r/j;->b:Le/f/a/t/k/d;

    invoke-virtual {v0}, Le/f/a/t/k/d;->a()V

    .line 3
    iget-object v0, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    invoke-interface {v0, p0}, Le/f/a/r/k/k;->c(Le/f/a/r/k/j;)V

    .line 4
    iget-object v0, p0, Le/f/a/r/j;->s:Le/f/a/n/o/l$d;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Le/f/a/n/o/l$d;->c:Le/f/a/n/o/l;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Le/f/a/n/o/l$d;->a:Le/f/a/n/o/m;

    iget-object v0, v0, Le/f/a/n/o/l$d;->b:Le/f/a/r/i;

    invoke-virtual {v2, v0}, Le/f/a/n/o/m;->h(Le/f/a/r/i;)V

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Le/f/a/r/j;->s:Le/f/a/n/o/l$d;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/f/a/r/j;->j:Le/f/a/r/a;

    .line 3
    iget-object v1, v0, Le/f/a/r/a;->o:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v1, p0, Le/f/a/r/j;->y:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 5
    iget v0, v0, Le/f/a/r/a;->p:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Le/f/a/r/j;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Le/f/a/r/j;->y:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Le/f/a/r/j;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/f/a/r/j;->j:Le/f/a/r/a;

    .line 3
    iget-object v1, v0, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object v1, p0, Le/f/a/r/j;->x:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 5
    iget v0, v0, Le/f/a/r/a;->h:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Le/f/a/r/j;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Le/f/a/r/j;->x:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_0
    iget-object v0, p0, Le/f/a/r/j;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/f/a/r/j;->d()V

    .line 3
    iget-object v1, p0, Le/f/a/r/j;->b:Le/f/a/t/k/d;

    invoke-virtual {v1}, Le/f/a/t/k/d;->a()V

    .line 4
    sget v1, Le/f/a/t/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 5
    iput-wide v1, p0, Le/f/a/r/j;->t:J

    .line 6
    iget-object v1, p0, Le/f/a/r/j;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 7
    iget v1, p0, Le/f/a/r/j;->k:I

    iget v2, p0, Le/f/a/r/j;->l:I

    invoke-static {v1, v2}, Le/f/a/t/j;->j(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget v1, p0, Le/f/a/r/j;->k:I

    iput v1, p0, Le/f/a/r/j;->z:I

    .line 9
    iget v1, p0, Le/f/a/r/j;->l:I

    iput v1, p0, Le/f/a/r/j;->A:I

    .line 10
    :cond_0
    invoke-virtual {p0}, Le/f/a/r/j;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 11
    :goto_0
    new-instance v2, Le/f/a/n/o/r;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Le/f/a/n/o/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Le/f/a/r/j;->k(Le/f/a/n/o/r;I)V

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    sget-object v2, Le/f/a/r/j$a;->b:Le/f/a/r/j$a;

    if-eq v1, v2, :cond_a

    .line 14
    sget-object v3, Le/f/a/r/j$a;->d:Le/f/a/r/j$a;

    if-ne v1, v3, :cond_3

    .line 15
    iget-object v1, p0, Le/f/a/r/j;->r:Le/f/a/n/o/w;

    sget-object v2, Le/f/a/n/a;->e:Le/f/a/n/a;

    invoke-virtual {p0, v1, v2}, Le/f/a/r/j;->l(Le/f/a/n/o/w;Le/f/a/n/a;)V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_3
    sget-object v1, Le/f/a/r/j$a;->c:Le/f/a/r/j$a;

    iput-object v1, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    .line 18
    iget v3, p0, Le/f/a/r/j;->k:I

    iget v4, p0, Le/f/a/r/j;->l:I

    invoke-static {v3, v4}, Le/f/a/t/j;->j(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    iget v3, p0, Le/f/a/r/j;->k:I

    iget v4, p0, Le/f/a/r/j;->l:I

    invoke-virtual {p0, v3, v4}, Le/f/a/r/j;->a(II)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object v3, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    invoke-interface {v3, p0}, Le/f/a/r/k/k;->j(Le/f/a/r/k/j;)V

    .line 21
    :goto_1
    iget-object v3, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    if-eq v3, v2, :cond_5

    if-ne v3, v1, :cond_8

    .line 22
    :cond_5
    iget-object v1, p0, Le/f/a/r/j;->e:Le/f/a/r/e;

    if-eqz v1, :cond_7

    invoke-interface {v1, p0}, Le/f/a/r/e;->e(Le/f/a/r/d;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_8

    .line 23
    iget-object v1, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    invoke-virtual {p0}, Le/f/a/r/j;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Le/f/a/r/k/k;->g(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_8
    sget-boolean v1, Le/f/a/r/j;->D:Z

    if-eqz v1, :cond_9

    .line 25
    iget-wide v1, p0, Le/f/a/r/j;->t:J

    invoke-static {v1, v2}, Le/f/a/t/f;->a(J)D

    .line 26
    :cond_9
    monitor-exit v0

    return-void

    .line 27
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->e:Le/f/a/r/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/f/a/r/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    sget-object v2, Le/f/a/r/j$a;->d:Le/f/a/r/j$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    sget-object v2, Le/f/a/r/j$a;->b:Le/f/a/r/j$a;

    if-eq v1, v2, :cond_1

    sget-object v2, Le/f/a/r/j$a;->c:Le/f/a/r/j$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->j:Le/f/a/r/a;

    .line 2
    iget-object v0, v0, Le/f/a/r/a;->u:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/a/r/j;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Le/f/a/r/j;->g:Le/f/a/e;

    .line 5
    invoke-static {v1, v1, p1, v0}, Le/f/a/n/q/f/a;->a(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final k(Le/f/a/n/o/r;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->b:Le/f/a/t/k/d;

    invoke-virtual {v0}, Le/f/a/t/k/d;->a()V

    .line 2
    iget-object v0, p0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Le/f/a/r/j;->g:Le/f/a/e;

    .line 5
    iget v1, v1, Le/f/a/e;->i:I

    const/4 v2, 0x0

    if-gt v1, p2, :cond_0

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/f/a/r/j;->h:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Le/f/a/r/j;->z:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Le/f/a/r/j;->A:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p1, p1, p2}, Le/f/a/n/o/r;->a(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 10
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Le/f/a/r/j;->s:Le/f/a/n/o/l$d;

    .line 12
    sget-object p2, Le/f/a/r/j$a;->e:Le/f/a/r/j$a;

    iput-object p2, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Le/f/a/r/j;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v1, p0, Le/f/a/r/j;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/f/a/r/g;

    .line 16
    iget-object v5, p0, Le/f/a/r/j;->h:Ljava/lang/Object;

    iget-object v6, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    .line 17
    invoke-virtual {p0}, Le/f/a/r/j;->i()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Le/f/a/r/g;->onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    .line 18
    :cond_2
    iget-object v1, p0, Le/f/a/r/j;->d:Le/f/a/r/g;

    if-eqz v1, :cond_3

    iget-object v4, p0, Le/f/a/r/j;->h:Ljava/lang/Object;

    iget-object v5, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    .line 19
    invoke-virtual {p0}, Le/f/a/r/j;->i()Z

    move-result v6

    invoke-interface {v1, p1, v4, v5, v6}, Le/f/a/r/g;->onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move p2, v2

    :goto_2
    or-int p1, v3, p2

    if-nez p1, :cond_4

    .line 20
    invoke-virtual {p0}, Le/f/a/r/j;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_4
    :try_start_2
    iput-boolean v2, p0, Le/f/a/r/j;->B:Z

    .line 22
    iget-object p1, p0, Le/f/a/r/j;->e:Le/f/a/r/e;

    if-eqz p1, :cond_5

    .line 23
    invoke-interface {p1, p0}, Le/f/a/r/e;->g(Le/f/a/r/d;)V

    .line 24
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 25
    iput-boolean v2, p0, Le/f/a/r/j;->B:Z

    throw p1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public l(Le/f/a/n/o/w;Le/f/a/n/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/w<",
            "*>;",
            "Le/f/a/n/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->b:Le/f/a/t/k/d;

    invoke-virtual {v0}, Le/f/a/t/k/d;->a()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iput-object v0, p0, Le/f/a/r/j;->s:Le/f/a/n/o/l$d;

    const/4 v2, 0x5

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Le/f/a/n/o/r;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/f/a/r/j;->i:Ljava/lang/Class;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " inside, but instead got null."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/f/a/n/o/r;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, v2}, Le/f/a/r/j;->k(Le/f/a/n/o/r;I)V

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Le/f/a/n/o/w;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8
    iget-object v4, p0, Le/f/a/r/j;->i:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v2, p0, Le/f/a/r/j;->e:Le/f/a/r/e;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0}, Le/f/a/r/e;->f(Le/f/a/r/d;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    .line 10
    :try_start_2
    iput-object v0, p0, Le/f/a/r/j;->r:Le/f/a/n/o/w;

    .line 11
    sget-object p2, Le/f/a/r/j$a;->d:Le/f/a/r/j$a;

    iput-object p2, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    .line 12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object p2, p0, Le/f/a/r/j;->u:Le/f/a/n/o/l;

    invoke-virtual {p2, p1}, Le/f/a/n/o/l;->f(Le/f/a/n/o/w;)V

    return-void

    .line 14
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, v3, p2}, Le/f/a/r/j;->m(Le/f/a/n/o/w;Ljava/lang/Object;Le/f/a/n/a;)V

    .line 15
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 16
    :cond_5
    :goto_2
    :try_start_4
    iput-object v0, p0, Le/f/a/r/j;->r:Le/f/a/n/o/w;

    .line 17
    new-instance p2, Le/f/a/n/o/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to receive an object of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/f/a/r/j;->i:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but instead got "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_6
    const-string v4, ""

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "} inside Resource{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    const-string v3, ""

    goto :goto_4

    :cond_7
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 19
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Le/f/a/n/o/r;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2, v2}, Le/f/a/r/j;->k(Le/f/a/n/o/r;I)V

    .line 21
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    iget-object p2, p0, Le/f/a/r/j;->u:Le/f/a/n/o/l;

    invoke-virtual {p2, p1}, Le/f/a/n/o/l;->f(Le/f/a/n/o/w;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 23
    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_8

    .line 24
    iget-object p2, p0, Le/f/a/r/j;->u:Le/f/a/n/o/l;

    invoke-virtual {p2, v0}, Le/f/a/n/o/l;->f(Le/f/a/n/o/w;)V

    :cond_8
    throw p1
.end method

.method public final m(Le/f/a/n/o/w;Ljava/lang/Object;Le/f/a/n/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/w<",
            "TR;>;TR;",
            "Le/f/a/n/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/a/r/j;->i()Z

    move-result v6

    .line 2
    sget-object v0, Le/f/a/r/j$a;->d:Le/f/a/r/j$a;

    iput-object v0, p0, Le/f/a/r/j;->v:Le/f/a/r/j$a;

    .line 3
    iput-object p1, p0, Le/f/a/r/j;->r:Le/f/a/n/o/w;

    .line 4
    iget-object p1, p0, Le/f/a/r/j;->g:Le/f/a/e;

    .line 5
    iget p1, p1, Le/f/a/e;->i:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const-string p1, "Finished loading "

    .line 6
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/f/a/r/j;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Le/f/a/r/j;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Le/f/a/r/j;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Le/f/a/r/j;->t:J

    .line 8
    invoke-static {v0, v1}, Le/f/a/t/f;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Le/f/a/r/j;->B:Z

    const/4 v7, 0x0

    .line 10
    :try_start_0
    iget-object v0, p0, Le/f/a/r/j;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/r/g;

    .line 12
    iget-object v2, p0, Le/f/a/r/j;->h:Ljava/lang/Object;

    iget-object v3, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 13
    invoke-interface/range {v0 .. v5}, Le/f/a/r/g;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_0

    :cond_1
    move v9, v7

    .line 14
    :cond_2
    iget-object v0, p0, Le/f/a/r/j;->d:Le/f/a/r/g;

    if-eqz v0, :cond_3

    iget-object v2, p0, Le/f/a/r/j;->h:Ljava/lang/Object;

    iget-object v3, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 15
    invoke-interface/range {v0 .. v5}, Le/f/a/r/g;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v7

    :goto_1
    or-int/2addr p1, v9

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Le/f/a/r/j;->p:Le/f/a/r/l/e;

    invoke-interface {p1, p3, v6}, Le/f/a/r/l/e;->a(Le/f/a/n/a;Z)Le/f/a/r/l/d;

    move-result-object p1

    .line 17
    iget-object p3, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    invoke-interface {p3, p2, p1}, Le/f/a/r/k/k;->e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_4
    iput-boolean v7, p0, Le/f/a/r/j;->B:Z

    .line 19
    iget-object p1, p0, Le/f/a/r/j;->e:Le/f/a/r/e;

    if-eqz p1, :cond_5

    .line 20
    invoke-interface {p1, p0}, Le/f/a/r/e;->d(Le/f/a/r/d;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 21
    iput-boolean v7, p0, Le/f/a/r/j;->B:Z

    throw p1
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->e:Le/f/a/r/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Le/f/a/r/e;->e(Le/f/a/r/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Le/f/a/r/j;->h:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Le/f/a/r/j;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Le/f/a/r/j;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Le/f/a/r/j;->j:Le/f/a/r/a;

    .line 6
    iget-object v1, v0, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v1, p0, Le/f/a/r/j;->w:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 8
    iget v0, v0, Le/f/a/r/a;->f:I

    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Le/f/a/r/j;->j(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Le/f/a/r/j;->w:Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_4
    iget-object v0, p0, Le/f/a/r/j;->w:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0}, Le/f/a/r/j;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12
    :cond_6
    iget-object v1, p0, Le/f/a/r/j;->n:Le/f/a/r/k/k;

    invoke-interface {v1, v0}, Le/f/a/r/k/k;->i(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/r/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/f/a/r/j;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/f/a/r/j;->clear()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
