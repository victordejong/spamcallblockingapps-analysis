.class public final Le/a/a/k/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/t;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/a/k/a/s1;

.field public final c:Lu3/e0;

.field public final d:Le/a/q2/a;

.field public final e:Le/a/a/g/g;

.field public final f:Landroid/content/ContentResolver;

.field public final g:Le/a/a/k/a/g;

.field public final h:Le/a/b0/q/b;

.field public final i:Le/a/a/i0;

.field public final j:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/p4/b;

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/k/a/g2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Le/a/a/k/a/s1;Lu3/e0;Le/a/q2/a;Le/a/a/g/g;Landroid/content/ContentResolver;Le/a/a/k/a/g;Le/a/b0/q/b;Le/a/a/i0;Le/a/r2/f;Le/a/p4/b;Lo3/a;)V
    .locals 1
    .param p3    # Lu3/e0;
        .annotation runtime Ljavax/inject/Named;
            value = "ImClient"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/a/k/t;",
            ">;",
            "Le/a/a/k/a/s1;",
            "Lu3/e0;",
            "Le/a/q2/a;",
            "Le/a/a/g/g;",
            "Landroid/content/ContentResolver;",
            "Le/a/a/k/a/g;",
            "Le/a/b0/q/b;",
            "Le/a/a/i0;",
            "Le/a/r2/f<",
            "Le/a/o5/x;",
            ">;",
            "Le/a/p4/b;",
            "Lo3/a<",
            "Le/a/a/k/a/g2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "transportManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stubManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenNumberHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStoreHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingSettings"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaMenuSettings"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/u;->a:Lo3/a;

    iput-object p2, p0, Le/a/a/k/a/u;->b:Le/a/a/k/a/s1;

    iput-object p3, p0, Le/a/a/k/a/u;->c:Lu3/e0;

    iput-object p4, p0, Le/a/a/k/a/u;->d:Le/a/q2/a;

    iput-object p5, p0, Le/a/a/k/a/u;->e:Le/a/a/g/g;

    iput-object p6, p0, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    iput-object p7, p0, Le/a/a/k/a/u;->g:Le/a/a/k/a/g;

    iput-object p8, p0, Le/a/a/k/a/u;->h:Le/a/b0/q/b;

    iput-object p9, p0, Le/a/a/k/a/u;->i:Le/a/a/i0;

    iput-object p10, p0, Le/a/a/k/a/u;->j:Le/a/r2/f;

    iput-object p11, p0, Le/a/a/k/a/u;->k:Le/a/p4/b;

    iput-object p12, p0, Le/a/a/k/a/u;->l:Lo3/a;

    return-void
.end method


# virtual methods
.method public final a(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 32

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v0, v1, Le/a/a/k/a/u;->e:Le/a/a/g/g;

    .line 2
    iget-object v3, v1, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p3

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5
    invoke-interface {v0, v3}, Le/a/a/g/g;->q(Landroid/database/Cursor;)Le/a/a/g/j0/c;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_4

    .line 6
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 7
    invoke-interface {v3}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    instance-of v4, v0, Lcom/truecaller/messaging/data/types/AudioEntity;

    if-nez v4, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/truecaller/messaging/data/types/AudioEntity;

    if-eqz v0, :cond_2

    .line 8
    sget-object v8, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    .line 9
    iget-object v11, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 10
    iget v0, v0, Lcom/truecaller/messaging/data/types/AudioEntity;->v:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const v31, 0x3ff30

    move-wide/from16 v9, p3

    move-object/from16 v13, p5

    move/from16 v16, v0

    move-wide/from16 v17, p1

    .line 11
    invoke-static/range {v8 .. v31}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    move-object v0, v2

    .line 12
    :goto_0
    :try_start_2
    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v0

    goto :goto_1

    .line 13
    :cond_3
    :try_start_3
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 14
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 15
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2

    :catchall_3
    move-exception v0

    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_6
    throw v0
.end method

.method public b(Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;J)Le/a/r2/x;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;",
            "J)",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/transport/im/SendResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "type"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 2
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "msg/msg_im_report_message"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    move-wide/from16 v4, p2

    .line 4
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v4, v1, Le/a/a/k/a/u;->e:Le/a/a/g/g;

    invoke-interface {v4, v0}, Le/a/a/g/g;->c(Landroid/database/Cursor;)Le/a/a/k/a/h2/b;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Le/a/a/k/a/h2/b;->G1()Le/a/a/k/a/h2/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-static {v4, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v4, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_b

    .line 8
    iget-object v0, v4, Le/a/a/k/a/h2/a;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, v4, Le/a/a/k/a/h2/a;->d:Lcom/truecaller/data/entity/messaging/Participant;

    .line 10
    invoke-static {v0}, Le/a/a/i1/h;->g(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v0}, Le/a/c/p/a;->n(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v0

    :goto_2
    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 12
    iget-object v6, v4, Le/a/a/k/a/h2/a;->d:Lcom/truecaller/data/entity/messaging/Participant;

    .line 13
    iget v6, v6, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-eq v6, v5, :cond_6

    .line 14
    sget-object v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;->READ:Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;

    if-ne v2, v6, :cond_3

    .line 15
    iget-object v6, v4, Le/a/a/k/a/h2/a;->c:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 16
    iget-object v6, v1, Le/a/a/k/a/u;->i:Le/a/a/i0;

    invoke-interface {v6}, Le/a/a/i0;->k()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 17
    :cond_3
    iget-object v6, v4, Le/a/a/k/a/h2/a;->a:Ljava/lang/String;

    .line 18
    iget-wide v7, v4, Le/a/a/k/a/h2/a;->b:J

    const-string v9, " report"

    const-string v10, "Could not send "

    .line 19
    iget-object v11, v1, Le/a/a/k/a/u;->b:Le/a/a/k/a/s1;

    invoke-static {v11, v3, v5, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v3

    check-cast v3, Le/a/t2/a/e/a/b$a;

    if-eqz v3, :cond_5

    .line 20
    :try_start_2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/SendReport$Request$a;

    move-result-object v11

    .line 21
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 22
    iget-object v12, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v12, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;

    invoke-static {v12, v6}, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;->access$400(Lcom/truecaller/api/services/messenger/v1/SendReport$Request;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 24
    iget-object v6, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;

    invoke-static {v6, v0}, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/SendReport$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 25
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 26
    iget-object v6, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;

    invoke-static {v6, v2}, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;->access$800(Lcom/truecaller/api/services/messenger/v1/SendReport$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputReportType;)V

    .line 27
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 28
    iget-object v6, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;

    invoke-static {v6, v7, v8}, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;->access$1000(Lcom/truecaller/api/services/messenger/v1/SendReport$Request;J)V

    .line 29
    invoke-virtual {v1, v0}, Le/a/a/k/a/u;->n(Le/a/t2/a/e/a/d/h/b;)Z

    move-result v0

    .line 30
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 31
    iget-object v6, v11, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;

    invoke-static {v6, v0}, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;->access$1200(Lcom/truecaller/api/services/messenger/v1/SendReport$Request;Z)V

    .line 32
    invoke-virtual {v11}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 33
    check-cast v0, Lcom/truecaller/api/services/messenger/v1/SendReport$Request;

    invoke-virtual {v3, v0}, Le/a/t2/a/e/a/b$a;->s(Lcom/truecaller/api/services/messenger/v1/SendReport$Request;)Lcom/truecaller/api/services/messenger/v1/SendReport$Response;

    .line 34
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->SUCCESS:Lcom/truecaller/messaging/transport/im/SendResult;
    :try_end_2
    .catch Lp3/a/i1; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 35
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_PERMANENT:Lcom/truecaller/messaging/transport/im/SendResult;

    goto :goto_3

    :catch_1
    move-exception v0

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    iget-object v0, v0, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v3, "e.status"

    .line 39
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->B1(Lp3/a/g1;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_TRANSIENT:Lcom/truecaller/messaging/transport/im/SendResult;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_PERMANENT:Lcom/truecaller/messaging/transport/im/SendResult;

    goto :goto_3

    .line 40
    :cond_5
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_PERMANENT:Lcom/truecaller/messaging/transport/im/SendResult;

    :goto_3
    move-object v3, v0

    :cond_6
    if-nez v3, :cond_7

    const/4 v0, 0x5

    goto :goto_4

    .line 41
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_4

    :cond_8
    const/4 v0, 0x4

    :goto_4
    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const-wide/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const-wide/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    const/16 v27, -0x1

    .line 42
    iget-object v9, v4, Le/a/a/k/a/h2/a;->a:Ljava/lang/String;

    const-string v4, "rawId"

    .line 43
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-string v6, "report_type"

    const-string v13, "update_report_sync_status"

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-eq v4, v5, :cond_a

    if-ne v4, v15, :cond_9

    .line 45
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    move v13, v0

    move v0, v14

    goto :goto_5

    .line 47
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown report type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    move v13, v14

    :goto_5
    const-string v4, "when (type) {\n          \u2026rt type $type\")\n        }"

    .line 50
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v4, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    move-object v6, v4

    const/16 v19, 0x0

    move-object/from16 v25, v19

    const/4 v5, 0x0

    move v15, v5

    move v5, v14

    move v14, v0

    invoke-direct/range {v6 .. v28}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;-><init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V

    const-string v0, "transport_info"

    .line 52
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    iget-object v0, v1, Le/a/a/k/a/u;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/t;

    const/4 v4, 0x2

    invoke-interface {v0, v4, v2, v5}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    .line 54
    invoke-static {v3}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v2, "Promise.wrap(result)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 55
    :cond_b
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_PERMANENT:Lcom/truecaller/messaging/transport/im/SendResult;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v2, "Promise.wrap(FAILURE_PERMANENT)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()V
    .locals 39

    move-object/from16 v8, p0

    .line 1
    iget-object v1, v8, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 2
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v2, "msg_im_attachments_entities"

    .line 3
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v9, "_id"

    const-string v10, "entity_id"

    const-string v11, "source_uri"

    const-string v12, "current_uri"

    const-string v13, "size"

    const-string v14, "mime_type"

    const-string v15, "thumbnail_uri"

    .line 4
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "status=1"

    const/4 v5, 0x0

    const-string v6, "_id ASC"

    .line 5
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 6
    :try_start_0
    new-instance v0, Le/a/a/k/a/u$b;

    invoke-direct {v0, v1}, Le/a/a/k/a/u$b;-><init>(Landroid/database/Cursor;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->e1(Ls1/z/b/a;)Ls1/e0/k;

    move-result-object v0

    .line 7
    new-instance v2, Le/a/a/k/a/u$a;

    invoke-direct {v2, v1, v8}, Le/a/a/k/a/u$a;-><init>(Landroid/database/Cursor;Le/a/a/k/a/u;)V

    invoke-static {v0, v2}, Ls1/e0/x;->l(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/a/k/c0/a;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 12
    iget-object v0, v8, Le/a/a/k/a/u;->k:Le/a/p4/b;

    invoke-interface {v0}, Le/a/p4/b;->m0()Z

    move-result v0

    const-string v13, "contentType"

    const-string v14, "tenor/gif"

    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v8, v10, v3}, Le/a/a/k/a/u;->g(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_8

    :cond_0
    const/16 v19, 0x0

    .line 13
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v17, "GET"

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0x14

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    iget-object v6, v10, Le/a/a/k/c0/a;->c:Lu3/a0;

    const-string v7, "url"

    .line 16
    invoke-static {v6, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/String;

    .line 17
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    check-cast v3, [Ljava/lang/String;

    .line 18
    new-instance v4, Lu3/z;

    invoke-direct {v4, v3, v2}, Lu3/z;-><init>([Ljava/lang/String;Ls1/z/c/f;)V

    .line 19
    invoke-static {v0}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    .line 20
    new-instance v0, Lu3/g0;

    move-object v15, v0

    move-object/from16 v16, v6

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v20}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    .line 21
    iget-object v3, v8, Le/a/a/k/a/u;->c:Lu3/e0;

    invoke-virtual {v3, v0}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v0, Lu3/p0/g/e;

    :try_start_2
    invoke-virtual {v0}, Lu3/p0/g/e;->execute()Lu3/k0;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    :try_start_3
    iget-object v0, v3, Lu3/k0;->h:Lu3/l0;

    .line 23
    invoke-virtual {v3}, Lu3/k0;->j()Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 24
    :cond_1
    iget-object v4, v10, Le/a/a/k/c0/a;->f:Ljava/lang/String;

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const v7, -0x5672380b

    const-string v15, "application/vnd.truecaller.location"

    if-eq v6, v7, :cond_3

    const v7, 0x26ae0369

    if-eq v6, v7, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    :try_start_4
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v7, v15

    goto :goto_3

    .line 27
    :cond_3
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v7, v14

    goto :goto_3

    :cond_4
    :goto_1
    const-string v4, "Content-Type"

    .line 28
    invoke-static {v3, v4, v2, v5}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, "application/octet-stream"

    .line 29
    :goto_2
    invoke-static {v4, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "text/plain"

    .line 30
    invoke-static {v5, v4, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "text/vnd.plain-file"

    :cond_6
    move-object v7, v4

    .line 31
    :goto_3
    iget-object v15, v8, Le/a/a/k/a/u;->h:Le/a/b0/q/b;

    .line 32
    iget-wide v4, v10, Le/a/a/k/c0/a;->b:J

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 33
    new-instance v6, Le/a/a/k/a/v;

    invoke-direct {v6, v0}, Le/a/a/k/a/v;-><init>(Lu3/l0;)V

    const/16 v22, 0x8

    const/16 v23, 0x0

    move-wide/from16 v16, v4

    move-object/from16 v18, v7

    move-object/from16 v21, v6

    invoke-static/range {v15 .. v23}, Le/a/n/g0;->L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    :try_start_5
    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 35
    iget-object v2, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 36
    move-object v15, v2

    check-cast v15, Landroid/net/Uri;

    .line 37
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 38
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v24

    .line 39
    iget-object v0, v10, Le/a/a/k/c0/a;->d:Landroid/net/Uri;

    .line 40
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 41
    iget-object v0, v8, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 42
    iget-object v2, v10, Le/a/a/k/c0/a;->d:Landroid/net/Uri;

    .line 43
    invoke-static {v0, v2}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 44
    :cond_7
    iget-object v0, v10, Le/a/a/k/c0/a;->g:Landroid/net/Uri;

    .line 45
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 46
    iget-object v0, v8, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 47
    iget-object v2, v10, Le/a/a/k/c0/a;->g:Landroid/net/Uri;

    .line 48
    invoke-static {v0, v2}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 49
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_a

    const-string v2, "application/octet-stream"

    .line 50
    iget-wide v5, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-wide/from16 v3, v24

    move-object v7, v15

    .line 51
    invoke-virtual/range {v1 .. v7}, Le/a/a/k/a/u;->h(Ljava/lang/String;JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_8

    .line 52
    :cond_a
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    invoke-virtual {v0, v7}, Lcom/truecaller/messaging/data/types/Entity$a;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 53
    iget-wide v1, v10, Le/a/a/k/c0/a;->b:J

    .line 54
    iget-object v3, v10, Le/a/a/k/c0/a;->c:Lu3/a0;

    .line 55
    invoke-virtual {v8, v15}, Le/a/a/k/a/u;->l(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 56
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 57
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 58
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "Uri.EMPTY"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v3, v3, Lu3/a0;->j:Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const v38, 0x3f940

    const-string v18, "tenor/gif"

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object v7, v15

    move-object v15, v0

    move-wide/from16 v16, v1

    move-object/from16 v20, v7

    move/from16 v21, v5

    move/from16 v22, v4

    move-object/from16 v27, v6

    move-object/from16 v28, v3

    .line 60
    invoke-static/range {v15 .. v38}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_8

    :cond_b
    move-object v6, v15

    .line 61
    invoke-virtual {v0, v7}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 62
    iget-wide v1, v10, Le/a/a/k/c0/a;->b:J

    .line 63
    invoke-virtual {v8, v6}, Le/a/a/k/a/u;->l(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 64
    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v5, "opts.outMimeType"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 66
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const v38, 0x3ff40

    move-object v15, v0

    move-wide/from16 v16, v1

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move/from16 v21, v5

    move/from16 v22, v3

    .line 67
    invoke-static/range {v15 .. v38}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_8

    .line 68
    :cond_c
    invoke-virtual {v0, v7}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 69
    iget-wide v4, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-wide/from16 v2, v24

    move-object v15, v6

    .line 70
    invoke-virtual/range {v1 .. v6}, Le/a/a/k/a/u;->k(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    if-eqz v0, :cond_d

    goto/16 :goto_8

    .line 71
    :cond_d
    iget-wide v5, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide/from16 v3, v24

    move-object v7, v15

    .line 72
    invoke-virtual/range {v1 .. v7}, Le/a/a/k/a/u;->h(Ljava/lang/String;JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_8

    :cond_e
    move-object v15, v6

    .line 73
    invoke-virtual {v0, v7}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 74
    iget-wide v4, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-wide/from16 v2, v24

    move-object v6, v15

    .line 75
    invoke-virtual/range {v1 .. v6}, Le/a/a/k/a/u;->a(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    if-eqz v0, :cond_f

    goto/16 :goto_8

    .line 76
    :cond_f
    iget-wide v5, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide/from16 v3, v24

    move-object v7, v15

    .line 77
    invoke-virtual/range {v1 .. v7}, Le/a/a/k/a/u;->h(Ljava/lang/String;JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_8

    .line 78
    :cond_10
    invoke-virtual {v0, v7}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 79
    iget-wide v4, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-wide/from16 v2, v24

    move-object v6, v15

    .line 80
    invoke-virtual/range {v1 .. v6}, Le/a/a/k/a/u;->j(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/VCardEntity;

    move-result-object v0

    if-eqz v0, :cond_11

    goto/16 :goto_8

    .line 81
    :cond_11
    iget-wide v5, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide/from16 v3, v24

    move-object v7, v15

    .line 82
    invoke-virtual/range {v1 .. v7}, Le/a/a/k/a/u;->h(Ljava/lang/String;JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_8

    .line 83
    :cond_12
    invoke-virtual {v0, v7}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 84
    iget-wide v4, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-wide/from16 v2, v24

    move-object v6, v15

    .line 85
    invoke-virtual/range {v1 .. v6}, Le/a/a/k/a/u;->f(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    if-eqz v0, :cond_13

    goto/16 :goto_8

    .line 86
    :cond_13
    iget-wide v5, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide/from16 v3, v24

    move-object v7, v15

    .line 87
    invoke-virtual/range {v1 .. v7}, Le/a/a/k/a/u;->h(Ljava/lang/String;JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_8

    .line 88
    :cond_14
    invoke-virtual {v0, v7}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 89
    iget-wide v4, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-wide/from16 v2, v24

    move-object v6, v15

    .line 90
    invoke-virtual/range {v1 .. v6}, Le/a/a/k/a/u;->i(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_8

    .line 91
    :cond_15
    iget-wide v5, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide/from16 v3, v24

    move-object v7, v15

    .line 92
    invoke-virtual/range {v1 .. v7}, Le/a/a/k/a/u;->h(Ljava/lang/String;JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto :goto_8

    .line 93
    :cond_16
    iget-wide v5, v10, Le/a/a/k/c0/a;->b:J

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide/from16 v3, v24

    move-object v7, v15

    .line 94
    invoke-virtual/range {v1 .. v7}, Le/a/a/k/a/u;->h(Ljava/lang/String;JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    .line 95
    :cond_17
    :goto_5
    :try_start_6
    iget v0, v3, Lu3/k0;->e:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_18

    const/4 v0, 0x2

    .line 96
    invoke-virtual {v8, v10, v0}, Le/a/a/k/a/u;->g(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto :goto_6

    :cond_18
    const/4 v0, 0x3

    .line 97
    invoke-virtual {v8, v10, v0}, Le/a/a/k/a/u;->g(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    const/4 v1, 0x0

    .line 98
    :try_start_7
    invoke-static {v3, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 99
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-static {v3, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    :cond_19
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 101
    :goto_7
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    .line 102
    invoke-virtual {v8, v10, v0}, Le/a/a/k/a/u;->g(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    .line 103
    :goto_8
    iget-object v1, v10, Le/a/a/k/c0/a;->f:Ljava/lang/String;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    .line 105
    iget-wide v4, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    long-to-float v6, v4

    const/16 v7, 0x400

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 106
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    long-to-float v7, v10

    div-float/2addr v6, v7

    const-string v7, "ImAttachmentDownload"

    const-string v10, "type"

    .line 107
    invoke-static {v7, v10}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v11

    .line 108
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    iget-object v15, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    move-object/from16 v22, v9

    const-string v9, "name"

    move-object/from16 v23, v14

    const-string v14, "value"

    move-object/from16 v21, v15

    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v17, v21

    move-object/from16 v18, v14

    move-object/from16 v19, v11

    move-object/from16 v20, v10

    .line 110
    invoke-static/range {v15 .. v21}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "status"

    .line 111
    iget v15, v0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    move-object/from16 v24, v0

    if-eqz v15, :cond_1e

    const/4 v0, 0x1

    if-eq v15, v0, :cond_1d

    const/4 v0, 0x2

    if-eq v15, v0, :cond_1c

    const/4 v0, 0x3

    if-eq v15, v0, :cond_1b

    const/4 v0, 0x4

    if-eq v15, v0, :cond_1a

    const-string v0, "unknown"

    goto :goto_9

    :cond_1a
    const-string v0, "manualDownload"

    goto :goto_9

    :cond_1b
    const-string v0, "expired"

    goto :goto_9

    :cond_1c
    const-string v0, "failed"

    goto :goto_9

    :cond_1d
    const-string v0, "loading"

    goto :goto_9

    :cond_1e
    const-string v0, "downloaded"

    :goto_9
    move-object/from16 v21, v0

    move-object/from16 v15, v20

    move-object/from16 v16, v9

    move-object/from16 v17, v21

    move-object/from16 v18, v14

    move-object/from16 v19, v11

    .line 112
    invoke-static/range {v15 .. v21}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sizeAbsolute"

    move-object v15, v7

    long-to-double v7, v4

    .line 113
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v12, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sizeBatch"

    .line 115
    invoke-static {v4, v5}, Le/a/c/p/a;->P2(J)Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {v11, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    float-to-double v4, v6

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timeBatch"

    .line 119
    invoke-static {v2, v3}, Le/a/c/p/a;->Q2(J)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-interface {v11, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    move-object v4, v15

    invoke-virtual {v0, v4}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v12}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v11}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p0

    .line 123
    iget-object v6, v5, Le/a/a/k/a/u;->d:Le/a/q2/a;

    invoke-interface {v6, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 124
    invoke-static {v1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    move-object/from16 v6, v23

    .line 125
    invoke-static {v6, v1, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 126
    iget-object v0, v5, Le/a/a/k/a/u;->d:Le/a/q2/a;

    const-string v1, "TenorGifsLoaded"

    .line 127
    invoke-static {v1, v10}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 128
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    long-to-double v2, v2

    const/16 v8, 0x3e8

    int-to-double v8, v8

    div-double/2addr v2, v8

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v7, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v2, v7}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v2, v6}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {v0, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_1f
    move-object/from16 v0, v24

    .line 132
    iget v1, v0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    if-eqz v1, :cond_20

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "update_entity_status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    const-string v4, "entity_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 135
    iget v0, v0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    const-string v2, "entity_status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 136
    iget-object v1, v5, Le/a/a/k/a/u;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/t;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v1, v3, v0, v2}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    goto :goto_a

    :cond_20
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 137
    new-instance v3, Landroid/content/Intent;

    const-string v4, "update_entity"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "entity"

    .line 138
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 139
    iget-object v3, v5, Le/a/a/k/a/u;->a:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/k/t;

    invoke-interface {v3, v2, v0, v1}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    :goto_a
    const/4 v2, 0x0

    move-object v8, v5

    move-object/from16 v9, v22

    goto/16 :goto_0

    :cond_21
    move-object v5, v8

    return-void

    :catchall_2
    move-exception v0

    move-object v5, v8

    move-object v2, v0

    .line 140
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_22
    move-object v5, v8

    return-void
.end method

.method public d(Lcom/truecaller/messaging/data/types/Entity;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "entity"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 2
    sget-object v4, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v5, "msg_im_attachments_entities"

    .line 3
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "thumbnail"

    .line 4
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    .line 5
    iget-wide v10, v0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v7, v10

    const-string v6, "entity_id=?"

    const/4 v8, 0x0

    .line 6
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 7
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 9
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v3, v6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_d

    .line 12
    sget-object v11, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    instance-of v4, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-nez v4, :cond_2

    move-object v4, v6

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    check-cast v4, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    .line 13
    :try_start_1
    iget-object v5, v1, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v4, v9

    goto :goto_3

    :catch_0
    move v4, v10

    :goto_3
    if-ne v4, v9, :cond_4

    goto/16 :goto_6

    .line 14
    :cond_4
    iget-object v4, v1, Le/a/a/k/a/u;->e:Le/a/a/g/g;

    .line 15
    iget-object v12, v1, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const-string v5, "_id = "

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, v0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 16
    invoke-interface {v4, v0}, Le/a/a/g/g;->q(Landroid/database/Cursor;)Le/a/a/g/j0/c;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 17
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "c"

    .line 18
    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Entity;->w()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "Uri.EMPTY"

    if-eqz v0, :cond_6

    .line 19
    :try_start_3
    invoke-interface {v4}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    instance-of v7, v0, Lcom/truecaller/messaging/data/types/VideoEntity;

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    move-object v6, v0

    :goto_4
    check-cast v6, Lcom/truecaller/messaging/data/types/VideoEntity;

    if-eqz v6, :cond_a

    .line 20
    iget-wide v7, v6, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-virtual {v1, v3, v7, v8}, Le/a/a/k/a/u;->p([BJ)Landroid/net/Uri;

    move-result-object v23

    .line 21
    iget-wide v12, v6, Lcom/truecaller/messaging/data/types/Entity;->a:J

    .line 22
    iget-object v14, v6, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 23
    iget v15, v6, Lcom/truecaller/messaging/data/types/Entity;->c:I

    .line 24
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget v3, v6, Lcom/truecaller/messaging/data/types/VideoEntity;->v:I

    .line 26
    iget v5, v6, Lcom/truecaller/messaging/data/types/VideoEntity;->w:I

    .line 27
    iget v7, v6, Lcom/truecaller/messaging/data/types/VideoEntity;->x:I

    const/16 v22, 0x0

    .line 28
    iget-wide v8, v6, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const v34, 0x3fd00

    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v7

    move-wide/from16 v20, v8

    .line 29
    invoke-static/range {v11 .. v34}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto/16 :goto_5

    .line 30
    :cond_6
    invoke-interface {v4}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    invoke-interface {v4}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    instance-of v6, v0, Lcom/truecaller/messaging/data/types/ImageEntity;

    if-nez v6, :cond_7

    const/4 v0, 0x0

    :cond_7
    check-cast v0, Lcom/truecaller/messaging/data/types/ImageEntity;

    if-eqz v0, :cond_a

    .line 32
    iget-wide v6, v0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-virtual {v1, v3, v6, v7}, Le/a/a/k/a/u;->p([BJ)Landroid/net/Uri;

    move-result-object v23

    .line 33
    iget-wide v12, v0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    .line 34
    iget-object v14, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 35
    iget v15, v0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    .line 36
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget v5, v0, Lcom/truecaller/messaging/data/types/ImageEntity;->v:I

    const/16 v19, 0x0

    .line 38
    iget v6, v0, Lcom/truecaller/messaging/data/types/ImageEntity;->w:I

    const/16 v22, 0x0

    .line 39
    iget-wide v7, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const v34, 0x3fd40

    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v20, v7

    .line 40
    invoke-static/range {v11 .. v34}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    goto :goto_5

    .line 41
    :cond_8
    invoke-interface {v4}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Entity;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    invoke-interface {v4}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    instance-of v6, v0, Lcom/truecaller/messaging/data/types/GifEntity;

    if-nez v6, :cond_9

    const/4 v0, 0x0

    :cond_9
    check-cast v0, Lcom/truecaller/messaging/data/types/GifEntity;

    if-eqz v0, :cond_a

    .line 43
    iget-wide v6, v0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-virtual {v1, v3, v6, v7}, Le/a/a/k/a/u;->p([BJ)Landroid/net/Uri;

    move-result-object v23

    .line 44
    iget-wide v12, v0, Lcom/truecaller/messaging/data/types/Entity;->a:J

    .line 45
    iget-object v14, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    .line 46
    iget v15, v0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    .line 47
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget v5, v0, Lcom/truecaller/messaging/data/types/ImageEntity;->v:I

    const/16 v19, 0x0

    .line 49
    iget v6, v0, Lcom/truecaller/messaging/data/types/ImageEntity;->w:I

    const/16 v22, 0x0

    .line 50
    iget-wide v7, v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    .line 51
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const v34, 0x3f940

    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v20, v7

    move-object/from16 v24, v0

    .line 52
    invoke-static/range {v11 .. v34}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    const/4 v3, 0x0

    .line 53
    invoke-static {v4, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v6, v0

    goto :goto_6

    .line 54
    :cond_b
    invoke-static {v4, v6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_c
    :goto_6
    if-eqz v6, :cond_d

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v3, "update_entity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    iget-object v2, v1, Le/a/a/k/a/u;->a:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/t;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0, v10}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 58
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_d
    :goto_7
    return-void
.end method

.method public e(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Le/a/r2/x;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/messaging/transport/im/SendResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p8

    const-string v0, "rawId"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromPeerId"

    move-object/from16 v13, p4

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v1, Le/a/a/k/a/u;->b:Le/a/a/k/a/s1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    const-string v14, "Promise.wrap(FAILURE_PERMANENT)"

    if-eqz v0, :cond_7

    .line 2
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v6, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->access$900(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;Ljava/lang/String;)V

    if-eqz v15, :cond_1

    .line 5
    invoke-interface/range {p8 .. p8}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 6
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji$a;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v6, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;

    invoke-static {v6, v15}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;->access$100(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;->access$1200(Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji;)V

    :cond_2
    if-nez p7, :cond_3

    move-wide/from16 v6, p5

    .line 11
    invoke-virtual {v1, v6, v7}, Le/a/a/k/a/u;->m(J)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Le/a/a/i1/h;->g(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v3

    goto :goto_1

    .line 12
    :cond_3
    invoke-static/range {p7 .. p7}, Le/a/c/p/a;->n(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v3

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 13
    new-instance v0, Lcom/truecaller/messaging/data/types/Reaction;

    const-wide/16 v4, 0x0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_0
    .catch Lp3/a/i1; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v12, 0x2

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xc1

    move-object v3, v0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    move-object/from16 v20, v14

    move-wide/from16 v13, v16

    move-object/from16 v15, v18

    move/from16 v16, v19

    .line 15
    :try_start_1
    invoke-direct/range {v3 .. v16}, Lcom/truecaller/messaging/data/types/Reaction;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;I)V

    .line 16
    invoke-virtual {v1, v2, v0}, Le/a/a/k/a/u;->o(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Reaction;)V

    .line 17
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_PERMANENT:Lcom/truecaller/messaging/transport/im/SendResult;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0
    :try_end_1
    .catch Lp3/a/i1; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v15, v20

    :try_start_2
    invoke-static {v0, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-object/from16 v21, v20

    goto/16 :goto_2

    :cond_5
    move-object v15, v14

    .line 18
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/SendReaction$Request$a;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20
    iget-object v6, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;

    invoke-static {v6, v3}, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 21
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 22
    iget-object v6, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;->access$400(Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputReactionContent;)V

    .line 23
    invoke-virtual {v1, v3}, Le/a/a/k/a/u;->n(Le/a/t2/a/e/a/d/h/b;)Z

    move-result v3

    .line 24
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 25
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;

    invoke-static {v5, v3}, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;->access$700(Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;Z)V

    .line 26
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 27
    check-cast v3, Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;

    .line 28
    invoke-virtual {v0, v3}, Le/a/t2/a/e/a/b$a;->r(Lcom/truecaller/api/services/messenger/v1/SendReaction$Request;)Lcom/truecaller/api/services/messenger/v1/SendReaction$Response;

    move-result-object v0

    .line 29
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v4, "response"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/SendReaction$Response;->getDate()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 30
    new-instance v0, Lcom/truecaller/messaging/data/types/Reaction;
    :try_end_2
    .catch Lp3/a/i1; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v4, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc1

    move-object v3, v0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    :try_start_3
    invoke-direct/range {v3 .. v16}, Lcom/truecaller/messaging/data/types/Reaction;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;I)V

    .line 31
    invoke-virtual {v1, v2, v0}, Le/a/a/k/a/u;->o(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Reaction;)V

    .line 32
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->SUCCESS:Lcom/truecaller/messaging/transport/im/SendResult;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v3, "Promise.wrap(SUCCESS)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lp3/a/i1; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    :catch_1
    move-object/from16 v21, v15

    goto :goto_2

    :catch_2
    move-object/from16 v21, v14

    .line 33
    :catch_3
    :goto_2
    new-instance v0, Lcom/truecaller/messaging/data/types/Reaction;

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x2

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc1

    move-object v3, v0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v16}, Lcom/truecaller/messaging/data/types/Reaction;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;I)V

    .line 34
    invoke-virtual {v1, v2, v0}, Le/a/a/k/a/u;->o(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Reaction;)V

    .line 35
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_PERMANENT:Lcom/truecaller/messaging/transport/im/SendResult;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v0

    .line 36
    new-instance v15, Lcom/truecaller/messaging/data/types/Reaction;

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x2

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc1

    move-object v3, v15

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/truecaller/messaging/data/types/Reaction;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;I)V

    move-object/from16 v3, v22

    .line 37
    invoke-virtual {v1, v2, v3}, Le/a/a/k/a/u;->o(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Reaction;)V

    .line 38
    iget-object v0, v0, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v2, "e.status"

    .line 39
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->B1(Lp3/a/g1;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_TRANSIENT:Lcom/truecaller/messaging/transport/im/SendResult;

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_PERMANENT:Lcom/truecaller/messaging/transport/im/SendResult;

    :goto_3
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v2, "if (e.status.isTransient\u2026e.wrap(FAILURE_PERMANENT)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    return-object v0

    :cond_7
    move-object v2, v14

    .line 40
    sget-object v0, Lcom/truecaller/messaging/transport/im/SendResult;->FAILURE_PERMANENT:Lcom/truecaller/messaging/transport/im/SendResult;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 29

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/a/k/a/u;->e:Le/a/a/g/g;

    .line 2
    iget-object v2, v1, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id = "

    move-wide/from16 v8, p3

    invoke-static {v4, v8, v9}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Le/a/a/g/g;->q(Landroid/database/Cursor;)Le/a/a/g/j0/c;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_4

    .line 6
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "c"

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v3

    instance-of v4, v3, Lcom/truecaller/messaging/data/types/DocumentEntity;

    if-nez v4, :cond_0

    move-object v3, v0

    :cond_0
    check-cast v3, Lcom/truecaller/messaging/data/types/DocumentEntity;

    if-eqz v3, :cond_2

    .line 8
    sget-object v5, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    .line 9
    iget-object v4, v3, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 10
    iget-object v3, v3, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const v28, 0x3f770

    move-wide/from16 v6, p3

    move-object v8, v4

    move v9, v10

    move-object/from16 v10, p5

    move-wide/from16 v14, p1

    move-object/from16 v19, v3

    .line 11
    invoke-static/range {v5 .. v28}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    :cond_2
    move-object v3, v0

    .line 12
    :goto_0
    invoke-static {v2, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_1

    .line 13
    :cond_3
    :try_start_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 14
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final g(Le/a/a/k/c0/a;I)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 25

    move-object/from16 v0, p1

    move/from16 v5, p2

    .line 1
    sget-object v1, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    .line 2
    iget-wide v2, v0, Le/a/a/k/c0/a;->b:J

    .line 3
    iget-object v6, v0, Le/a/a/k/c0/a;->d:Landroid/net/Uri;

    .line 4
    iget-wide v10, v0, Le/a/a/k/c0/a;->e:J

    const-string v4, "application/octet-stream"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3ff70

    .line 5
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 24

    move-object/from16 v3, p1

    move-wide/from16 v9, p2

    move-wide/from16 v1, p4

    move-object/from16 v5, p6

    .line 1
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const v23, 0x3ff70

    invoke-static/range {v0 .. v23}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0

    return-object v0
.end method

.method public final i(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 29

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/a/k/a/u;->e:Le/a/a/g/g;

    .line 2
    iget-object v2, v1, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id = "

    move-wide/from16 v8, p3

    invoke-static {v4, v8, v9}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Le/a/a/g/g;->q(Landroid/database/Cursor;)Le/a/a/g/j0/c;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "c"

    .line 7
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    instance-of v3, v0, Lcom/truecaller/messaging/data/types/LocationEntity;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/truecaller/messaging/data/types/LocationEntity;

    if-eqz v0, :cond_2

    .line 8
    sget-object v5, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    .line 9
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 10
    iget-object v14, v0, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    .line 11
    iget-wide v6, v0, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    .line 12
    iget-wide v11, v0, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    const/16 v28, 0x7f70

    const/4 v13, 0x0

    move-wide/from16 v24, v6

    move-wide/from16 v6, p3

    move-object v8, v3

    move v9, v4

    move-object/from16 v10, p5

    move-wide v3, v11

    const/4 v0, 0x0

    move v11, v0

    const/4 v0, 0x0

    move v12, v0

    move-object v0, v14

    move-wide/from16 v14, p1

    move-object/from16 v23, v0

    move-wide/from16 v26, v3

    .line 13
    invoke-static/range {v5 .. v28}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 14
    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 15
    :cond_3
    :try_start_1
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 16
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final j(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/VCardEntity;
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/a/k/a/u;->j:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/x;

    invoke-static/range {p5 .. p5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/o5/x;->a(Ljava/util/List;)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    return-object v5

    .line 3
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/o5/u;

    if-eqz v4, :cond_3

    .line 4
    iget-object v4, v4, Le/a/o5/u;->c:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v4, ""

    :goto_2
    move-object v15, v4

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/o5/u;

    if-eqz v4, :cond_4

    .line 6
    iget v2, v4, Le/a/o5/u;->e:I

    :cond_4
    move/from16 v16, v2

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/u;

    if-eqz v0, :cond_7

    .line 8
    iget-object v2, v0, Le/a/o5/u;->b:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 9
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 10
    iget-object v5, v0, Le/a/o5/u;->b:Landroid/net/Uri;

    goto :goto_3

    .line 11
    :cond_5
    iget-object v0, v0, Le/a/o5/u;->d:[B

    if-eqz v0, :cond_6

    .line 12
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    iget-object v6, v1, Le/a/a/k/a/u;->h:Le/a/b0/q/b;

    const-string v9, "image/jpeg"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Le/a/a/k/a/x;

    invoke-direct {v12, v2}, Le/a/a/k/a/x;-><init>(Ljava/io/ByteArrayInputStream;)V

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-wide/from16 v7, p3

    invoke-static/range {v6 .. v14}, Le/a/n/g0;->L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-static {v2, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 15
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 16
    check-cast v0, Landroid/net/Uri;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    move-object/from16 v17, v5

    goto :goto_4

    .line 18
    :cond_7
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 19
    :goto_4
    new-instance v0, Lcom/truecaller/messaging/data/types/VCardEntity;

    const/4 v10, 0x0

    .line 20
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v2, "uri.toString()"

    invoke-static {v11, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const-string v9, "text/x-vcard"

    move-object v6, v0

    move-wide/from16 v7, p3

    move-wide/from16 v13, p1

    .line 21
    invoke-direct/range {v6 .. v17}, Lcom/truecaller/messaging/data/types/VCardEntity;-><init>(JLjava/lang/String;ILjava/lang/String;ZJLjava/lang/String;ILandroid/net/Uri;)V

    return-object v0
.end method

.method public final k(JJLandroid/net/Uri;)Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 32

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v0, v1, Le/a/a/k/a/u;->e:Le/a/a/g/g;

    .line 2
    iget-object v3, v1, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p3

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5
    invoke-interface {v0, v3}, Le/a/a/g/g;->q(Landroid/database/Cursor;)Le/a/a/g/j0/c;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_4

    .line 6
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 7
    invoke-interface {v3}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    instance-of v4, v0, Lcom/truecaller/messaging/data/types/VideoEntity;

    if-nez v4, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/truecaller/messaging/data/types/VideoEntity;

    if-eqz v0, :cond_2

    .line 8
    sget-object v8, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    .line 9
    iget-object v11, v0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v12, 0x0

    .line 10
    iget v14, v0, Lcom/truecaller/messaging/data/types/VideoEntity;->v:I

    .line 11
    iget v15, v0, Lcom/truecaller/messaging/data/types/VideoEntity;->w:I

    .line 12
    iget v0, v0, Lcom/truecaller/messaging/data/types/VideoEntity;->x:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const v31, 0x3ff00

    move-wide/from16 v9, p3

    move-object/from16 v13, p5

    move/from16 v16, v0

    move-wide/from16 v17, p1

    .line 13
    invoke-static/range {v8 .. v31}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    move-object v0, v2

    .line 14
    :goto_0
    :try_start_2
    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v0

    goto :goto_1

    .line 15
    :cond_3
    :try_start_3
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 16
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_5
    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 17
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2

    :catchall_3
    move-exception v0

    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_6
    throw v0
.end method

.method public final l(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    :try_start_0
    iget-object v1, p0, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public final m(J)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/k/a/u;->f:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "normalized_destination"

    const-string v4, "tc_im_peer_id"

    .line 3
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-direct {v0, p2}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 8
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    iput-object p2, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    const/4 p2, 0x2

    .line 10
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object p1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final n(Le/a/t2/a/e/a/d/h/b;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Le/a/t2/a/e/a/d/h/b;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase;

    move-result-object v0

    sget-object v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase;->USER:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Le/a/a/k/a/u;->g:Le/a/a/k/a/g;

    invoke-interface {p1}, Le/a/t2/a/e/a/d/h/b;->getUser()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    move-result-object p1

    const-string v1, "user"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "user.id"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imId"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Le/a/a/k/a/g;->a(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object p1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final o(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Reaction;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update_reaction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reaction"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "raw_id"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(UpdateReaction.AC\u2026teReaction.RAW_ID, rawId)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Le/a/a/k/a/u;->a:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/k/t;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Le/a/a/k/t;->A(ILandroid/content/Intent;I)V

    return-void
.end method

.method public final p([BJ)Landroid/net/Uri;
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/a/k/a/u;->h:Le/a/b0/q/b;

    new-instance v6, Le/a/a/k/a/u$c;

    invoke-direct {v6, p1}, Le/a/a/k/a/u$c;-><init>([B)V

    const-string v3, "image/jpeg"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-wide v1, p2

    invoke-static/range {v0 .. v8}, Le/a/n/g0;->L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;

    move-result-object p1

    .line 2
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Landroid/net/Uri;

    return-object p1
.end method
