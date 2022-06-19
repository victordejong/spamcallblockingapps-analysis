.class public final Le/a/s/s/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/s/e;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Lq3/a/b3/c;

.field public final c:I

.field public final d:Ls1/w/f;

.field public final e:Landroid/content/ContentResolver;

.field public final f:Le/a/s/s/c;

.field public final g:Le/a/s/o/d;

.field public final h:Le/a/p5/c;


# direct methods
.method public constructor <init>(ILs1/w/f;Landroid/content/ContentResolver;Le/a/s/s/c;Le/a/s/o/d;Le/a/p5/c;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAssistantSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restAdapter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/s/s/f;->c:I

    iput-object p2, p0, Le/a/s/s/f;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/s/s/f;->e:Landroid/content/ContentResolver;

    iput-object p4, p0, Le/a/s/s/f;->f:Le/a/s/s/c;

    iput-object p5, p0, Le/a/s/s/f;->g:Le/a/s/o/d;

    iput-object p6, p0, Le/a/s/s/f;->h:Le/a/p5/c;

    const-string p1, "initiated"

    const-string p2, "ringing"

    const-string p3, "answered"

    .line 2
    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, p0, Le/a/s/s/f;->a:[Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/s/s/f;->b:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/s/s/f;->d:Ls1/w/f;

    new-instance v3, Le/a/s/s/f$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/s/s/f$b;-><init>(Le/a/s/s/f;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/s/k/c/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/s/s/f;->d:Ls1/w/f;

    new-instance v1, Le/a/s/s/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/s/s/f$a;-><init>(Le/a/s/s/f;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/ScreenedCall;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/callhero_assistant/data/ScreenedCall;

    .line 3
    invoke-static {}, Le/a/m0/a1$k;->K()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "$this$toContentValues"

    .line 4
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getToNumber()Ljava/lang/String;

    move-result-object v5

    const-string v7, "to_number"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getFromNumber()Ljava/lang/String;

    move-result-object v5

    const-string v7, "from_number"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "created_at"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getDuration()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "duration"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getLocale()Ljava/lang/String;

    move-result-object v5

    const-string v8, "locale"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v8, "status"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->isVoicemail()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v8, "is_voicemail"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getOriginateCallStatus()Ljava/lang/String;

    move-result-object v5

    const-string v8, "originate_call_status"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getSpamModelPrediction()Ljava/lang/String;

    move-result-object v5

    const-string v8, "spam_model_prediction"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getIntent()Ljava/lang/String;

    move-result-object v5

    const-string v8, "intent"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;

    .line 22
    sget-object v4, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v5, "screened_call_messages"

    .line 23
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 24
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 25
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 27
    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;->getCallId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "call_id"

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;->getText()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text"

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;->getCreatedAt()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;->getSelectedOption()Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "selected_option"

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    invoke-virtual {v2}, Lcom/truecaller/callhero_assistant/data/ScreenedCallMessage;->getCallerAction()Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "caller_action"

    invoke-virtual {v5, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Le/a/s/s/f;->e:Landroid/content/ContentResolver;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "com.truecaller"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    return-void
.end method

.method public final d(Ls1/w/d;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/s/s/f$d;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/s/s/f$d;

    iget v4, v3, Le/a/s/s/f$d;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/s/s/f$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/s/s/f$d;

    invoke-direct {v3, v0, v1}, Le/a/s/s/f$d;-><init>(Le/a/s/s/f;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/s/s/f$d;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/s/s/f$d;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget v5, v3, Le/a/s/s/f$d;->k:I

    iget-wide v8, v3, Le/a/s/s/f$d;->j:J

    iget-wide v10, v3, Le/a/s/s/f$d;->i:J

    iget-object v12, v3, Le/a/s/s/f$d;->h:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    iget-object v13, v3, Le/a/s/s/f$d;->g:Ljava/lang/Object;

    check-cast v13, Le/a/s/s/f;

    :try_start_0
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/s/s/f;->f:Le/a/s/s/c;

    invoke-interface {v1}, Le/a/s/s/c;->h2()J

    move-result-wide v8

    .line 5
    sget-wide v10, Le/a/s/s/h;->a:J

    add-long/2addr v10, v8

    .line 6
    iget-object v1, v0, Le/a/s/s/f;->h:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-lez v1, :cond_3

    return-object v2

    .line 7
    :cond_3
    iget-object v1, v0, Le/a/s/s/f;->f:Le/a/s/s/c;

    iget-object v5, v0, Le/a/s/s/f;->h:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v10

    invoke-interface {v1, v10, v11}, Le/a/s/s/c;->E0(J)V

    .line 8
    iget-object v1, v0, Le/a/s/s/f;->f:Le/a/s/s/c;

    invoke-interface {v1}, Le/a/s/s/c;->P1()J

    move-result-wide v10

    .line 9
    iget-object v12, v0, Le/a/s/s/f;->e:Landroid/content/ContentResolver;

    .line 10
    invoke-static {}, Le/a/m0/a1$k;->K()Landroid/net/Uri;

    move-result-object v13

    const-string v1, "ScreenedCallsTable.getContentUri()"

    invoke-static {v13, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status IN ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Le/a/s/s/f;->a:[Ljava/lang/String;

    sget-object v20, Le/a/s/s/g;->b:Le/a/s/s/g;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1f

    invoke-static/range {v14 .. v21}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 12
    iget-object v1, v0, Le/a/s/s/f;->a:[Ljava/lang/String;

    const-string v14, "created_at"

    const-string v17, "created_at ASC LIMIT 1"

    move-object/from16 v16, v1

    .line 13
    invoke-static/range {v12 .. v17}, Le/a/p5/s0/f;->E(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 15
    :goto_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v13, v0

    move-object v12, v1

    move v5, v6

    move-wide/from16 v22, v8

    move-wide v8, v10

    move-wide/from16 v10, v22

    .line 16
    :goto_2
    :try_start_1
    iget-object v1, v13, Le/a/s/s/f;->g:Le/a/s/o/d;

    new-instance v14, Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;

    iget v15, v13, Le/a/s/s/f;->c:I

    invoke-direct {v14, v5, v15}, Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;-><init>(II)V

    iput-object v13, v3, Le/a/s/s/f$d;->g:Ljava/lang/Object;

    iput-object v12, v3, Le/a/s/s/f$d;->h:Ljava/lang/Object;

    iput-wide v10, v3, Le/a/s/s/f$d;->i:J

    iput-wide v8, v3, Le/a/s/s/f$d;->j:J

    iput v5, v3, Le/a/s/s/f$d;->k:I

    iput v7, v3, Le/a/s/s/f$d;->e:I

    invoke-interface {v1, v14, v3}, Le/a/s/o/f;->i(Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    return-object v4

    .line 17
    :cond_5
    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    .line 18
    new-instance v14, Le/a/s/s/f$c;

    invoke-direct {v14}, Le/a/s/s/f$c;-><init>()V

    invoke-static {v1, v14}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 19
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 21
    move-object/from16 v16, v15

    check-cast v16, Lcom/truecaller/callhero_assistant/data/ScreenedCall;

    .line 22
    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getCreatedAt()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v16, v16, v8

    if-ltz v16, :cond_6

    move/from16 v16, v7

    goto :goto_5

    :cond_6
    move/from16 v16, v6

    .line 23
    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 24
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_7

    goto :goto_6

    .line 25
    :cond_7
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 26
    :cond_8
    :goto_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_a

    .line 27
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v14, v15}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 29
    check-cast v16, Lcom/truecaller/callhero_assistant/data/ScreenedCall;

    .line 30
    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_7

    .line 31
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_8

    .line 32
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 33
    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 34
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 35
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    :goto_8
    move v7, v6

    :goto_9
    if-eqz v7, :cond_e

    goto :goto_a

    .line 36
    :cond_e
    invoke-static {v12, v1}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 37
    invoke-virtual {v13, v14}, Le/a/s/s/f;->c(Ljava/util/List;)V

    if-nez v5, :cond_f

    .line 38
    iget-object v1, v13, Le/a/s/s/f;->f:Le/a/s/s/c;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/callhero_assistant/data/ScreenedCall;

    invoke-virtual {v7}, Lcom/truecaller/callhero_assistant/data/ScreenedCall;->getCreatedAt()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Le/a/s/s/c;->c3(J)V

    .line 39
    :cond_f
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v6, v13, Le/a/s/s/f;->c:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v1, v6, :cond_10

    goto :goto_a

    :cond_10
    const-wide/16 v16, 0x0

    cmp-long v1, v10, v16

    if-nez v1, :cond_11

    goto :goto_a

    :cond_11
    add-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :catch_0
    :goto_a
    return-object v2
.end method
