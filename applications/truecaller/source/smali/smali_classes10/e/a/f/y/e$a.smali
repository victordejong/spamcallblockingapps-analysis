.class public final Le/a/f/y/e$a;
.super Landroid/telecom/Call$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/y/e;-><init>(Le/a/f/w/c;Le/a/f/m;Le/a/p5/c;Le/a/f/z/e0;Lcom/truecaller/callrecording/CallRecordingManager;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/y/e;


# direct methods
.method public constructor <init>(Le/a/f/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Le/a/f/y/a$c;->a:Le/a/f/y/a$c;

    sget-object v2, Le/a/f/y/a$e;->a:Le/a/f/y/a$e;

    invoke-super/range {p0 .. p1}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V

    .line 2
    iget-object v3, v0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    move-object/from16 v4, p1

    .line 3
    invoke-virtual {v3, v4}, Le/a/f/y/e;->S(Landroid/telecom/Call;)Le/a/f/y/x;

    move-result-object v3

    .line 4
    iget-object v4, v0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 5
    iget-object v4, v4, Le/a/f/y/e;->c:Le/a/f/y/x;

    .line 6
    invoke-static {v4, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_f

    .line 7
    iget-object v7, v3, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 8
    invoke-virtual {v7}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v5

    :goto_2
    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    move-object v7, v6

    .line 9
    :goto_3
    iget-object v8, v3, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 10
    invoke-virtual {v8}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v6

    :goto_4
    const/4 v9, 0x7

    if-nez v8, :cond_5

    goto :goto_5

    .line 11
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_6

    sget-object v7, Le/a/f/y/a$a;->a:Le/a/f/y/a$a;

    goto :goto_b

    :cond_6
    :goto_5
    const/4 v9, 0x6

    if-nez v8, :cond_7

    goto :goto_6

    .line 12
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_8

    move-object v7, v2

    goto :goto_b

    :cond_8
    :goto_6
    const/4 v9, 0x5

    if-nez v8, :cond_9

    goto :goto_7

    .line 13
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_a

    move-object v7, v1

    goto :goto_b

    :cond_a
    :goto_7
    if-nez v8, :cond_b

    goto :goto_9

    .line 14
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_c

    new-instance v8, Le/a/f/y/a$b;

    invoke-direct {v8, v7}, Le/a/f/y/a$b;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object v7, v8

    goto :goto_b

    :cond_c
    :goto_9
    const/16 v9, 0x8

    if-nez v8, :cond_d

    goto :goto_a

    .line 15
    :cond_d
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_e

    new-instance v8, Le/a/f/y/a$f;

    invoke-direct {v8, v7}, Le/a/f/y/a$f;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 16
    :cond_e
    :goto_a
    sget-object v7, Le/a/f/y/a$d;->a:Le/a/f/y/a$d;

    goto :goto_b

    :cond_f
    move-object v7, v6

    .line 17
    :goto_b
    iget-object v8, v0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 18
    iget-object v8, v8, Le/a/f/y/e;->b:Ljava/util/Map;

    .line 19
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/f/y/b;

    .line 20
    invoke-interface {v9, v7}, Le/a/f/y/b;->zj(Le/a/f/y/a;)V

    goto :goto_c

    .line 21
    :cond_10
    iget-object v8, v0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 22
    iget-object v8, v8, Le/a/f/y/e;->f:Lq3/a/w2/h;

    .line 23
    sget-object v9, Lcom/truecaller/incallui/service/CallState;->STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

    invoke-interface {v8, v9}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1c

    .line 24
    iget-object v8, v0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 25
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-boolean v9, v3, Le/a/f/y/x;->g:Z

    if-nez v9, :cond_11

    goto/16 :goto_12

    .line 27
    :cond_11
    invoke-virtual {v8}, Le/a/f/y/e;->n()Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_12

    .line 28
    :cond_12
    instance-of v9, v7, Le/a/f/y/a$f;

    if-nez v9, :cond_1c

    instance-of v9, v7, Le/a/f/y/a$b;

    if-eqz v9, :cond_13

    goto/16 :goto_12

    .line 29
    :cond_13
    iget-object v9, v3, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 30
    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 31
    iget-object v10, v8, Le/a/f/y/e;->l:Le/a/f/z/e0;

    .line 32
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "phoneAccountHandle"

    invoke-static {v9, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v11, v10, Le/a/f/z/e0;->b:Le/a/e4/p;

    invoke-interface {v11}, Le/a/e4/p;->h()Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_d

    .line 34
    :cond_14
    iget-object v11, v10, Le/a/f/z/e0;->a:Landroid/content/Context;

    const-string v12, "telecom"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type android.telecom.TelecomManager"

    invoke-static {v11, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v11, Landroid/telecom/TelecomManager;

    .line 35
    iget-object v10, v10, Le/a/f/z/e0;->a:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v12, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v10, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 36
    :try_start_0
    const-class v12, Landroid/telephony/TelephonyManager;

    const-string v13, "getSubIdForPhoneAccount"

    new-array v14, v5, [Ljava/lang/Class;

    const-class v15, Landroid/telecom/PhoneAccount;

    aput-object v15, v14, v4

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 37
    invoke-virtual {v11, v9}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v9

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v9, v11, v4

    .line 38
    invoke-virtual {v12, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_15

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 39
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    .line 40
    :cond_15
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_d
    const-string v9, "-1"

    goto :goto_e

    :cond_16
    move-object v9, v6

    .line 41
    :goto_e
    invoke-static {v3}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1c

    .line 42
    iget-wide v13, v3, Le/a/f/y/x;->c:J

    .line 43
    iget-object v10, v3, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 44
    invoke-virtual {v10}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v10

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 45
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    cmp-long v15, v15, v11

    if-lez v15, :cond_17

    move v4, v5

    :cond_17
    if-eqz v4, :cond_18

    goto :goto_f

    :cond_18
    move-object v10, v6

    :goto_f
    if-eqz v10, :cond_1a

    .line 46
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    .line 47
    iget-object v4, v3, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 48
    invoke-virtual {v8, v4}, Le/a/f/y/e;->N(Landroid/telecom/Call;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 49
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v10, v8, Le/a/f/y/e;->k:Le/a/p5/c;

    invoke-interface {v10}, Le/a/p5/c;->c()J

    move-result-wide v15

    sub-long v4, v15, v4

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_19
    if-eqz v6, :cond_1a

    .line 50
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :cond_1a
    move-wide v4, v11

    .line 51
    invoke-static {v7, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/truecaller/incallui/service/CallType;->MISSED:Lcom/truecaller/incallui/service/CallType;

    goto :goto_10

    .line 52
    :cond_1b
    iget-object v1, v3, Le/a/f/y/x;->b:Lcom/truecaller/incallui/service/CallType;

    .line 53
    :goto_10
    iget-object v6, v8, Le/a/f/y/e;->b:Ljava/util/Map;

    .line 54
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/f/y/b;

    .line 55
    new-instance v15, Le/a/f/z/d0;

    .line 56
    invoke-static {v7, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    .line 57
    iget-boolean v12, v3, Le/a/f/y/x;->f:Z

    .line 58
    iget-object v11, v3, Le/a/f/y/x;->d:Lcom/truecaller/incallui/utils/BlockAction;

    .line 59
    iget-boolean v10, v3, Le/a/f/y/x;->e:Z

    move/from16 v21, v10

    move-object v10, v15

    move-object/from16 v20, v11

    move-object/from16 v11, v22

    move/from16 v19, v12

    move-object v12, v1

    move-wide/from16 v23, v13

    move-object/from16 p1, v1

    move-object v1, v15

    move-wide v15, v4

    move-object/from16 v17, v9

    .line 60
    invoke-direct/range {v10 .. v21}, Le/a/f/z/d0;-><init>(Ljava/lang/String;Lcom/truecaller/incallui/service/CallType;JJLjava/lang/String;ZZLcom/truecaller/incallui/utils/BlockAction;Z)V

    .line 61
    invoke-interface {v8, v1}, Le/a/f/y/b;->Z7(Le/a/f/z/d0;)V

    move-object/from16 v1, p1

    goto :goto_11

    :cond_1c
    :goto_12
    if-eqz v3, :cond_1d

    .line 62
    iget-object v1, v3, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v1, :cond_1d

    .line 63
    invoke-virtual {v1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    :cond_1d
    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telecom/Call$Callback;->onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 3
    invoke-virtual {v0, p1}, Le/a/f/y/e;->S(Landroid/telecom/Call;)Le/a/f/y/x;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Le/a/f/y/e;->T(Le/a/f/y/x;)V

    .line 5
    iget-object p1, p0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 6
    invoke-virtual {p1, p2}, Le/a/f/y/e;->W(Ljava/util/List;)V

    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telecom/Call$Callback;->onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V

    .line 2
    iget-object p2, p0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 3
    invoke-virtual {p2, p1}, Le/a/f/y/e;->S(Landroid/telecom/Call;)Le/a/f/y/x;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 5
    invoke-virtual {p2}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 7
    invoke-virtual {p2, p1}, Le/a/f/y/e;->T(Le/a/f/y/x;)V

    :cond_0
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telecom/Call$Callback;->onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 3
    iget-object p1, p1, Le/a/f/y/e;->b:Ljava/util/Map;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/y/b;

    .line 5
    invoke-interface {v0, p2}, Le/a/f/y/b;->sc(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 2
    invoke-virtual {p2, p1}, Le/a/f/y/e;->S(Landroid/telecom/Call;)Le/a/f/y/x;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Le/a/m0/a1$k;->c(Le/a/f/y/x;)Lcom/truecaller/incallui/service/CallState;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Le/a/f/y/e$a;->a:Le/a/f/y/e;

    .line 4
    iget-object p2, p2, Le/a/f/y/e;->f:Lq3/a/w2/h;

    .line 5
    invoke-interface {p2, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
