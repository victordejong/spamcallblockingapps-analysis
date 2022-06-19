.class public final synthetic Le/m/a/h/a/g/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/g/a;

.field public final synthetic b:J

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/g/g/a;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/j;->a:Le/m/a/h/a/g/g/a;

    iput-wide p2, p0, Le/m/a/h/a/g/g/j;->b:J

    iput-object p4, p0, Le/m/a/h/a/g/g/j;->c:Ljava/util/List;

    iput-object p5, p0, Le/m/a/h/a/g/g/j;->d:Ljava/util/List;

    iput-object p6, p0, Le/m/a/h/a/g/g/j;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v9, v0, Le/m/a/h/a/g/g/j;->a:Le/m/a/h/a/g/g/a;

    iget-wide v10, v0, Le/m/a/h/a/g/g/j;->b:J

    iget-object v12, v0, Le/m/a/h/a/g/g/j;->c:Ljava/util/List;

    iget-object v13, v0, Le/m/a/h/a/g/g/j;->d:Ljava/util/List;

    iget-object v14, v0, Le/m/a/h/a/g/g/j;->e:Ljava/util/List;

    .line 1
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x3

    div-long v15, v10, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v8, v3

    :goto_0
    const/4 v3, 0x3

    if-ge v8, v3, :cond_1

    add-long/2addr v1, v15

    .line 2
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object v1, v9

    move/from16 v20, v8

    move-object/from16 v8, v19

    .line 5
    invoke-virtual/range {v1 .. v8}, Le/m/a/h/a/g/g/a;->n(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    sget-wide v1, Le/m/a/h/a/g/g/a;->o:J

    .line 6
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 7
    invoke-virtual {v9}, Le/m/a/h/a/g/g/a;->h()Le/m/a/h/a/g/d;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Le/m/a/h/a/g/d;->h()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    .line 9
    invoke-virtual {v1}, Le/m/a/h/a/g/d;->h()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 10
    invoke-virtual {v1}, Le/m/a/h/a/g/d;->h()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v20, 0x1

    move-wide/from16 v1, v17

    goto :goto_0

    :cond_1
    iget-object v8, v9, Le/m/a/h/a/g/g/a;->h:Ljava/util/concurrent/Executor;

    new-instance v15, Le/m/a/h/a/g/g/d;

    move-object v1, v15

    move-object v2, v9

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-wide v6, v10

    .line 11
    invoke-direct/range {v1 .. v7}, Le/m/a/h/a/g/g/d;-><init>(Le/m/a/h/a/g/g/a;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    invoke-interface {v8, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method
