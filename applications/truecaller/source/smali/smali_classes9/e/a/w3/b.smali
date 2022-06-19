.class public final Le/a/w3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/c/w;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytic"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w3/b;->a:Lo3/a;

    iput-object p2, p0, Le/a/w3/b;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "eventName"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "FlashUsed"

    const-string v4, "type"

    .line 2
    invoke-static {v3, v4}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 3
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, "flashActionType"

    const-string v8, "name"

    .line 4
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "value"

    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string v12, "flashSenderId"

    const-string v13, "flashFromPhonebook"

    const-string v14, "flashMessageId"

    const/16 v16, 0x5

    const-string v15, "historyLength"

    const/16 v17, 0x8

    const/16 v18, 0x7

    move-object/from16 v19, v10

    const-string v10, "flashContext"

    move-object/from16 v20, v3

    const-string v3, ""

    move-object/from16 v21, v6

    const-string v6, "flashThreadId"

    const/16 v22, 0x4

    const/16 v23, 0x3

    const/16 v24, 0x6

    move-object/from16 v25, v7

    const/4 v7, 0x0

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v11, "FlashSent"

    .line 10
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    :sswitch_1
    const-string v11, "FlashClose"

    .line 11
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_1

    :sswitch_2
    const-string v11, "FlashBlockUser"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_1

    :sswitch_3
    const-string v11, "FlashReplied"

    .line 12
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 13
    :goto_0
    sget-object v11, Le/a/l5/a/p0;->k:Lorg/apache/avro/Schema;

    new-instance v11, Le/a/l5/a/p0$b;

    invoke-direct {v11, v7}, Le/a/l5/a/p0$b;-><init>(Le/a/l5/a/p0$a;)V

    .line 14
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v16

    invoke-virtual {v11, v12, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 16
    iput-object v7, v11, Le/a/l5/a/p0$b;->d:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    const/4 v12, 0x1

    aput-boolean v12, v7, v16

    .line 18
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v14

    const/16 v16, 0x2

    aget-object v14, v14, v16

    invoke-virtual {v11, v14, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 20
    iput-object v7, v11, Le/a/l5/a/p0$b;->a:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v12, v7, v16

    .line 22
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 23
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v24

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 24
    iput-boolean v7, v11, Le/a/l5/a/p0$b;->e:Z

    .line 25
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v12, v7, v24

    const-string v7, "flashReceiverId"

    .line 26
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v23

    invoke-virtual {v11, v13, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 28
    iput-object v7, v11, Le/a/l5/a/p0$b;->b:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v12, v7, v23

    .line 30
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v22

    invoke-virtual {v11, v13, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 32
    iput-object v7, v11, Le/a/l5/a/p0$b;->c:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v12, v7, v22

    const-string v7, "flashReplyId"

    .line 34
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v18

    invoke-virtual {v11, v13, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 36
    iput-object v7, v11, Le/a/l5/a/p0$b;->f:Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v12, v7, v18

    .line 38
    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 39
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    const/16 v14, 0x9

    aget-object v13, v13, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 40
    iput v7, v11, Le/a/l5/a/p0$b;->h:I

    .line 41
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    const/4 v12, 0x1

    aput-boolean v12, v7, v14

    const-string v7, "flashInitiatedEvent.setC\u2026ics.HISTORY_LENGTH, \"\")))"

    .line 42
    invoke-static {v11, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v17

    invoke-virtual {v11, v13, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 45
    iput-object v7, v11, Le/a/l5/a/p0$b;->g:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v12, v7, v17

    .line 47
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    invoke-interface {v7}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/q2/a0;

    invoke-virtual {v11}, Le/a/l5/a/p0$b;->a()Le/a/l5/a/p0;

    move-result-object v11

    invoke-interface {v7, v11}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto/16 :goto_2

    :sswitch_4
    const-string v11, "FlashViewProfile"

    .line 48
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_1
    move-object/from16 v26, v5

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "FlashTapped"

    .line 49
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_2

    .line 51
    :cond_0
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string v12, "flashButton"

    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_6
    const-string v11, "callMeBackPopupOutApp"

    .line 52
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 53
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 54
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_7
    const-string v11, "afterCall"

    .line 55
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 57
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_8
    const-string v11, "conversation"

    .line 58
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 60
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_9
    const-string v11, "deepLink"

    .line 61
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 63
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_a
    const-string v11, "notification"

    .line 64
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 65
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 66
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_b
    const-string v11, "globalSearch"

    .line 67
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 68
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 69
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_c
    const-string v11, "incomingFlash"

    .line 70
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 72
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_d
    const-string v11, "flashShare"

    .line 73
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 75
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_e
    const-string v11, "callMeBackNotification"

    .line 76
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 78
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_f
    const-string v11, "callMeBackPopupInApp"

    .line 79
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 81
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_10
    const-string v11, "searchResults"

    .line 82
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    .line 84
    invoke-static {v7, v11, v12}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_11
    const-string v11, "FlashReceived"

    .line 85
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 86
    sget-object v11, Le/a/l5/a/o0;->h:Lorg/apache/avro/Schema;

    new-instance v11, Le/a/l5/a/o0$b;

    invoke-direct {v11, v7}, Le/a/l5/a/o0$b;-><init>(Le/a/l5/a/o0$a;)V

    .line 87
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v17

    move-object/from16 v26, v5

    aget-object v5, v17, v16

    invoke-virtual {v11, v5, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 89
    iput-object v7, v11, Le/a/l5/a/o0$b;->d:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    const/4 v7, 0x1

    aput-boolean v7, v5, v16

    .line 91
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v14

    const/16 v16, 0x2

    aget-object v14, v14, v16

    invoke-virtual {v11, v14, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 93
    iput-object v5, v11, Le/a/l5/a/o0$b;->a:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v7, v5, v16

    .line 95
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 96
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v24

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 97
    iput-boolean v5, v11, Le/a/l5/a/o0$b;->e:Z

    .line 98
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v7, v5, v24

    .line 99
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v23

    invoke-virtual {v11, v12, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 101
    iput-object v5, v11, Le/a/l5/a/o0$b;->b:Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v7, v5, v23

    const-string v5, "flashIncomingEvent.setCo\u2026alytics.FLASH_SENDER_ID))"

    .line 103
    invoke-static {v11, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v22

    invoke-virtual {v11, v12, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 106
    iput-object v5, v11, Le/a/l5/a/o0$b;->c:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {v11}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v7, v5, v22

    .line 108
    iget-object v5, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/r2/f;

    invoke-interface {v5}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/q2/a0;

    invoke-virtual {v11}, Le/a/l5/a/o0$b;->a()Le/a/l5/a/o0;

    move-result-object v7

    invoke-interface {v5, v7}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto/16 :goto_4

    :cond_2
    :goto_2
    move-object/from16 v26, v5

    goto/16 :goto_4

    :sswitch_12
    move-object/from16 v26, v5

    const-string v5, "FlashOpened"

    .line 109
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :sswitch_13
    move-object/from16 v26, v5

    const-string v5, "FlashMissed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    :goto_3
    sget-object v5, Le/a/l5/a/n0;->j:Lorg/apache/avro/Schema;

    new-instance v5, Le/a/l5/a/n0$b;

    invoke-direct {v5, v7}, Le/a/l5/a/n0$b;-><init>(Le/a/l5/a/n0$a;)V

    .line 111
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v11

    aget-object v11, v11, v16

    invoke-virtual {v5, v11, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 113
    iput-object v7, v5, Le/a/l5/a/n0$b;->d:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    const/4 v11, 0x1

    aput-boolean v11, v7, v16

    .line 115
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v14

    const/16 v16, 0x2

    aget-object v14, v14, v16

    invoke-virtual {v5, v14, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 117
    iput-object v7, v5, Le/a/l5/a/n0$b;->a:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v11, v7, v16

    .line 119
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 120
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v24

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 121
    iput-boolean v7, v5, Le/a/l5/a/n0$b;->e:Z

    .line 122
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v11, v7, v24

    const-string v7, "flashMissed"

    .line 123
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 124
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v13

    aget-object v13, v13, v18

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 125
    iput-boolean v7, v5, Le/a/l5/a/n0$b;->f:Z

    .line 126
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v11, v7, v18

    .line 127
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v23

    invoke-virtual {v5, v12, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 129
    iput-object v7, v5, Le/a/l5/a/n0$b;->b:Ljava/lang/CharSequence;

    .line 130
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v11, v7, v23

    .line 131
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v22

    invoke-virtual {v5, v12, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 133
    iput-object v7, v5, Le/a/l5/a/n0$b;->c:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v11, v7, v22

    const-string v7, "flashActionEvent.setCont\u2026alytics.FLASH_THREAD_ID))"

    .line 135
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "flashActionName"

    .line 136
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v12

    aget-object v12, v12, v17

    invoke-virtual {v5, v12, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 138
    iput-object v7, v5, Le/a/l5/a/n0$b;->g:Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {v5}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v7

    aput-boolean v11, v7, v17

    .line 140
    iget-object v7, v0, Le/a/w3/b;->a:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    invoke-interface {v7}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/q2/a0;

    invoke-virtual {v5}, Le/a/l5/a/n0$b;->a()Le/a/l5/a/n0;

    move-result-object v5

    invoke-interface {v7, v5}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 141
    :cond_3
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 142
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-static {v7, v4}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 143
    invoke-static {v7, v15}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 144
    invoke-static {v7, v10}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "campaignDescription"

    .line 145
    invoke-static {v7, v11}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "flashFromHistory"

    .line 146
    invoke-static {v7, v11}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "flashWaitingTimer"

    .line 147
    invoke-static {v7, v11}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "sentFailed"

    .line 148
    invoke-static {v7, v11}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "FlashCustomButtonClicked"

    .line 149
    invoke-static {v7, v11}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const-string v11, "key"

    .line 150
    invoke-static {v7, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "bundle.getString(key, \"\")"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v26

    .line 152
    invoke-interface {v13, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v25

    .line 155
    invoke-interface {v12, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object/from16 v12, v25

    move-object/from16 v13, v26

    :goto_6
    move-object/from16 v25, v12

    move-object/from16 v26, v13

    goto/16 :goto_5

    :cond_6
    move-object/from16 v12, v25

    move-object/from16 v13, v26

    const-string v4, "FlashSentFailed"

    .line 156
    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 157
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bundle.getString(Constan\u2026tics.FLASH_THREAD_ID, \"\")"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {v13, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-interface {v12, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_7
    iget-object v2, v0, Le/a/w3/b;->b:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a;

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    .line 164
    invoke-static {v4, v5, v13, v3, v2}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 165
    iget-object v2, v0, Le/a/w3/b;->b:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a;

    move-object/from16 v4, v19

    .line 166
    invoke-static {v1, v4, v12, v3, v2}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b7b4d75 -> :sswitch_13
        -0x57b567a7 -> :sswitch_12
        -0x5221822f -> :sswitch_11
        -0x4ffb8584 -> :sswitch_5
        -0x3f15c6ac -> :sswitch_4
        -0x127000f7 -> :sswitch_3
        0x18410008 -> :sswitch_2
        0x2e0d5008 -> :sswitch_1
        0x330fdb88 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x701cbed2 -> :sswitch_10
        -0x69659013 -> :sswitch_f
        -0x5ab983d8 -> :sswitch_e
        -0x47e51a31 -> :sswitch_d
        -0x3267d096 -> :sswitch_c
        -0x282e30d5 -> :sswitch_b
        0x237a88eb -> :sswitch_a
        0x2572cb06 -> :sswitch_9
        0x2c1ddc83 -> :sswitch_8
        0x3cb8a65a -> :sswitch_7
        0x4769c4e2 -> :sswitch_6
    .end sparse-switch
.end method
