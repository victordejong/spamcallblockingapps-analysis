.class public Le/m/d/n/j/p/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/p/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/d/n/j/p/j/f;

.field public final c:Le/m/d/n/j/p/g;

.field public final d:Le/m/d/n/j/j/r0;

.field public final e:Le/m/d/n/j/p/a;

.field public final f:Le/m/d/n/j/p/k/a;

.field public final g:Le/m/d/n/j/j/j0;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/m/d/n/j/p/j/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Le/m/d/n/j/p/j/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/d/n/j/p/j/f;Le/m/d/n/j/j/r0;Le/m/d/n/j/p/g;Le/m/d/n/j/p/a;Le/m/d/n/j/p/k/a;Le/m/d/n/j/j/j0;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, v0, Le/m/d/n/j/p/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Le/m/d/n/j/p/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, p1

    .line 4
    iput-object v3, v0, Le/m/d/n/j/p/e;->a:Landroid/content/Context;

    move-object v3, p2

    .line 5
    iput-object v3, v0, Le/m/d/n/j/p/e;->b:Le/m/d/n/j/p/j/f;

    .line 6
    iput-object v1, v0, Le/m/d/n/j/p/e;->d:Le/m/d/n/j/j/r0;

    move-object/from16 v3, p4

    .line 7
    iput-object v3, v0, Le/m/d/n/j/p/e;->c:Le/m/d/n/j/p/g;

    move-object/from16 v3, p5

    .line 8
    iput-object v3, v0, Le/m/d/n/j/p/e;->e:Le/m/d/n/j/p/a;

    move-object/from16 v3, p6

    .line 9
    iput-object v3, v0, Le/m/d/n/j/p/e;->f:Le/m/d/n/j/p/k/a;

    move-object/from16 v3, p7

    .line 10
    iput-object v3, v0, Le/m/d/n/j/p/e;->g:Le/m/d/n/j/j/j0;

    .line 11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "max_custom_exception_events"

    const/16 v5, 0x8

    .line 12
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 13
    new-instance v9, Le/m/d/n/j/p/j/c;

    const/4 v5, 0x4

    invoke-direct {v9, v4, v5}, Le/m/d/n/j/p/j/c;-><init>(II)V

    .line 14
    invoke-static {v3}, Le/m/d/n/j/p/b;->b(Lorg/json/JSONObject;)Le/m/d/n/j/p/j/b;

    move-result-object v10

    const-wide/16 v4, 0xe10

    .line 15
    invoke-static {v1, v4, v5, v3}, Le/m/d/n/j/p/b;->c(Le/m/d/n/j/j/r0;JLorg/json/JSONObject;)J

    move-result-wide v6

    .line 16
    new-instance v1, Le/m/d/n/j/p/j/e;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe10

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Le/m/d/n/j/p/j/e;-><init>(JLe/m/d/n/j/p/j/a;Le/m/d/n/j/p/j/c;Le/m/d/n/j/p/j/b;II)V

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Le/m/d/n/j/p/c;)Le/m/d/n/j/p/j/e;
    .locals 9

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget-object v3, Le/m/d/n/j/p/c;->b:Le/m/d/n/j/p/c;

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3
    iget-object v3, p0, Le/m/d/n/j/p/e;->e:Le/m/d/n/j/p/a;

    invoke-virtual {v3}, Le/m/d/n/j/p/a;->a()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz v3, :cond_4

    .line 4
    iget-object v5, p0, Le/m/d/n/j/p/e;->c:Le/m/d/n/j/p/g;

    invoke-virtual {v5, v3}, Le/m/d/n/j/p/g;->a(Lorg/json/JSONObject;)Le/m/d/n/j/p/j/e;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v4}, Le/m/d/n/j/f;->a(I)Z

    .line 7
    iget-object v3, p0, Le/m/d/n/j/p/e;->d:Le/m/d/n/j/j/r0;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 10
    sget-object v6, Le/m/d/n/j/p/c;->c:Le/m/d/n/j/p/c;

    invoke-virtual {v6, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v6, 0x2

    if-nez p1, :cond_2

    .line 11
    iget-wide v7, v5, Le/m/d/n/j/p/j/e;->d:J

    cmp-long p1, v7, v3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, v6}, Le/m/d/n/j/f;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 13
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v0, v6}, Le/m/d/n/j/f;->a(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v5

    goto :goto_3

    :catch_0
    move-object v2, v5

    goto :goto_2

    .line 14
    :cond_3
    :try_start_2
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v0, v4}, Le/m/d/n/j/f;->a(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 16
    :catch_1
    :goto_2
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    :cond_5
    :goto_3
    return-object v2
.end method

.method public b()Le/m/d/n/j/p/j/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/n/j/p/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/n/j/p/j/d;

    return-object v0
.end method
