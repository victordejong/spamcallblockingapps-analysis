.class public final Le/a/a/k/a/a/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/z;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/g/g;

.field public final c:Le/a/a/k/a/p;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/k/a/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventProcessor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a/a0;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/a/a/a0;->b:Le/a/a/g/g;

    iput-object p3, p0, Le/a/a/k/a/a/a0;->c:Le/a/a/k/a/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[BJI)V
    .locals 2

    const-string v0, "rawId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventData"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "reference_raw_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    .line 3
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "im_group_id"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "seq_number"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "event_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget-object p1, p0, Le/a/a/k/a/a/a0;->a:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->u()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    const-string v0, "rawId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/k/a/a/a0;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->u()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v3, 0x0

    const-string v4, "reference_raw_id=?"

    const-string v6, "seq_number"

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Le/a/a/k/a/a/a0;->b:Le/a/a/g/g;

    invoke-interface {v1, p1}, Le/a/a/g/g;->a(Landroid/database/Cursor;)Le/a/a/g/j0/j;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p1}, Le/a/a/g/j0/j;->W1()Lcom/truecaller/messaging/data/types/UnprocessedEvent;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/UnprocessedEvent;->b:[B

    .line 8
    invoke-static {v3}, Lcom/truecaller/api/services/messenger/v1/events/Event;->parseFrom([B)Lcom/truecaller/api/services/messenger/v1/events/Event;

    move-result-object v3

    .line 9
    iget-object v4, p0, Le/a/a/k/a/a/a0;->c:Le/a/a/k/a/p;

    const-string v5, "event"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget v5, v2, Lcom/truecaller/messaging/data/types/UnprocessedEvent;->f:I

    .line 11
    invoke-interface {v4, v3, v7, v5}, Le/a/a/k/a/p;->a(Lcom/truecaller/api/services/messenger/v1/events/Event;ZI)Lcom/truecaller/messaging/transport/im/ProcessResult;

    .line 12
    iget v2, v2, Lcom/truecaller/messaging/data/types/UnprocessedEvent;->a:I

    .line 13
    iget-object v3, p0, Le/a/a/k/a/a/a0;->a:Landroid/content/ContentResolver;

    .line 14
    invoke-static {}, Le/a/b0/q/g0;->u()Landroid/net/Uri;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    const-string v2, "_id=?"

    .line 16
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 17
    :try_start_2
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;J)V
    .locals 4

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/a0;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->u()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "im_group_id = ? AND seq_number < ?"

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
