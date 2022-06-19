.class public final Le/a/a/c/l3;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$onTranslateAction$1"
    f = "ConversationActionModePresenter.kt"
    l = {
        0x1c5,
        0x1ca
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/a/c/i3;

.field public final synthetic k:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/i3;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    iput-object p2, p0, Le/a/a/c/l3;->k:Lcom/truecaller/messaging/data/types/Message;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/l3;

    iget-object v0, p0, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    iget-object v1, p0, Le/a/a/c/l3;->k:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/l3;-><init>(Le/a/a/c/i3;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/l3;

    iget-object v0, p0, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    iget-object v1, p0, Le/a/a/c/l3;->k:Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/c/l3;-><init>(Le/a/a/c/i3;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/l3;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v6, p0

    sget-object v7, Ls1/s;->a:Ls1/s;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v6, Le/a/a/c/l3;->i:I

    const-string v9, "deviceManager.languageIso"

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v10, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, v6, Le/a/a/c/l3;->h:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v1, v6, Le/a/a/c/l3;->g:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v2, v6, Le/a/a/c/l3;->f:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v3, v6, Le/a/a/c/l3;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v0

    .line 4
    iget-object v2, v6, Le/a/a/c/l3;->k:Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v11

    :goto_1
    if-eqz v2, :cond_e

    iput-object v2, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    iget-object v3, v6, Le/a/a/c/l3;->k:Lcom/truecaller/messaging/data/types/Message;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Message;->z:Ljava/lang/String;

    if-eqz v3, :cond_e

    iput-object v3, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    new-instance v4, Ls1/z/c/c0;

    invoke-direct {v4}, Ls1/z/c/c0;-><init>()V

    const-string v5, "en"

    invoke-static {v3, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 9
    iget-object v3, v3, Le/a/a/c/i3;->J:Le/a/a/c/h7;

    .line 10
    invoke-interface {v3}, Le/a/a/c/h7;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    iget-object v3, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 12
    iget-object v3, v3, Le/a/a/c/i3;->o:Le/a/o5/f0;

    .line 13
    invoke-interface {v3}, Le/a/o5/f0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, v5

    .line 14
    :goto_2
    iput-object v3, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 15
    new-instance v3, Ls1/z/c/c0;

    invoke-direct {v3}, Ls1/z/c/c0;-><init>()V

    iget-object v12, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0xca9

    if-eq v13, v14, :cond_6

    goto :goto_3

    .line 16
    :cond_6
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    goto :goto_4

    .line 17
    :cond_7
    :goto_3
    iget-object v5, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 18
    :goto_4
    iput-object v5, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 19
    iget-object v5, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 20
    iget-object v5, v5, Le/a/a/c/i3;->j:Ls1/w/f;

    .line 21
    new-instance v12, Le/a/a/c/l3$a;

    invoke-direct {v12, v6, v3, v11}, Le/a/a/c/l3$a;-><init>(Le/a/a/c/l3;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v0, v6, Le/a/a/c/l3;->e:Ljava/lang/Object;

    iput-object v2, v6, Le/a/a/c/l3;->f:Ljava/lang/Object;

    iput-object v4, v6, Le/a/a/c/l3;->g:Ljava/lang/Object;

    iput-object v3, v6, Le/a/a/c/l3;->h:Ljava/lang/Object;

    iput v1, v6, Le/a/a/c/l3;->i:I

    invoke-static {v5, v12, v6}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_8

    return-object v8

    :cond_8
    move-object/from16 v17, v4

    move-object v4, v0

    move-object v0, v3

    move-object/from16 v3, v17

    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 22
    iget-object v0, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 23
    iget-object v12, v0, Le/a/a/c/i3;->j:Ls1/w/f;

    .line 24
    new-instance v13, Le/a/a/c/l3$b;

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Le/a/a/c/l3$b;-><init>(Le/a/a/c/l3;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v11, v6, Le/a/a/c/l3;->e:Ljava/lang/Object;

    iput-object v11, v6, Le/a/a/c/l3;->f:Ljava/lang/Object;

    iput-object v11, v6, Le/a/a/c/l3;->g:Ljava/lang/Object;

    iput-object v11, v6, Le/a/a/c/l3;->h:Ljava/lang/Object;

    iput v10, v6, Le/a/a/c/l3;->i:I

    invoke-static {v12, v13, v6}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_9

    return-object v8

    :cond_9
    :goto_6
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 25
    iget-object v1, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 26
    iget-object v1, v1, Le/a/a/c/i3;->m:Le/a/a/c/n5;

    .line 27
    invoke-interface {v1}, Le/a/a/c/m5;->z()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v6, Le/a/a/c/l3;->k:Lcom/truecaller/messaging/data/types/Message;

    .line 28
    iget-wide v2, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 29
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 30
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 32
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/m3;

    if-eqz v0, :cond_a

    .line 33
    invoke-interface {v0}, Le/a/a/c/m3;->A()V

    .line 34
    :cond_a
    iget-object v0, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 35
    iget-object v1, v0, Le/a/a/c/i3;->w:Le/a/a/c/r3;

    .line 36
    iget-object v2, v6, Le/a/a/c/l3;->k:Lcom/truecaller/messaging/data/types/Message;

    .line 37
    iget-object v0, v0, Le/a/a/c/i3;->o:Le/a/o5/f0;

    .line 38
    invoke-interface {v0}, Le/a/o5/f0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 39
    iget v3, v3, Le/a/a/c/i3;->k:I

    .line 40
    check-cast v1, Le/a/a/c/s3;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "message"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceLanguage"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v5, v1, Le/a/a/c/s3;->b:Le/a/q2/i0;

    const-string v15, "TextMessageTranslate"

    const-string v8, "type"

    .line 43
    invoke-static {v15, v8}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 44
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "sourceLanguage"

    .line 45
    iget-object v9, v2, Lcom/truecaller/messaging/data/types/Message;->z:Ljava/lang/String;

    if-eqz v9, :cond_b

    goto :goto_7

    :cond_b
    const-string v9, ""

    :goto_7
    const-string v10, "name"

    .line 46
    invoke-static {v8, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "value"

    invoke-static {v9, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {v14, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v4, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {v14, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    .line 50
    invoke-static {v2}, Le/m/d/y/n;->q1(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v0, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {v14, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "contact"

    .line 53
    invoke-virtual {v1, v3}, Le/a/a/c/s3;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v13

    move-object v9, v10

    move-object v10, v0

    move-object v12, v14

    move-object v1, v14

    move-object v14, v0

    .line 54
    invoke-static/range {v8 .. v16}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {v5, v0}, Le/a/q2/i0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_8

    :cond_c
    return-object v7

    .line 57
    :cond_d
    iget-object v1, v6, Le/a/a/c/l3;->j:Le/a/a/c/i3;

    .line 58
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/m3;

    if-eqz v1, :cond_e

    .line 59
    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v6, Le/a/a/c/l3;->k:Lcom/truecaller/messaging/data/types/Message;

    invoke-interface {v1, v0, v2}, Le/a/a/c/m3;->lp(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Message;)V

    :cond_e
    :goto_8
    return-object v7
.end method
