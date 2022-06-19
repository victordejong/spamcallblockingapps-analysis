.class public final Le/m/a/c/j1/g$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/j1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Le/m/a/c/j1/n;

.field public final c:Le/m/a/c/j1/l;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/m/a/c/j1/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/m/a/c/j1/g$e;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Le/m/a/c/j1/n;Le/m/a/c/j1/l;Landroid/os/Handler;IIZ)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Le/m/a/c/j1/g$c;->a:Landroid/os/HandlerThread;

    .line 3
    iput-object p2, p0, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;

    .line 4
    iput-object p3, p0, Le/m/a/c/j1/g$c;->c:Le/m/a/c/j1/l;

    .line 5
    iput-object p4, p0, Le/m/a/c/j1/g$c;->d:Landroid/os/Handler;

    .line 6
    iput p5, p0, Le/m/a/c/j1/g$c;->i:I

    .line 7
    iput p6, p0, Le/m/a/c/j1/g$c;->j:I

    .line 8
    iput-boolean p7, p0, Le/m/a/c/j1/g$c;->h:Z

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/m/a/c/j1/g$c;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;
    .locals 13

    .line 1
    new-instance v12, Le/m/a/c/j1/f;

    iget-object v1, p0, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-wide v3, p0, Le/m/a/c/j1/f;->c:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Le/m/a/c/j1/f;->e:J

    iget-object v11, p0, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move v2, p1

    invoke-direct/range {v0 .. v11}, Le/m/a/c/j1/f;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILe/m/a/c/j1/i;)V

    return-object v12
.end method


# virtual methods
.method public final b(Ljava/lang/String;Z)Le/m/a/c/j1/f;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/c/j1/g$c;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/j1/f;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    iget-object p2, p0, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p2, Le/m/a/c/j1/d;

    :try_start_1
    invoke-virtual {p2, p1}, Le/m/a/c/j1/d;->c(Ljava/lang/String;)Le/m/a/c/j1/f;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load download: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/j1/f;

    .line 3
    iget-object v1, v1, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final d(Le/m/a/c/j1/f;)Le/m/a/c/j1/f;
    .locals 8

    .line 1
    sget-object v0, Le/m/a/c/j1/b;->a:Le/m/a/c/j1/b;

    iget v1, p1, Le/m/a/c/j1/f;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object v1, p1, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/m/a/c/j1/g$c;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 3
    iget-object v1, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 5
    :cond_1
    iget-wide v4, p1, Le/m/a/c/j1/f;->c:J

    iget-object v6, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/c/j1/f;

    iget-wide v6, v6, Le/m/a/c/j1/f;->c:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 6
    :goto_1
    iget-object v4, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 7
    iget-object v1, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    :cond_3
    :goto_2
    :try_start_0
    iget-object v0, p0, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Le/m/a/c/j1/d;

    :try_start_1
    invoke-virtual {v0, p1}, Le/m/a/c/j1/d;->f(Le/m/a/c/j1/f;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Failed to update index."

    .line 9
    invoke-static {v1, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 10
    :goto_3
    new-instance v0, Le/m/a/c/j1/g$b;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v3, v1}, Le/m/a/c/j1/g$b;-><init>(Le/m/a/c/j1/f;ZLjava/util/List;)V

    .line 11
    iget-object v1, p0, Le/m/a/c/j1/g$c;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method public final e(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 2
    invoke-static {p1, p2}, Le/m/a/c/j1/g$c;->a(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/m/a/c/j1/g$c;->d(Le/m/a/c/j1/f;)Le/m/a/c/j1/f;

    return-object p1
.end method

.method public final f(Le/m/a/c/j1/f;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v10, p2

    const/4 v2, 0x1

    if-nez v10, :cond_0

    .line 1
    iget v3, v1, Le/m/a/c/j1/f;->b:I

    if-ne v3, v2, :cond_3

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, v2}, Le/m/a/c/j1/g$c;->e(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;

    goto :goto_0

    .line 3
    :cond_0
    iget v3, v1, Le/m/a/c/j1/f;->f:I

    if-eq v10, v3, :cond_3

    .line 4
    iget v3, v1, Le/m/a/c/j1/f;->b:I

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    move v3, v2

    .line 5
    :cond_2
    new-instance v13, Le/m/a/c/j1/f;

    iget-object v2, v1, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-wide v4, v1, Le/m/a/c/j1/f;->c:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Le/m/a/c/j1/f;->e:J

    const/4 v11, 0x0

    iget-object v12, v1, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    move-object v1, v13

    move/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Le/m/a/c/j1/f;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILe/m/a/c/j1/i;)V

    .line 7
    invoke-virtual {p0, v13}, Le/m/a/c/j1/g$c;->d(Le/m/a/c/j1/f;)Le/m/a/c/j1/f;

    :cond_3
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    .line 2
    iget-object v3, p0, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/j1/f;

    .line 3
    iget-object v4, p0, Le/m/a/c/j1/g$c;->f:Ljava/util/HashMap;

    iget-object v5, v3, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/j1/g$e;

    .line 4
    iget v5, v3, Le/m/a/c/j1/f;->b:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    if-eq v5, v7, :cond_6

    if-eq v5, v6, :cond_3

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 6
    iget-boolean v3, v4, Le/m/a/c/j1/g$e;->d:Z

    if-nez v3, :cond_d

    .line 7
    invoke-virtual {v4, v0}, Le/m/a/c/j1/g$e;->a(Z)V

    goto/16 :goto_5

    .line 8
    :cond_2
    iget-object v5, p0, Le/m/a/c/j1/g$c;->c:Le/m/a/c/j1/l;

    iget-object v6, v3, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    check-cast v5, Le/m/a/c/j1/e;

    invoke-virtual {v5, v6}, Le/m/a/c/j1/e;->a(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Le/m/a/c/j1/j;

    move-result-object v9

    .line 9
    new-instance v5, Le/m/a/c/j1/g$e;

    iget-object v8, v3, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v10, v3, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    const/4 v11, 0x1

    iget v12, p0, Le/m/a/c/j1/g$c;->j:I

    const/4 v14, 0x0

    move-object v7, v5

    move-object v13, p0

    invoke-direct/range {v7 .. v14}, Le/m/a/c/j1/g$e;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Le/m/a/c/j1/j;Le/m/a/c/j1/i;ZILe/m/a/c/j1/g$c;Le/m/a/c/j1/g$a;)V

    .line 10
    iget-object v6, p0, Le/m/a/c/j1/g$c;->f:Ljava/util/HashMap;

    iget-object v3, v3, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    .line 12
    :cond_3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-boolean v5, v4, Le/m/a/c/j1/g$e;->d:Z

    xor-int/2addr v5, v7

    .line 14
    invoke-static {v5}, Ln3/g0/y;->x(Z)V

    .line 15
    iget-boolean v5, p0, Le/m/a/c/j1/g$c;->h:Z

    if-nez v5, :cond_4

    iget v5, p0, Le/m/a/c/j1/g$c;->g:I

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v7, v0

    :goto_2
    if-eqz v7, :cond_5

    .line 16
    iget v5, p0, Le/m/a/c/j1/g$c;->i:I

    if-lt v2, v5, :cond_d

    .line 17
    :cond_5
    invoke-virtual {p0, v3, v0}, Le/m/a/c/j1/g$c;->e(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;

    .line 18
    invoke-virtual {v4, v0}, Le/m/a/c/j1/g$e;->a(Z)V

    goto/16 :goto_5

    :cond_6
    if-eqz v4, :cond_d

    .line 19
    iget-boolean v3, v4, Le/m/a/c/j1/g$e;->d:Z

    xor-int/2addr v3, v7

    .line 20
    invoke-static {v3}, Ln3/g0/y;->x(Z)V

    .line 21
    invoke-virtual {v4, v0}, Le/m/a/c/j1/g$e;->a(Z)V

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    .line 22
    iget-boolean v3, v4, Le/m/a/c/j1/g$e;->d:Z

    xor-int/2addr v3, v7

    .line 23
    invoke-static {v3}, Ln3/g0/y;->x(Z)V

    .line 24
    invoke-virtual {v4, v0}, Le/m/a/c/j1/g$e;->a(Z)V

    goto :goto_5

    .line 25
    :cond_8
    iget-boolean v4, p0, Le/m/a/c/j1/g$c;->h:Z

    if-nez v4, :cond_9

    iget v4, p0, Le/m/a/c/j1/g$c;->g:I

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    move v7, v0

    :goto_3
    if-eqz v7, :cond_c

    .line 26
    iget v4, p0, Le/m/a/c/j1/g$c;->k:I

    iget v5, p0, Le/m/a/c/j1/g$c;->i:I

    if-lt v4, v5, :cond_a

    goto :goto_4

    .line 27
    :cond_a
    invoke-virtual {p0, v3, v6}, Le/m/a/c/j1/g$c;->e(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;

    move-result-object v3

    .line 28
    iget-object v4, p0, Le/m/a/c/j1/g$c;->c:Le/m/a/c/j1/l;

    iget-object v5, v3, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    check-cast v4, Le/m/a/c/j1/e;

    invoke-virtual {v4, v5}, Le/m/a/c/j1/e;->a(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Le/m/a/c/j1/j;

    move-result-object v8

    .line 29
    new-instance v4, Le/m/a/c/j1/g$e;

    iget-object v7, v3, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v9, v3, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    const/4 v10, 0x0

    iget v11, p0, Le/m/a/c/j1/g$c;->j:I

    const/4 v13, 0x0

    move-object v6, v4

    move-object v12, p0

    invoke-direct/range {v6 .. v13}, Le/m/a/c/j1/g$e;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Le/m/a/c/j1/j;Le/m/a/c/j1/i;ZILe/m/a/c/j1/g$c;Le/m/a/c/j1/g$a;)V

    .line 30
    iget-object v5, p0, Le/m/a/c/j1/g$c;->f:Ljava/util/HashMap;

    iget-object v3, v3, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget v3, p0, Le/m/a/c/j1/g$c;->k:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Le/m/a/c/j1/g$c;->k:I

    if-nez v3, :cond_b

    const/16 v3, 0xb

    const-wide/16 v5, 0x1388

    .line 32
    invoke-virtual {p0, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v3, 0x0

    move-object v4, v3

    :cond_d
    :goto_5
    if-eqz v4, :cond_e

    .line 34
    iget-boolean v3, v4, Le/m/a/c/j1/g$e;->d:Z

    if-nez v3, :cond_e

    add-int/lit8 v2, v2, 0x1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, v1, Le/m/a/c/j1/g$c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/j1/g$e;

    .line 4
    invoke-virtual {v2, v11}, Le/m/a/c/j1/g$e;->a(Z)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Le/m/a/c/j1/d;

    :try_start_1
    invoke-virtual {v0}, Le/m/a/c/j1/d;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Failed to update index."

    .line 6
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 7
    :goto_1
    iget-object v0, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, v1, Le/m/a/c/j1/g$c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 9
    monitor-enter p0

    .line 10
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 12
    :goto_2
    :pswitch_1
    iget-object v0, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 13
    iget-object v0, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/j1/f;

    .line 14
    iget v2, v0, Le/m/a/c/j1/f;->b:I

    if-ne v2, v8, :cond_1

    .line 15
    :try_start_3
    iget-object v2, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    check-cast v2, Le/m/a/c/j1/d;

    :try_start_4
    invoke-virtual {v2, v0}, Le/m/a/c/j1/d;->f(Le/m/a/c/j1/f;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "Failed to update index."

    .line 16
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_1
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x1388

    .line 17
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 18
    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Le/m/a/c/j1/g$e;

    .line 19
    iget-object v2, v0, Le/m/a/c/j1/g$e;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 20
    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    .line 21
    iget-wide v3, v0, Le/m/a/c/j1/g$e;->i:J

    .line 22
    invoke-virtual {v1, v2, v10}, Le/m/a/c/j1/g$c;->b(Ljava/lang/String;Z)Le/m/a/c/j1/f;

    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-wide v5, v0, Le/m/a/c/j1/f;->e:J

    cmp-long v2, v3, v5

    if-eqz v2, :cond_4

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-nez v2, :cond_3

    goto :goto_4

    .line 25
    :cond_3
    new-instance v2, Le/m/a/c/j1/f;

    iget-object v12, v0, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget v13, v0, Le/m/a/c/j1/f;->b:I

    iget-wide v14, v0, Le/m/a/c/j1/f;->c:J

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget v5, v0, Le/m/a/c/j1/f;->f:I

    iget v6, v0, Le/m/a/c/j1/f;->g:I

    iget-object v0, v0, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    move-object v11, v2

    move-wide/from16 v18, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v0

    invoke-direct/range {v11 .. v22}, Le/m/a/c/j1/f;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILe/m/a/c/j1/i;)V

    .line 27
    invoke-virtual {v1, v2}, Le/m/a/c/j1/g$c;->d(Le/m/a/c/j1/f;)Le/m/a/c/j1/f;

    :cond_4
    :goto_4
    return-void

    .line 28
    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Le/m/a/c/j1/g$e;

    .line 29
    iget-object v2, v0, Le/m/a/c/j1/g$e;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 30
    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    .line 31
    iget-object v5, v1, Le/m/a/c/j1/g$c;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-boolean v5, v0, Le/m/a/c/j1/g$e;->d:Z

    if-nez v5, :cond_5

    .line 33
    iget v12, v1, Le/m/a/c/j1/g$c;->k:I

    sub-int/2addr v12, v11

    iput v12, v1, Le/m/a/c/j1/g$c;->k:I

    if-nez v12, :cond_5

    .line 34
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    :cond_5
    iget-boolean v3, v0, Le/m/a/c/j1/g$e;->g:Z

    if-eqz v3, :cond_6

    .line 36
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_23

    .line 37
    :cond_6
    iget-object v3, v0, Le/m/a/c/j1/g$e;->h:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    const-string v12, "Task failed: "

    .line 38
    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 39
    iget-object v0, v0, Le/m/a/c/j1/g$e;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 40
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0, v3}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 42
    :cond_7
    invoke-virtual {v1, v2, v10}, Le/m/a/c/j1/g$c;->b(Ljava/lang/String;Z)Le/m/a/c/j1/f;

    move-result-object v2

    .line 43
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget v0, v2, Le/m/a/c/j1/f;->b:I

    if-eq v0, v8, :cond_c

    if-eq v0, v9, :cond_9

    if-ne v0, v4, :cond_8

    goto :goto_5

    .line 45
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 46
    :cond_9
    :goto_5
    invoke-static {v5}, Ln3/g0/y;->x(Z)V

    .line 47
    iget v0, v2, Le/m/a/c/j1/f;->b:I

    if-ne v0, v4, :cond_b

    .line 48
    iget v0, v2, Le/m/a/c/j1/f;->f:I

    if-nez v0, :cond_a

    move v0, v10

    goto :goto_6

    :cond_a
    move v0, v11

    :goto_6
    invoke-virtual {v1, v2, v0}, Le/m/a/c/j1/g$c;->e(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;

    .line 49
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_b

    .line 50
    :cond_b
    iget-object v0, v2, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v0, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/m/a/c/j1/g$c;->c(Ljava/lang/String;)I

    move-result v0

    .line 51
    iget-object v3, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    :try_start_5
    iget-object v0, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;

    iget-object v3, v2, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    check-cast v0, Le/m/a/c/j1/d;

    .line 53
    invoke-virtual {v0}, Le/m/a/c/j1/d;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 54
    :try_start_6
    iget-object v0, v0, Le/m/a/c/j1/d;->a:Le/m/a/c/d1/b;

    invoke-interface {v0}, Le/m/a/c/d1/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const-string v4, "ExoPlayerDownloads"

    :try_start_7
    const-string v5, "id = ?"

    new-array v6, v11, [Ljava/lang/String;

    aput-object v3, v6, v10

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_2
    move-exception v0

    .line 55
    :try_start_8
    new-instance v3, Le/m/a/c/d1/a;

    invoke-direct {v3, v0}, Le/m/a/c/d1/a;-><init>(Landroid/database/SQLException;)V

    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 56
    :catch_3
    :goto_7
    new-instance v0, Le/m/a/c/j1/g$b;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2, v11, v3}, Le/m/a/c/j1/g$b;-><init>(Le/m/a/c/j1/f;ZLjava/util/List;)V

    .line 57
    iget-object v2, v1, Le/m/a/c/j1/g$c;->d:Landroid/os/Handler;

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b

    :cond_c
    xor-int/lit8 v0, v5, 0x1

    .line 58
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 59
    new-instance v4, Le/m/a/c/j1/f;

    iget-object v13, v2, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    if-nez v3, :cond_d

    move v14, v7

    goto :goto_8

    :cond_d
    move v14, v6

    :goto_8
    iget-wide v5, v2, Le/m/a/c/j1/f;->c:J

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-wide v7, v2, Le/m/a/c/j1/f;->e:J

    iget v0, v2, Le/m/a/c/j1/f;->f:I

    if-nez v3, :cond_e

    move/from16 v22, v10

    goto :goto_9

    :cond_e
    move/from16 v22, v11

    :goto_9
    iget-object v2, v2, Le/m/a/c/j1/f;->h:Le/m/a/c/j1/i;

    move-object v12, v4

    move-wide v15, v5

    move-wide/from16 v19, v7

    move/from16 v21, v0

    move-object/from16 v23, v2

    invoke-direct/range {v12 .. v23}, Le/m/a/c/j1/f;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJIILe/m/a/c/j1/i;)V

    .line 61
    iget-object v0, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    iget-object v2, v4, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Le/m/a/c/j1/g$c;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    :try_start_9
    iget-object v0, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    check-cast v0, Le/m/a/c/j1/d;

    :try_start_a
    invoke-virtual {v0, v4}, Le/m/a/c/j1/d;->f(Le/m/a/c/j1/f;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    const-string v2, "Failed to update index."

    .line 63
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 64
    :goto_a
    new-instance v0, Le/m/a/c/j1/g$b;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v4, v10, v2}, Le/m/a/c/j1/g$b;-><init>(Le/m/a/c/j1/f;ZLjava/util/List;)V

    .line 65
    iget-object v2, v1, Le/m/a/c/j1/g$c;->d:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    :goto_b
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_23

    .line 67
    :pswitch_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :try_start_b
    iget-object v0, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v7, v3, v10

    aput v6, v3, v11

    check-cast v0, Le/m/a/c/j1/d;

    .line 69
    invoke-virtual {v0}, Le/m/a/c/j1/d;->a()V

    .line 70
    invoke-static {v3}, Le/m/a/c/j1/d;->e([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Le/m/a/c/j1/d;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 71
    :goto_c
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/2addr v0, v11

    .line 72
    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    invoke-static {v3}, Le/m/a/c/j1/d;->d(Landroid/database/Cursor;)Le/m/a/c/j1/f;

    move-result-object v0

    .line 74
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_c

    .line 75
    :cond_f
    :try_start_d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 76
    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    move-object v5, v0

    .line 77
    :try_start_f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 78
    :try_start_10
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v5
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :catch_5
    :goto_e
    move v0, v10

    .line 79
    :goto_f
    iget-object v3, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 80
    iget-object v3, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/j1/f;

    invoke-static {v4, v9}, Le/m/a/c/j1/g$c;->a(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_10
    move v0, v10

    .line 81
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    .line 82
    iget-object v3, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/j1/f;

    invoke-static {v4, v9}, Le/m/a/c/j1/g$c;->a(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 83
    :cond_11
    iget-object v0, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    sget-object v2, Le/m/a/c/j1/b;->a:Le/m/a/c/j1/b;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    :try_start_11
    iget-object v0, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    check-cast v0, Le/m/a/c/j1/d;

    :try_start_12
    invoke-virtual {v0}, Le/m/a/c/j1/d;->h()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    const-string v2, "Failed to update index."

    .line 85
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 86
    :goto_11
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v10

    .line 87
    :goto_12
    iget-object v3, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 88
    new-instance v3, Le/m/a/c/j1/g$b;

    iget-object v4, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/j1/f;

    invoke-direct {v3, v4, v10, v0}, Le/m/a/c/j1/g$b;-><init>(Le/m/a/c/j1/f;ZLjava/util/List;)V

    .line 90
    iget-object v4, v1, Le/m/a/c/j1/g$c;->d:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 91
    :cond_12
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_22

    .line 92
    :pswitch_5
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-virtual {v1, v0, v11}, Le/m/a/c/j1/g$c;->b(Ljava/lang/String;Z)Le/m/a/c/j1/f;

    move-result-object v0

    if-nez v0, :cond_13

    goto/16 :goto_22

    .line 94
    :cond_13
    invoke-virtual {v1, v0, v9}, Le/m/a/c/j1/g$c;->e(Le/m/a/c/j1/f;I)Le/m/a/c/j1/f;

    .line 95
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_22

    .line 96
    :pswitch_6
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 97
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 98
    iget-object v2, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v11}, Le/m/a/c/j1/g$c;->b(Ljava/lang/String;Z)Le/m/a/c/j1/f;

    move-result-object v2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    if-eqz v2, :cond_1f

    .line 100
    iget v3, v2, Le/m/a/c/j1/f;->b:I

    if-eq v3, v9, :cond_17

    if-eq v3, v7, :cond_15

    if-ne v3, v6, :cond_14

    goto :goto_13

    :cond_14
    move v5, v10

    goto :goto_14

    :cond_15
    :goto_13
    move v5, v11

    :goto_14
    if-eqz v5, :cond_16

    goto :goto_15

    .line 101
    :cond_16
    iget-wide v5, v2, Le/m/a/c/j1/f;->c:J

    move-wide/from16 v17, v5

    goto :goto_16

    :cond_17
    :goto_15
    move-wide/from16 v17, v19

    :goto_16
    if-eq v3, v9, :cond_1a

    if-ne v3, v4, :cond_18

    goto :goto_17

    :cond_18
    if-eqz v0, :cond_19

    move/from16 v16, v11

    goto :goto_18

    :cond_19
    move/from16 v16, v10

    goto :goto_18

    :cond_1a
    :goto_17
    move/from16 v16, v4

    .line 102
    :goto_18
    new-instance v3, Le/m/a/c/j1/f;

    iget-object v2, v2, Le/m/a/c/j1/f;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 103
    iget-object v4, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    iget-object v5, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ln3/g0/y;->r(Z)V

    .line 104
    iget-object v4, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->b:Ljava/lang/String;

    iget-object v5, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ln3/g0/y;->r(Z)V

    .line 105
    iget-object v4, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_1a

    .line 106
    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->d:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    :goto_19
    iget-object v5, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v10, v5, :cond_1e

    .line 108
    iget-object v5, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->d:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/offline/StreamKey;

    .line 109
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 110
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 111
    :cond_1d
    :goto_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_1e
    move-object/from16 v25, v4

    .line 112
    new-instance v15, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v4, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->b:Ljava/lang/String;

    iget-object v5, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->c:Landroid/net/Uri;

    iget-object v6, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->e:Ljava/lang/String;

    iget-object v7, v13, Lcom/google/android/exoplayer2/offline/DownloadRequest;->f:[B

    move-object/from16 v21, v15

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    invoke-direct/range {v21 .. v27}, Lcom/google/android/exoplayer2/offline/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    const-wide/16 v21, -0x1

    const/16 v24, 0x0

    move-object v14, v3

    move/from16 v23, v0

    .line 113
    invoke-direct/range {v14 .. v24}, Le/m/a/c/j1/f;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    .line 114
    invoke-virtual {v1, v3}, Le/m/a/c/j1/g$c;->d(Le/m/a/c/j1/f;)Le/m/a/c/j1/f;

    goto :goto_1c

    .line 115
    :cond_1f
    new-instance v2, Le/m/a/c/j1/f;

    if-eqz v0, :cond_20

    move v14, v11

    goto :goto_1b

    :cond_20
    move v14, v10

    :goto_1b
    const-wide/16 v3, -0x1

    const/16 v22, 0x0

    move-object v12, v2

    move-wide/from16 v15, v19

    move-wide/from16 v17, v19

    move-wide/from16 v19, v3

    move/from16 v21, v0

    invoke-direct/range {v12 .. v22}, Le/m/a/c/j1/f;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;IJJJII)V

    invoke-virtual {v1, v2}, Le/m/a/c/j1/g$c;->d(Le/m/a/c/j1/f;)Le/m/a/c/j1/f;

    .line 116
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_22

    .line 117
    :pswitch_7
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 118
    iput v0, v1, Le/m/a/c/j1/g$c;->j:I

    goto/16 :goto_22

    .line 119
    :pswitch_8
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 120
    iput v0, v1, Le/m/a/c/j1/g$c;->i:I

    .line 121
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_22

    .line 122
    :pswitch_9
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 123
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_22

    .line 124
    :goto_1d
    iget-object v2, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_21

    .line 125
    iget-object v2, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/j1/f;

    invoke-virtual {v1, v2, v0}, Le/m/a/c/j1/g$c;->f(Le/m/a/c/j1/f;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    .line 126
    :cond_21
    :try_start_13
    iget-object v2, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;

    check-cast v2, Le/m/a/c/j1/d;

    .line 127
    invoke-virtual {v2}, Le/m/a/c/j1/d;->a()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 128
    :try_start_14
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "stop_reason"

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    iget-object v0, v2, Le/m/a/c/j1/d;->a:Le/m/a/c/d1/b;

    invoke-interface {v0}, Le/m/a/c/d1/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    const-string v2, "ExoPlayerDownloads"

    .line 131
    :try_start_15
    sget-object v4, Le/m/a/c/j1/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_1e

    :catch_7
    move-exception v0

    .line 132
    :try_start_16
    new-instance v2, Le/m/a/c/d1/a;

    invoke-direct {v2, v0}, Le/m/a/c/d1/a;-><init>(Landroid/database/SQLException;)V

    throw v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    :catch_8
    move-exception v0

    const-string v2, "Failed to set manual stop reason"

    .line 133
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1e

    .line 134
    :cond_22
    invoke-virtual {v1, v2, v10}, Le/m/a/c/j1/g$c;->b(Ljava/lang/String;Z)Le/m/a/c/j1/f;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 135
    invoke-virtual {v1, v3, v0}, Le/m/a/c/j1/g$c;->f(Le/m/a/c/j1/f;I)V

    goto :goto_1e

    .line 136
    :cond_23
    :try_start_17
    iget-object v3, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    check-cast v3, Le/m/a/c/j1/d;

    :try_start_18
    invoke-virtual {v3, v2, v0}, Le/m/a/c/j1/d;->i(Ljava/lang/String;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    goto :goto_1e

    :catch_9
    move-exception v0

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set manual stop reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 139
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_22

    .line 140
    :pswitch_a
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 141
    iput v0, v1, Le/m/a/c/j1/g$c;->g:I

    .line 142
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_22

    .line 143
    :pswitch_b
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_24

    move v10, v11

    .line 144
    :cond_24
    iput-boolean v10, v1, Le/m/a/c/j1/g$c;->h:Z

    .line 145
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    goto/16 :goto_22

    .line 146
    :pswitch_c
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 147
    iput v0, v1, Le/m/a/c/j1/g$c;->g:I

    .line 148
    :try_start_19
    iget-object v0, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    check-cast v0, Le/m/a/c/j1/d;

    :try_start_1a
    invoke-virtual {v0}, Le/m/a/c/j1/d;->g()V

    .line 149
    iget-object v0, v1, Le/m/a/c/j1/g$c;->b:Le/m/a/c/j1/n;

    new-array v2, v9, [I

    aput v10, v2, v10

    aput v11, v2, v11

    const/4 v3, 0x2

    aput v3, v2, v3

    aput v9, v2, v7

    aput v4, v2, v6

    .line 150
    check-cast v0, Le/m/a/c/j1/d;

    .line 151
    invoke-virtual {v0}, Le/m/a/c/j1/d;->a()V

    .line 152
    invoke-static {v2}, Le/m/a/c/j1/d;->e([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Le/m/a/c/j1/d;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 153
    new-instance v2, Le/m/a/c/j1/d$b;

    invoke-direct {v2, v0, v5}, Le/m/a/c/j1/d$b;-><init>(Landroid/database/Cursor;Le/m/a/c/j1/d$a;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 154
    :goto_1f
    :try_start_1b
    iget-object v0, v2, Le/m/a/c/j1/d$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/2addr v0, v11

    .line 155
    iget-object v3, v2, Le/m/a/c/j1/d$b;->a:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 156
    iget-object v0, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    .line 157
    iget-object v3, v2, Le/m/a/c/j1/d$b;->a:Landroid/database/Cursor;

    .line 158
    invoke-static {v3}, Le/m/a/c/j1/d;->d(Landroid/database/Cursor;)Le/m/a/c/j1/f;

    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto :goto_1f

    .line 160
    :cond_25
    sget v0, Le/m/a/c/q1/d0;->a:I

    goto :goto_21

    :catchall_4
    move-exception v0

    goto :goto_25

    :catch_a
    move-exception v0

    move-object v5, v2

    goto :goto_20

    :catchall_5
    move-exception v0

    goto :goto_24

    :catch_b
    move-exception v0

    :goto_20
    :try_start_1c
    const-string v2, "Failed to load index."

    .line 161
    invoke-static {v2, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 162
    iget-object v0, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 163
    sget v0, Le/m/a/c/q1/d0;->a:I

    if-eqz v5, :cond_26

    move-object v2, v5

    .line 164
    :goto_21
    :try_start_1d
    invoke-virtual {v2}, Le/m/a/c/j1/d$b;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c

    .line 165
    :catch_c
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Le/m/a/c/j1/g$c;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    iget-object v2, v1, Le/m/a/c/j1/g$c;->d:Landroid/os/Handler;

    invoke-virtual {v2, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j1/g$c;->g()V

    :goto_22
    move v10, v11

    .line 168
    :goto_23
    iget-object v0, v1, Le/m/a/c/j1/g$c;->d:Landroid/os/Handler;

    iget-object v2, v1, Le/m/a/c/j1/g$c;->f:Ljava/util/HashMap;

    .line 169
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v11, v10, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_24
    move-object v2, v5

    .line 171
    :goto_25
    sget v3, Le/m/a/c/q1/d0;->a:I

    if-eqz v2, :cond_27

    .line 172
    :try_start_1e
    invoke-virtual {v2}, Le/m/a/c/j1/d$b;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d

    .line 173
    :catch_d
    :cond_27
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
