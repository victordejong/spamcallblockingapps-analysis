.class public Le/a/a/k/a0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/a0/g$b;,
        Le/a/a/k/a0/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/a/k/q<",
        "Le/a/a/k/a0/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:[Landroid/telephony/SmsMessage;

.field public static final s:Landroid/net/Uri;

.field public static final t:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/p5/g;

.field public final d:Landroid/os/HandlerThread;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Le/a/a/k/a0/f;

.field public final g:Le/a/a/i0;

.field public final h:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/e4/p;

.field public final j:Le/a/b0/q/z;

.field public final k:Le/a/a/k/w$c;

.field public final l:Le/a/q2/a;

.field public final m:Le/a/p5/a0;

.field public final n:Le/a/u3/g;

.field public final o:Le/a/a/p;

.field public p:Le/a/a/k/a0/g$b;

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/telephony/SmsMessage;

    .line 1
    sput-object v0, Le/a/a/k/a0/g;->r:[Landroid/telephony/SmsMessage;

    .line 2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Le/a/a/k/a0/g;->s:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/a/k/a0/g;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/a/r2/f;Landroid/os/HandlerThread;Le/a/p5/g;Lo3/a;Le/a/a/k/a0/f;Le/a/a/i0;Le/a/r2/f;Le/a/e4/p;Le/a/b0/q/z;Le/a/a/k/w$c;Le/a/q2/a;Le/a/p5/a0;Le/a/u3/g;Le/a/a/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Landroid/os/HandlerThread;",
            "Le/a/p5/g;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/a/k/a0/f;",
            "Le/a/a/i0;",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;",
            "Le/a/e4/p;",
            "Le/a/b0/q/z;",
            "Le/a/a/k/w$c;",
            "Le/a/q2/a;",
            "Le/a/p5/a0;",
            "Le/a/u3/g;",
            "Le/a/a/p;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Le/a/a/k/a0/g;->p:Le/a/a/k/a0/g$b;

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v0, Le/a/a/k/a0/g;->q:Z

    move-object v2, p1

    .line 4
    iput-object v2, v0, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    move-object v3, p3

    .line 5
    iput-object v3, v0, Le/a/a/k/a0/g;->d:Landroid/os/HandlerThread;

    move-object v4, p2

    .line 6
    iput-object v4, v0, Le/a/a/k/a0/g;->b:Le/a/r2/f;

    move-object v4, p4

    .line 7
    iput-object v4, v0, Le/a/a/k/a0/g;->c:Le/a/p5/g;

    .line 8
    iput-object v1, v0, Le/a/a/k/a0/g;->e:Lo3/a;

    .line 9
    new-instance v4, Le/a/a/k/a0/g$c;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v4, v3, v2, p5}, Le/a/a/k/a0/g$c;-><init>(Landroid/os/Looper;Landroid/content/ContentResolver;Lo3/a;)V

    move-object v1, p6

    .line 10
    iput-object v1, v0, Le/a/a/k/a0/g;->f:Le/a/a/k/a0/f;

    move-object v1, p7

    .line 11
    iput-object v1, v0, Le/a/a/k/a0/g;->g:Le/a/a/i0;

    move-object v1, p8

    .line 12
    iput-object v1, v0, Le/a/a/k/a0/g;->h:Le/a/r2/f;

    move-object v1, p9

    .line 13
    iput-object v1, v0, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    move-object v1, p10

    .line 14
    iput-object v1, v0, Le/a/a/k/a0/g;->j:Le/a/b0/q/z;

    move-object/from16 v1, p11

    .line 15
    iput-object v1, v0, Le/a/a/k/a0/g;->k:Le/a/a/k/w$c;

    move-object/from16 v1, p12

    .line 16
    iput-object v1, v0, Le/a/a/k/a0/g;->l:Le/a/q2/a;

    move-object/from16 v1, p13

    .line 17
    iput-object v1, v0, Le/a/a/k/a0/g;->m:Le/a/p5/a0;

    move-object/from16 v1, p14

    .line 18
    iput-object v1, v0, Le/a/a/k/a0/g;->n:Le/a/u3/g;

    move-object/from16 v1, p15

    .line 19
    iput-object v1, v0, Le/a/a/k/a0/g;->o:Le/a/a/p;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/g;->m:Le/a/p5/a0;

    const-string v1, "android.permission.READ_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/k/a0/g;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;)Le/a/a/k/q$a;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    array-length v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/a/a/k/a0/g;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Le/a/a/k/q$a;

    invoke-direct {v0, v4}, Le/a/a/k/q$a;-><init>(I)V

    return-object v0

    .line 4
    :cond_1
    iget-object v0, v1, Le/a/a/k/a0/g;->j:Le/a/b0/q/z;

    move-object/from16 v5, p1

    iget-object v6, v5, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-interface {v0, v6}, Le/a/b0/q/z;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    array-length v7, v2

    const/4 v8, 0x0

    move v9, v4

    move-object v0, v8

    :goto_1
    const/4 v10, 0x2

    if-ge v9, v7, :cond_f

    aget-object v11, v2, v9

    .line 6
    array-length v12, v2

    if-le v12, v3, :cond_2

    iget-object v12, v11, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v6, v12}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v14, v8

    goto/16 :goto_9

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v0

    .line 8
    iput-object v11, v0, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v11

    .line 10
    iget v0, v11, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v12, 0x3

    if-ne v0, v12, :cond_3

    .line 11
    new-instance v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;-><init>()V

    .line 12
    iget-wide v12, v11, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 13
    iput-wide v12, v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a:J

    move-object v12, v0

    goto :goto_2

    .line 14
    :cond_3
    iget-object v0, v11, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 15
    check-cast v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v12, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;

    invoke-direct {v12, v0, v8}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;-><init>(Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$a;)V

    :goto_2
    const/4 v13, 0x6

    .line 18
    iput v13, v12, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->g:I

    .line 19
    iget-object v0, v1, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    iget-wide v14, v11, Lcom/truecaller/messaging/data/types/Message;->b:J

    iget-object v8, v11, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 21
    :try_start_0
    invoke-static {v4}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v17

    const-string v0, "info6"

    const-string v13, "info9"

    filled-new-array {v0, v13}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "status = 0 AND sim_token = ? AND conversation_id = ?"

    new-array v0, v10, [Ljava/lang/String;

    aput-object v8, v0, v4

    .line 22
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    const-string v21, "date DESC LIMIT 1"

    move-object/from16 v20, v0

    .line 23
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_6

    .line 24
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v10, ""

    if-nez v0, :cond_4

    move-object v0, v10

    .line 26
    :cond_4
    :try_start_2
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v13, :cond_5

    move-object v10, v0

    .line 27
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    const/4 v8, 0x0

    .line 28
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_7

    .line 29
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    const/4 v10, 0x0

    .line 30
    :goto_5
    invoke-static {v10}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    iput-object v10, v12, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->h:Ljava/lang/String;

    .line 32
    :cond_8
    iget-object v0, v11, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Le/a/a/k/a0/g;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x20

    .line 33
    iput v0, v12, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    goto :goto_6

    :cond_9
    const/4 v0, -0x1

    .line 34
    iput v0, v12, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    .line 35
    :goto_6
    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v0

    invoke-virtual {v12}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    move-result-object v8

    .line 36
    iput v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 37
    iput-object v8, v0, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 38
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    .line 39
    iget-object v8, v1, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v8, v0}, Le/a/a/k/a0/g;->H(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Message;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_7

    .line 40
    :cond_a
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v8, v10, v13

    if-gtz v8, :cond_b

    :goto_7
    const/4 v0, 0x0

    const/4 v14, 0x0

    goto :goto_8

    .line 41
    :cond_b
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const/4 v13, 0x6

    .line 42
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "type"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    iget-object v13, v1, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v0, v8, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_c

    move-object v0, v14

    goto :goto_8

    .line 44
    :cond_c
    iput-object v0, v12, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 45
    iput-wide v10, v12, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->b:J

    .line 46
    invoke-virtual {v12}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    move-result-object v0

    :goto_8
    if-nez v0, :cond_d

    .line 47
    new-instance v0, Le/a/a/k/q$a;

    invoke-direct {v0, v4}, Le/a/a/k/q$a;-><init>(I)V

    return-object v0

    :cond_d
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object v8, v14

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v8, :cond_e

    .line 48
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_e
    throw v0

    :cond_f
    new-array v4, v4, [Ljava/lang/String;

    .line 50
    invoke-static {v0, v4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 51
    array-length v2, v2

    if-le v2, v3, :cond_10

    new-instance v0, Le/a/a/k/q$a;

    invoke-direct {v0, v10}, Le/a/a/k/q$a;-><init>(I)V

    goto :goto_b

    :cond_10
    new-instance v2, Le/a/a/k/q$a;

    invoke-direct {v2, v0}, Le/a/a/k/q$a;-><init>(Lcom/truecaller/messaging/data/types/TransportInfo;)V

    move-object v0, v2

    :goto_b
    return-object v0
.end method

.method public C(Landroid/content/Intent;I)Landroid/os/Bundle;
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.truecaller.messaging.SmsStatusReceived.SMS_SENT"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    const-string v0, "message_part"

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string p1, "Invalid message part"

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    .line 6
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1

    :cond_0
    const-string v6, "errorCode"

    .line 7
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v7, p0, Le/a/a/k/a0/g;->d:Landroid/os/HandlerThread;

    new-array v8, v2, [Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/truecaller/log/AssertionUtil;->onSameThread(Ljava/lang/Thread;[Ljava/lang/String;)V

    .line 11
    iget-object v7, p0, Le/a/a/k/a0/g;->p:Le/a/a/k/a0/g$b;

    if-eqz v7, :cond_1

    int-to-long v11, v0

    move-object v8, p1

    move v9, p2

    move v10, v6

    invoke-virtual/range {v7 .. v12}, Le/a/a/k/a0/g$b;->b(Landroid/net/Uri;IIJ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 12
    monitor-exit p0

    goto/16 :goto_2

    .line 13
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    if-eq p2, v5, :cond_2

    if-eq p2, v7, :cond_3

    goto :goto_0

    :cond_2
    const-string p2, "error_code"

    .line 14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string p2, "type"

    const/4 v1, 0x5

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "seen"

    .line 16
    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v2, v5

    goto :goto_0

    :cond_4
    const-string p2, "type"

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "date_sent"

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :goto_0
    :try_start_2
    iget-object p2, p0, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 20
    iget-object p1, p0, Le/a/a/k/a0/g;->e:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Le/a/a/g/m;->V(ZLjava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    :try_start_3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 22
    :cond_5
    :goto_1
    iput-object v4, p0, Le/a/a/k/a0/g;->p:Le/a/a/k/a0/g$b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    const-string p2, "com.truecaller.messaging.SmsStatusReceived.SMS_STATUS"

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "date"

    const-wide/16 v0, -0x1

    .line 25
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p2, v5, v0

    if-nez p2, :cond_7

    const-string p1, "Invalid message date"

    .line 26
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    .line 27
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1

    .line 28
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, v5, v6}, Lw3/b/a/b;-><init>(J)V

    .line 29
    iget-object v1, p0, Le/a/a/k/a0/g;->d:Landroid/os/HandlerThread;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/truecaller/log/AssertionUtil;->onSameThread(Ljava/lang/Thread;[Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Le/a/a/k/a0/g;->D()Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v1, "pdu"

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, "PDU is null in delivery report"

    .line 32
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 33
    :cond_9
    invoke-static {p1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object p1

    if-nez p1, :cond_a

    const-string p1, "Can not decode message"

    .line 34
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 35
    :cond_a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "date_sent"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "status"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    :try_start_4
    iget-object p1, p0, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 39
    iget-object p1, p0, Le/a/a/k/a0/g;->e:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/m;

    invoke-interface {p1, v2, v0, v2}, Le/a/a/g/m;->d(ILw3/b/a/b;Z)V

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 40
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_b
    const-string p2, "android.provider.Telephony.SMS_RECEIVED"

    .line 41
    invoke-static {v0, p2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 42
    iget-object p2, p0, Le/a/a/k/a0/g;->d:Landroid/os/HandlerThread;

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/truecaller/log/AssertionUtil;->onSameThread(Ljava/lang/Thread;[Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Le/a/a/k/a0/g;->c:Le/a/p5/g;

    iget-object v0, p0, Le/a/a/k/a0/g;->o:Le/a/a/p;

    invoke-interface {v0}, Le/a/a/p;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Le/a/p5/g;->D(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto/16 :goto_2

    .line 44
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Le/a/a/k/a0/g;->E(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p2

    .line 46
    array-length v0, p2

    if-nez v0, :cond_d

    goto/16 :goto_2

    :cond_d
    const-string v0, "errorCode"

    .line 47
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 48
    iget-object v1, p0, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    invoke-interface {v1, p1}, Le/a/e4/p;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p2, p1, v0}, Le/a/a/k/a0/g;->G([Landroid/telephony/SmsMessage;Ljava/lang/String;I)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 50
    iget-object p2, p0, Le/a/a/k/a0/g;->n:Le/a/u3/g;

    invoke-virtual {p2}, Le/a/u3/g;->a0()Le/a/u3/b;

    move-result-object p2

    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, p2, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    iget p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    .line 51
    invoke-static {v0, p2}, Le/a/b0/q/g0;->M(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 52
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    invoke-static {p2}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v0

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object p1

    .line 54
    iput-object p2, p1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    .line 56
    iput-object p1, v0, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 57
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 58
    :cond_e
    iget-object p2, p0, Le/a/a/k/a0/g;->h:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/y0/q;

    invoke-interface {p2, p1}, Le/a/a/y0/q;->d(Lcom/truecaller/messaging/data/types/Message;)V

    .line 59
    iget-object p2, p0, Le/a/a/k/a0/g;->m:Le/a/p5/a0;

    const-string v0, "android.permission.READ_SMS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 60
    iget-object p2, p0, Le/a/a/k/a0/g;->e:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/g/m;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-interface {p2, v2, p1, v2}, Le/a/a/g/m;->d(ILw3/b/a/b;Z)V

    goto/16 :goto_2

    :cond_f
    const-string p2, "android.provider.Telephony.SMS_DELIVER"

    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 62
    iget-object p2, p0, Le/a/a/k/a0/g;->d:Landroid/os/HandlerThread;

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/truecaller/log/AssertionUtil;->onSameThread(Ljava/lang/Thread;[Ljava/lang/String;)V

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Le/a/a/k/a0/g;->E(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p2

    .line 65
    array-length v0, p2

    if-nez v0, :cond_10

    goto/16 :goto_2

    :cond_10
    const-string v0, "errorCode"

    .line 66
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 67
    iget-object v1, p0, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    invoke-interface {v1, p1}, Le/a/e4/p;->k(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p2, p1, v0}, Le/a/a/k/a0/g;->G([Landroid/telephony/SmsMessage;Ljava/lang/String;I)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New sms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    aget-object p2, p2, v2

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object p2

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p2, v0, :cond_11

    .line 71
    iget-object p2, p0, Le/a/a/k/a0/g;->h:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/y0/q;

    invoke-interface {p2, p1}, Le/a/a/y0/q;->n(Lcom/truecaller/messaging/data/types/Message;)V

    goto/16 :goto_2

    .line 72
    :cond_11
    iget-object p2, p0, Le/a/a/k/a0/g;->e:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/g/m;

    invoke-interface {p2, p1, v5}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    goto :goto_2

    :cond_12
    const-string p2, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p2, v1, :cond_14

    .line 74
    iget-object p2, p0, Le/a/a/k/a0/g;->o:Le/a/a/p;

    invoke-interface {p2}, Le/a/a/p;->a()V

    .line 75
    iget-object p2, p0, Le/a/a/k/a0/g;->d:Landroid/os/HandlerThread;

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/truecaller/log/AssertionUtil;->onSameThread(Ljava/lang/Thread;[Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Le/a/a/k/a0/g;->o:Le/a/a/p;

    invoke-interface {p2}, Le/a/a/p;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    const-string p2, "NotSupported"

    :cond_13
    const-string v0, "android.provider.extra.IS_DEFAULT_SMS_APP"

    .line 77
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 78
    iget-object v0, p0, Le/a/a/k/a0/g;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    .line 79
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    const/4 v2, 0x3

    .line 80
    iget-object v3, v1, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 81
    invoke-virtual {v3}, Lw3/b/a/a;->D()Lw3/b/a/j;

    move-result-object v3

    .line 82
    iget-wide v4, v1, Lw3/b/a/e0/e;->a:J

    .line 83
    invoke-virtual {v3, v4, v5, v2}, Lw3/b/a/j;->j(JI)J

    move-result-wide v2

    .line 84
    invoke-virtual {v1, v2, v3}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Le/a/a/g/m;->m(Lw3/b/a/b;)Le/a/r2/x;

    move-result-object v0

    new-instance v1, Le/a/a/k/a0/a;

    invoke-direct {v1, p0, p1, p2}, Le/a/a/k/a0/a;-><init>(Le/a/a/k/a0/g;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    goto :goto_2

    :cond_14
    new-array p1, v5, [Ljava/lang/String;

    const-string p2, "Unknown intent action: "

    .line 86
    invoke-static {p2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    .line 87
    :cond_15
    :goto_2
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method public final D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/g;->c:Le/a/p5/g;

    iget-object v1, p0, Le/a/a/k/a0/g;->o:Le/a/a/p;

    invoke-interface {v1}, Le/a/a/p;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/g;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final E(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 3

    .line 1
    sget-object v0, Le/a/a/k/a0/g;->r:[Landroid/telephony/SmsMessage;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "pdus"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "Intent from Telephony.Sms.Intents.SMS_RECEIVED_ACTION does not have pdus extra, but has: ["

    .line 3
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lw3/c/a/a/a/h;->o(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final F(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    invoke-interface {v1, p1}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-interface {p1}, Le/a/e4/i;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/a/k/a0/g;->g:Le/a/a/i0;

    iget v0, v0, Lcom/truecaller/multisim/SimInfo;->a:I

    invoke-interface {p1, v0}, Le/a/a/i0;->r1(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final G([Landroid/telephony/SmsMessage;Ljava/lang/String;I)Lcom/truecaller/messaging/data/types/Message;
    .locals 10

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    .line 2
    new-instance v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;

    invoke-direct {v2}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;-><init>()V

    .line 3
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    .line 4
    iput-object v3, v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->h:Ljava/lang/String;

    .line 5
    iput p3, v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->i:I

    .line 6
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result p3

    .line 7
    iput p3, v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->f:I

    .line 8
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result p3

    .line 9
    iput-boolean p3, v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->j:Z

    .line 10
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result p3

    .line 11
    iput p3, v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    .line 12
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 14
    iput-object p3, v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->k:Ljava/lang/String;

    .line 15
    :cond_0
    new-instance p3, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {p3}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 16
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unknown sender"

    invoke-static {v3, v4}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    iget-object v4, p0, Le/a/a/k/a0/g;->j:Le/a/b0/q/z;

    invoke-static {v3, v4, p2}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v3

    .line 18
    iput-object v3, p3, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lcom/truecaller/messaging/data/types/Message$b;->c(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 20
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lcom/truecaller/messaging/data/types/Message$b;->d(J)Lcom/truecaller/messaging/data/types/Message$b;

    const-wide/16 v3, -0x1

    .line 21
    array-length v1, p1

    const/16 v5, 0xa

    const/16 v6, 0xc

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 22
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 24
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    array-length v7, p1

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, p1, v8

    .line 26
    :try_start_0
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    :goto_1
    const-string p1, ""

    goto :goto_2

    .line 28
    :cond_4
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v1, "text/plain"

    .line 29
    invoke-static {v3, v4, v1, v0, p1}, Lcom/truecaller/messaging/data/types/Entity;->a(JLjava/lang/String;ILjava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    if-nez p2, :cond_5

    const-string p2, "-1"

    .line 30
    :cond_5
    iput-object p2, p3, Lcom/truecaller/messaging/data/types/Message$b;->m:Ljava/lang/String;

    .line 31
    invoke-virtual {v2}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    move-result-object p1

    .line 32
    iput v0, p3, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 33
    iput-object p1, p3, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 34
    invoke-virtual {p3}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    return-object p1
.end method

.method public final H(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Message;)Landroid/net/Uri;
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isFalse(Z[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/a/k/a0/g;->D()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 4
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v3, -0x1

    .line 5
    :try_start_0
    iget-object v5, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v5, v5, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v5, v3

    :goto_0
    cmp-long v3, v5, v3

    if-nez v3, :cond_2

    const-string p1, "For some reasons we can not create thread for address. Is empty: "

    .line 6
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v1, "insert-address-token"

    .line 7
    invoke-static {v1, v0}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " address length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return-object v2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    new-array p1, v7, [Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message does not have a content: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-object v2

    .line 13
    :cond_3
    iget-object v4, p2, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 14
    check-cast v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    iget-object v5, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v5, v5, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v6, "address"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v5, p2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 18
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    iget-object v5, p0, Le/a/a/k/a0/g;->f:Le/a/a/k/a0/f;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Le/a/a/k/a0/f;->m(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 21
    iget-object v5, p2, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    .line 22
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "date_sent"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    :cond_4
    iget-boolean v5, p2, Lcom/truecaller/messaging/data/types/Message;->j:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "locked"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    iget-boolean v5, p2, Lcom/truecaller/messaging/data/types/Message;->h:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "seen"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    iget-boolean v5, p2, Lcom/truecaller/messaging/data/types/Message;->i:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    iget v5, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "error_code"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    iget-boolean v5, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "reply_path_present"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    iget v5, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "protocol"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    iget-object v5, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    const-string v6, "service_center"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v5, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    const-string v6, "subject"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget v5, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "body"

    .line 33
    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v3, p0, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    invoke-interface {v3}, Le/a/e4/p;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 35
    iget-object v5, p2, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 37
    :try_start_1
    iget-object v3, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    if-eqz v3, :cond_6

    const-string v3, "type"

    .line 38
    iget v5, p2, Lcom/truecaller/messaging/data/types/Message;->g:I

    invoke-static {v5}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget-object v3, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {p1, v3, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 40
    iget-object p1, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    goto :goto_3

    .line 41
    :cond_6
    iget v3, p2, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/2addr v3, v7

    if-nez v3, :cond_7

    .line 42
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 43
    :cond_7
    sget-object v3, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    .line 44
    :goto_2
    invoke-virtual {p1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v2, p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 46
    iget-object p1, p2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 47
    iget-object p2, p0, Le/a/a/k/a0/g;->g:Le/a/a/i0;

    const-wide/16 v3, 0x0

    invoke-interface {p2, v1, v3, v4}, Le/a/a/i0;->i2(IJ)J

    move-result-wide v3

    .line 48
    invoke-virtual {p1, v3, v4}, Lw3/b/a/e0/c;->h(J)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 49
    iget-object p2, p0, Le/a/a/k/a0/g;->g:Le/a/a/i0;

    .line 50
    iget-wide v3, p1, Lw3/b/a/e0/e;->a:J

    .line 51
    invoke-interface {p2, v1, v3, v4}, Le/a/a/i0;->S0(IJ)V

    :cond_9
    return-object v2
.end method

.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Le/a/a/k/a0/g;->H(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Message;)Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Le/a/a/k/p;->a()Le/a/a/k/p;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-boolean v0, p1, Lcom/truecaller/messaging/data/types/Message;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-static {v3, v4, v0}, Lcom/truecaller/messaging/data/types/Message;->d(JLw3/b/a/b;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v3, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v4, "+"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    :cond_3
    :try_start_1
    iget v4, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/2addr v4, v2

    if-nez v4, :cond_4

    .line 10
    sget-object v4, Le/a/l5/a/a1;->g:Lorg/apache/avro/Schema;

    new-instance v4, Le/a/l5/a/a1$b;

    invoke-direct {v4, v1}, Le/a/l5/a/a1$b;-><init>(Le/a/l5/a/a1$a;)V

    const-string v5, "sms"

    .line 11
    invoke-virtual {v4, v5}, Le/a/l5/a/a1$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/a1$b;

    .line 12
    invoke-virtual {v4, v0}, Le/a/l5/a/a1$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/a1$b;

    .line 13
    invoke-virtual {v4, v3}, Le/a/l5/a/a1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/a1$b;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Le/a/l5/a/a1$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/a1$b;

    .line 15
    invoke-virtual {v4}, Le/a/l5/a/a1$b;->a()Le/a/l5/a/a1;

    move-result-object p1

    .line 16
    iget-object v0, p0, Le/a/a/k/a0/g;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_1
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 17
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 18
    :cond_4
    :goto_1
    new-instance p1, Le/a/a/k/p;

    invoke-direct {p1, v2, v2, v2, v1}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    return-object p1
.end method

.method public declared-synchronized b(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/o;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    .line 1
    invoke-static {v3}, Lcom/truecaller/log/AssertionUtil;->notOnMainThread([Ljava/lang/String;)V

    .line 2
    iget v3, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 4
    check-cast v3, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 5
    iget-object v4, v3, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    const-string v5, "Save message to system database before actual sending"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 9
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_1

    const/high16 v5, 0xa000000

    goto :goto_1

    :cond_1
    const/high16 v5, 0x8000000

    .line 10
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :goto_2
    const/high16 v8, 0x10000000

    if-ge v7, v6, :cond_2

    .line 11
    new-instance v9, Landroid/content/Intent;

    iget-object v12, v1, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    const-class v13, Lcom/truecaller/messaging/transport/sms/SmsReceiver;

    invoke-direct {v9, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v12, "com.truecaller.messaging.SmsStatusReceived.SMS_SENT"

    .line 12
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v12, v3, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v12, "message_part"

    .line 14
    invoke-virtual {v9, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    invoke-virtual {v9, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    iget-object v8, v1, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    invoke-static {v8, v7, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 17
    :cond_2
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-virtual {v1, v6}, Le/a/a/k/a0/g;->F(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 18
    new-instance v6, Landroid/content/Intent;

    iget-object v7, v1, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    const-class v9, Lcom/truecaller/messaging/transport/sms/SmsReceiver;

    invoke-direct {v6, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.truecaller.messaging.SmsStatusReceived.SMS_STATUS"

    .line 19
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget-object v7, v3, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "date"

    .line 21
    iget-object v9, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    .line 22
    iget-wide v12, v9, Lw3/b/a/e0/e;->a:J

    .line 23
    invoke-virtual {v6, v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 24
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    iget-object v7, v1, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    invoke-static {v7, v2, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_3
    iget-object v5, v0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v7, v5, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 27
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "Destination can not be empty"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/truecaller/log/AssertionUtil;->isFalse(Z[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .line 28
    :try_start_1
    iget-object v6, v1, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    iget-object v8, v0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    invoke-interface {v6, v8}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object v6

    .line 29
    invoke-interface {v6}, Le/a/e4/i;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v2

    :goto_3
    if-ge v8, v6, :cond_7

    .line 31
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v9, v6, -0x1

    if-ne v8, v9, :cond_4

    .line 32
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    move-object/from16 v17, v9

    goto :goto_4

    :cond_4
    move-object/from16 v17, v5

    .line 33
    :goto_4
    iget-object v12, v1, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    iget-object v14, v3, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    .line 34
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Landroid/app/PendingIntent;

    iget-object v9, v0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    move-object v13, v7

    move-object/from16 v18, v9

    .line 35
    invoke-interface/range {v12 .. v18}, Le/a/e4/p;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 36
    new-instance v0, Le/a/a/k/a0/c;

    const-string v3, "sendFailed"

    invoke-direct {v0, v3, v5, v5}, Le/a/a/k/a0/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 37
    :cond_6
    :try_start_2
    iget-object v6, v1, Le/a/a/k/a0/g;->i:Le/a/e4/p;

    iget-object v8, v3, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    iget-object v12, v0, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    move-object v9, v4

    invoke-interface/range {v6 .. v12}, Le/a/e4/p;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 38
    new-instance v0, Le/a/a/k/a0/c;

    const-string v3, "sendMultipartFailed"

    invoke-direct {v0, v3, v5, v5}, Le/a/a/k/a0/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 39
    :cond_7
    :try_start_3
    new-instance v0, Le/a/a/k/a0/g$b;

    iget-object v3, v3, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v0, v3, v4, v5}, Le/a/a/k/a0/g$b;-><init>(Landroid/net/Uri;ILe/a/a/k/a0/g$a;)V

    iput-object v0, v1, Le/a/a/k/a0/g;->p:Le/a/a/k/a0/g$b;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_4
    new-array v2, v2, [Ljava/lang/String;

    .line 41
    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 43
    new-instance v0, Le/a/a/k/a0/c;

    const-string v2, "exception"

    invoke-direct {v0, v2, v5, v5}, Le/a/a/k/a0/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/truecaller/messaging/data/types/Message;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "sms"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(Lw3/b/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/g;->g:Le/a/a/i0;

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const/4 p1, 0x0

    .line 3
    invoke-interface {v0, p1, v1, v2}, Le/a/a/i0;->S0(IJ)V

    return-void
.end method

.method public i(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->h()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j()Lw3/b/a/b;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/g;->g:Le/a/a/i0;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/a/i0;->i2(IJ)J

    move-result-wide v2

    .line 2
    iget-boolean v0, p0, Le/a/a/k/a0/g;->q:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Le/a/a/k/a0/g;->m:Le/a/p5/a0;

    const-string v4, "android.permission.SEND_SMS"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/a/k/a0/g;->m:Le/a/p5/a0;

    const-string v4, "android.permission.READ_SMS"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Le/a/a/k/a0/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v10, 0x0

    .line 4
    :try_start_0
    sget-object v11, Le/a/a/k/a0/g;->s:Landroid/net/Uri;

    const-string v4, "date"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "type=6"

    const/4 v8, 0x0

    const-string v9, "date DESC LIMIT 1"

    move-object v4, v0

    move-object v5, v11

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 7
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "type"

    const/4 v9, 0x5

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "type=6"

    .line 9
    invoke-virtual {v0, v11, v7, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    cmp-long v0, v5, v2

    if-gez v0, :cond_0

    move-wide v2, v5

    .line 10
    :cond_0
    iget-object v0, p0, Le/a/a/k/a0/g;->g:Le/a/a/i0;

    invoke-interface {v0, v1, v2, v3}, Le/a/a/i0;->S0(IJ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v4

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v4

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 11
    :try_start_2
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 12
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_2

    .line 13
    :try_start_4
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Le/a/a/k/a0/g;->q:Z

    goto :goto_4

    :goto_3
    if-eqz v10, :cond_3

    .line 15
    :try_start_5
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 16
    :catch_3
    :cond_3
    throw v0

    .line 17
    :cond_4
    :goto_4
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0, v2, v3}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public k(J)J
    .locals 0

    return-wide p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public m(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Le/a/a/g/j0/g0;",
            "Lw3/b/a/b;",
            "Lw3/b/a/b;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/p5/l0;",
            "Z",
            "Le/a/c/r/h/d;",
            ")J"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/a0/g;->m:Le/a/p5/a0;

    const-string v2, "android.permission.READ_SMS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 2
    :cond_0
    iget-object v3, v0, Le/a/a/k/a0/g;->f:Le/a/a/k/a0/f;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v3 .. v13}, Le/a/a/k/g;->j(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J

    move-result-wide v1

    return-wide v1
.end method

.method public n(Le/a/a/k/w;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Le/a/a/k/w;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Le/a/a/k/w;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Le/a/a/k/a0/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;ZLjava/util/Set;)Z
    .locals 2

    .line 1
    check-cast p2, Le/a/a/k/a0/i;

    .line 2
    iget-boolean p3, p2, Le/a/a/k/a0/i;->e:Z

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of p3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 5
    iget-object p3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    .line 7
    iget-object p2, p2, Le/a/a/k/a0/i;->d:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-wide p1, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public p(Le/a/a/k/w;)Z
    .locals 13

    .line 1
    check-cast p1, Le/a/a/k/a0/i;

    .line 2
    iget-boolean v0, p1, Le/a/a/k/a0/i;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p1, Le/a/a/k/a0/i;->d:Ljava/util/Set;

    const/16 v2, 0x3dd

    .line 4
    invoke-static {v0, v2}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Le/a/a/k/w;->d(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object v11

    const-string v3, "_id IN ("

    .line 7
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Le/a/a/k/a0/h;->b:Le/a/a/k/a0/h;

    const/16 v10, 0x1e

    const-string v4, ","

    move-object v3, v2

    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x29

    invoke-static {v12, v3, v4}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 11
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 13
    iput-object v3, v11, Le/a/a/k/w$b$a;->d:Ljava/lang/String;

    .line 14
    iput-object v2, v11, Le/a/a/k/w$b$a;->e:[Ljava/lang/String;

    .line 15
    invoke-virtual {v11}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p1, Le/a/a/k/a0/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 17
    :try_start_0
    iget-object v0, p0, Le/a/a/k/a0/g;->k:Le/a/a/k/w$c;

    invoke-interface {v0, p1}, Le/a/a/k/w$c;->a(Le/a/a/k/w;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    array-length p1, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 18
    :goto_2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return v1
.end method

.method public q(Lcom/truecaller/messaging/data/types/BinaryEntity;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Sms transport can not be used to cancel attachments."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s(Lcom/truecaller/messaging/data/types/Message;ILe/a/a/k/w;)Z
    .locals 5

    .line 1
    check-cast p3, Le/a/a/k/a0/i;

    .line 2
    iget-boolean v0, p3, Le/a/a/k/a0/i;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v0, v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    check-cast v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 5
    sget-object v2, Le/a/a/k/a0/g;->s:Landroid/net/Uri;

    invoke-virtual {p3, v2}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object v2

    .line 6
    invoke-static {p2}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 7
    iget-object v3, v2, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 8
    iget-wide v3, v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    .line 9
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    .line 10
    invoke-static {p1}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    const-string p1, "_id=? AND type = ?"

    .line 11
    iput-object p1, v2, Le/a/a/k/w$b$a;->d:Ljava/lang/String;

    .line 12
    iput-object p2, v2, Le/a/a/k/w$b$a;->e:[Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p3, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    :goto_0
    return v1
.end method

.method public t(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SMS transport does not support retry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SMS transport"

    return-object v0
.end method

.method public u(Lcom/truecaller/messaging/data/types/TransportInfo;JJLe/a/a/k/w;Z)Z
    .locals 0

    .line 1
    check-cast p6, Le/a/a/k/a0/i;

    .line 2
    iget-boolean p2, p6, Le/a/a/k/a0/i;->e:Z

    const/4 p3, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    new-array p4, p3, [Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 5
    iget-object p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    new-array p3, p3, [Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {p6, p1}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    const/4 p3, 0x1

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 8
    iget-object p4, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p5, "read"

    invoke-virtual {p4, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_1

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 10
    iget-object p4, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string p5, "seen"

    invoke-virtual {p4, p5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    :cond_1
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p6, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    :goto_0
    return p3
.end method

.method public v(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a0/g;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/k/a0/g;->m:Le/a/p5/a0;

    const-string v1, "android.permission.SEND_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Le/a/a/k/a0/g;->i(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    invoke-virtual {p0, p1}, Le/a/a/k/a0/g;->x(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w()Le/a/a/k/w;
    .locals 2

    .line 1
    new-instance v0, Le/a/a/k/a0/i;

    invoke-virtual {p0}, Le/a/a/k/a0/g;->D()Z

    move-result v1

    invoke-direct {v0, v1}, Le/a/a/k/a0/i;-><init>(Z)V

    return-object v0
.end method

.method public x(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 1

    .line 1
    iget p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public y(Lcom/truecaller/messaging/data/types/TransportInfo;Le/a/a/k/w;)Z
    .locals 4

    .line 1
    check-cast p2, Le/a/a/k/a0/i;

    .line 2
    iget-boolean v0, p2, Le/a/a/k/a0/i;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 5
    iget-object v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Le/a/a/k/w;->e(Landroid/net/Uri;)Le/a/a/k/w$b$a;

    move-result-object p1

    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    iget-object v2, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    const-string v3, "seen"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-virtual {p1}, Le/a/a/k/w$b$a;->a()Le/a/a/k/w$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/a/k/w;->a(Le/a/a/k/w$b;)V

    :goto_0
    return v1
.end method

.method public z(Ljava/lang/String;Le/a/a/k/e;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, v1, v1, v1, v1}, Le/a/a/k/e;->a(IIII)V

    return v1

    .line 3
    :cond_0
    invoke-static {p1, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    aget v2, p1, v0

    const/4 v3, 0x2

    aget v3, p1, v3

    aget p1, p1, v1

    invoke-virtual {p2, v2, v3, p1, v1}, Le/a/a/k/e;->a(IIII)V

    return v0
.end method
