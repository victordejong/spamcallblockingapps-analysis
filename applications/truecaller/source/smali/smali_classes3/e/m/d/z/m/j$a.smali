.class public Le/m/d/z/m/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/z/m/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final k:Le/m/d/z/i/a;

.field public static final l:J


# instance fields
.field public final a:Le/m/d/z/n/a;

.field public final b:Z

.field public c:Lcom/google/firebase/perf/util/Timer;

.field public d:Le/m/d/z/n/f;

.field public e:J

.field public f:J

.field public g:Le/m/d/z/n/f;

.field public h:Le/m/d/z/n/f;

.field public i:J

.field public j:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/m/j$a;->k:Le/m/d/z/i/a;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Le/m/d/z/m/j$a;->l:J

    return-void
.end method

.method public constructor <init>(Le/m/d/z/n/f;JLe/m/d/z/n/a;Le/m/d/z/g/d;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v0, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p4

    .line 2
    iput-object v6, v1, Le/m/d/z/m/j$a;->a:Le/m/d/z/n/a;

    .line 3
    iput-wide v2, v1, Le/m/d/z/m/j$a;->e:J

    move-object/from16 v7, p1

    .line 4
    iput-object v7, v1, Le/m/d/z/m/j$a;->d:Le/m/d/z/n/f;

    .line 5
    iput-wide v2, v1, Le/m/d/z/m/j$a;->f:J

    .line 6
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v2}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 8
    iput-object v2, v1, Le/m/d/z/m/j$a;->c:Lcom/google/firebase/perf/util/Timer;

    const-string v2, "Trace"

    if-ne v4, v2, :cond_0

    .line 9
    invoke-virtual/range {p5 .. p5}, Le/m/d/z/g/d;->i()J

    move-result-wide v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual/range {p5 .. p5}, Le/m/d/z/g/d;->i()J

    move-result-wide v2

    :goto_0
    move-wide v9, v2

    const-string v2, "Trace"

    if-ne v4, v2, :cond_4

    .line 11
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v2, Le/m/d/z/g/u;

    monitor-enter v2

    .line 13
    :try_start_0
    sget-object v3, Le/m/d/z/g/u;->a:Le/m/d/z/g/u;

    if-nez v3, :cond_1

    .line 14
    new-instance v3, Le/m/d/z/g/u;

    invoke-direct {v3}, Le/m/d/z/g/u;-><init>()V

    sput-object v3, Le/m/d/z/g/u;->a:Le/m/d/z/g/u;

    .line 15
    :cond_1
    sget-object v3, Le/m/d/z/g/u;->a:Le/m/d/z/g/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 16
    invoke-virtual {v0, v3}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le/m/d/z/g/d;->l(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 18
    iget-object v6, v0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.google.firebase.perf.TraceEventCountForeground"

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, v6, v3, v2}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_1

    .line 20
    :cond_2
    invoke-virtual {v0, v3}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le/m/d/z/g/d;->l(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 22
    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_1

    .line 23
    :cond_3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x12c

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 26
    monitor-exit v2

    throw v0

    .line 27
    :cond_4
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v2, Le/m/d/z/g/i;

    monitor-enter v2

    .line 29
    :try_start_1
    sget-object v3, Le/m/d/z/g/i;->a:Le/m/d/z/g/i;

    if-nez v3, :cond_5

    .line 30
    new-instance v3, Le/m/d/z/g/i;

    invoke-direct {v3}, Le/m/d/z/g/i;-><init>()V

    sput-object v3, Le/m/d/z/g/i;->a:Le/m/d/z/g/i;

    .line 31
    :cond_5
    sget-object v3, Le/m/d/z/g/i;->a:Le/m/d/z/g/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v2

    .line 32
    invoke-virtual {v0, v3}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le/m/d/z/g/d;->l(J)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 34
    iget-object v6, v0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.google.firebase.perf.NetworkEventCountForeground"

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, v6, v3, v2}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 36
    :cond_6
    invoke-virtual {v0, v3}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le/m/d/z/g/d;->l(J)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 38
    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 39
    :cond_7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x2bc

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 42
    :goto_1
    new-instance v12, Le/m/d/z/n/f;

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v6, v12

    move-wide v7, v2

    move-object/from16 v11, v18

    invoke-direct/range {v6 .. v11}, Le/m/d/z/n/f;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v12, v1, Le/m/d/z/m/j$a;->g:Le/m/d/z/n/f;

    .line 43
    iput-wide v2, v1, Le/m/d/z/m/j$a;->i:J

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v5, :cond_8

    .line 44
    sget-object v10, Le/m/d/z/m/j$a;->k:Le/m/d/z/i/a;

    const-string v11, "Foreground %s logging rate:%f, burst capacity:%d"

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v4, v13, v8

    aput-object v12, v13, v7

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v6

    .line 46
    iget-boolean v2, v10, Le/m/d/z/i/a;->b:Z

    if-eqz v2, :cond_8

    .line 47
    iget-object v2, v10, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v2, "Trace"

    if-ne v4, v2, :cond_9

    .line 49
    invoke-virtual/range {p5 .. p5}, Le/m/d/z/g/d;->i()J

    move-result-wide v2

    goto :goto_2

    .line 50
    :cond_9
    invoke-virtual/range {p5 .. p5}, Le/m/d/z/g/d;->i()J

    move-result-wide v2

    :goto_2
    move-wide/from16 v16, v2

    const-string v2, "Trace"

    if-ne v4, v2, :cond_d

    .line 51
    const-class v2, Le/m/d/z/g/t;

    monitor-enter v2

    .line 52
    :try_start_2
    sget-object v3, Le/m/d/z/g/t;->a:Le/m/d/z/g/t;

    if-nez v3, :cond_a

    .line 53
    new-instance v3, Le/m/d/z/g/t;

    invoke-direct {v3}, Le/m/d/z/g/t;-><init>()V

    sput-object v3, Le/m/d/z/g/t;->a:Le/m/d/z/g/t;

    .line 54
    :cond_a
    sget-object v3, Le/m/d/z/g/t;->a:Le/m/d/z/g/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 55
    invoke-virtual {v0, v3}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Le/m/d/z/g/d;->l(J)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 57
    iget-object v0, v0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.google.firebase.perf.TraceEventCountBackground"

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-static {v10, v0, v3, v2}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_3

    .line 59
    :cond_b
    invoke-virtual {v0, v3}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Le/m/d/z/g/d;->l(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 61
    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_3

    .line 62
    :cond_c
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x1e

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    .line 65
    monitor-exit v2

    throw v0

    .line 66
    :cond_d
    const-class v2, Le/m/d/z/g/h;

    monitor-enter v2

    .line 67
    :try_start_3
    sget-object v3, Le/m/d/z/g/h;->a:Le/m/d/z/g/h;

    if-nez v3, :cond_e

    .line 68
    new-instance v3, Le/m/d/z/g/h;

    invoke-direct {v3}, Le/m/d/z/g/h;-><init>()V

    sput-object v3, Le/m/d/z/g/h;->a:Le/m/d/z/g/h;

    .line 69
    :cond_e
    sget-object v3, Le/m/d/z/g/h;->a:Le/m/d/z/g/h;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v2

    .line 70
    invoke-virtual {v0, v3}, Le/m/d/z/g/d;->k(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Le/m/d/z/g/d;->l(J)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 72
    iget-object v0, v0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.google.firebase.perf.NetworkEventCountBackground"

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-static {v10, v0, v3, v2}, Le/d/c/a/a;->D1(Ljava/lang/Long;Le/m/d/z/g/x;Ljava/lang/String;Le/m/d/z/n/e;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    .line 74
    :cond_f
    invoke-virtual {v0, v3}, Le/m/d/z/g/d;->c(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Le/m/d/z/g/d;->l(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 76
    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    .line 77
    :cond_10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x46

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 80
    :goto_3
    new-instance v0, Le/m/d/z/n/f;

    move-object v13, v0

    move-wide v14, v2

    invoke-direct/range {v13 .. v18}, Le/m/d/z/n/f;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, v1, Le/m/d/z/m/j$a;->h:Le/m/d/z/n/f;

    .line 81
    iput-wide v2, v1, Le/m/d/z/m/j$a;->j:J

    if-eqz v5, :cond_11

    .line 82
    sget-object v10, Le/m/d/z/m/j$a;->k:Le/m/d/z/i/a;

    const-string v11, "Background %s logging rate:%f, capacity:%d"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v8

    aput-object v0, v9, v7

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v6

    .line 84
    iget-boolean v0, v10, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_11

    .line 85
    iget-object v0, v10, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_11
    iput-boolean v5, v1, Le/m/d/z/m/j$a;->b:Z

    return-void

    :catchall_2
    move-exception v0

    .line 88
    monitor-exit v2

    throw v0

    :catchall_3
    move-exception v0

    .line 89
    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/d/z/m/j$a;->g:Le/m/d/z/n/f;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/d/z/m/j$a;->h:Le/m/d/z/n/f;

    :goto_0
    iput-object v0, p0, Le/m/d/z/m/j$a;->d:Le/m/d/z/n/f;

    if-eqz p1, :cond_1

    .line 2
    iget-wide v0, p0, Le/m/d/z/m/j$a;->i:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Le/m/d/z/m/j$a;->j:J

    :goto_1
    iput-wide v0, p0, Le/m/d/z/m/j$a;->e:J
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

.method public declared-synchronized b()Z
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/d/z/m/j$a;->a:Le/m/d/z/n/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Le/m/d/z/m/j$a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v2, Lcom/google/firebase/perf/util/Timer;->b:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 7
    iget-object v2, p0, Le/m/d/z/m/j$a;->d:Le/m/d/z/n/f;

    .line 8
    invoke-virtual {v2}, Le/m/d/z/n/f;->a()D

    move-result-wide v2

    mul-double/2addr v0, v2

    sget-wide v2, Le/m/d/z/m/j$a;->l:J

    long-to-double v4, v2

    div-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0x0

    .line 9
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 10
    iget-wide v6, p0, Le/m/d/z/m/j$a;->f:J

    add-long/2addr v6, v0

    iget-wide v8, p0, Le/m/d/z/m/j$a;->e:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Le/m/d/z/m/j$a;->f:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 11
    new-instance v6, Lcom/google/firebase/perf/util/Timer;

    iget-object v7, p0, Le/m/d/z/m/j$a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 12
    iget-wide v7, v7, Lcom/google/firebase/perf/util/Timer;->a:J

    mul-long/2addr v0, v2

    long-to-double v0, v0

    .line 13
    iget-object v2, p0, Le/m/d/z/m/j$a;->d:Le/m/d/z/n/f;

    .line 14
    invoke-virtual {v2}, Le/m/d/z/n/f;->a()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v7, v0

    invoke-direct {v6, v7, v8}, Lcom/google/firebase/perf/util/Timer;-><init>(J)V

    iput-object v6, p0, Le/m/d/z/m/j$a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 15
    :cond_0
    iget-wide v0, p0, Le/m/d/z/m/j$a;->f:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Le/m/d/z/m/j$a;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 17
    monitor-exit p0

    return v0

    .line 18
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Le/m/d/z/m/j$a;->b:Z

    if-eqz v0, :cond_2

    .line 19
    sget-object v0, Le/m/d/z/m/j$a;->k:Le/m/d/z/i/a;

    .line 20
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_2

    .line 21
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 22
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v0, 0x0

    .line 23
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
