.class public final Le/a/d/c0/z1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/z1/b;


# instance fields
.field public final a:Le/a/d/c0/n0;

.field public final b:Le/a/d/w/d;

.field public final c:Le/a/d/c0/z1/f;

.field public final d:Le/a/d/c0/j1;

.field public final e:Le/a/d/c0/f0;


# direct methods
.method public constructor <init>(Le/a/d/c0/n0;Le/a/d/w/d;Le/a/d/c0/z1/f;Le/a/d/c0/j1;Le/a/d/c0/f0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "voipCallStateUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invitationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSupport"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/z1/c;->a:Le/a/d/c0/n0;

    iput-object p2, p0, Le/a/d/c0/z1/c;->b:Le/a/d/w/d;

    iput-object p3, p0, Le/a/d/c0/z1/c;->c:Le/a/d/c0/z1/f;

    iput-object p4, p0, Le/a/d/c0/z1/c;->d:Le/a/d/c0/j1;

    iput-object p5, p0, Le/a/d/c0/z1/c;->e:Le/a/d/c0/f0;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/voip/VoipGroupPushNotification;Ls1/w/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/VoipGroupPushNotification;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/d/c0/z1/c$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/d/c0/z1/c$a;

    iget v3, v2, Le/a/d/c0/z1/c$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/c0/z1/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/c0/z1/c$a;

    invoke-direct {v2, v0, v1}, Le/a/d/c0/z1/c$a;-><init>(Le/a/d/c0/z1/c;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/d/c0/z1/c$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/c0/z1/c$a;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v2, v2, Le/a/d/c0/z1/c$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/z1/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/d/c0/z1/c$a;->h:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/voip/VoipGroupPushNotification;

    iget-object v8, v2, Le/a/d/c0/z1/c$a;->g:Ljava/lang/Object;

    check-cast v8, Le/a/d/c0/z1/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/d/c0/z1/c;->a:Le/a/d/c0/n0;

    .line 5
    check-cast v1, Le/a/d/c0/o0;

    invoke-virtual {v1, v5}, Le/a/d/c0/o0;->a(Z)Le/a/d/c0/c;

    move-result-object v1

    .line 6
    instance-of v4, v1, Le/a/d/c0/c$a;

    if-nez v4, :cond_4

    return-object v7

    .line 7
    :cond_4
    check-cast v1, Le/a/d/c0/c$a;

    .line 8
    iget-object v1, v1, Le/a/d/c0/c$a;->a:Ljava/lang/String;

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/voip/VoipGroupPushNotification;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v7

    .line 10
    :cond_5
    iget-object v1, v0, Le/a/d/c0/z1/c;->b:Le/a/d/w/d;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/voip/VoipGroupPushNotification;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v0, v2, Le/a/d/c0/z1/c$a;->g:Ljava/lang/Object;

    move-object/from16 v9, p1

    iput-object v9, v2, Le/a/d/c0/z1/c$a;->h:Ljava/lang/Object;

    iput v8, v2, Le/a/d/c0/z1/c$a;->e:I

    invoke-interface {v1, v4, v2}, Le/a/d/w/d;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object v8, v0

    move-object v4, v9

    .line 11
    :goto_1
    iget-object v9, v8, Le/a/d/c0/z1/c;->e:Le/a/d/c0/f0;

    .line 12
    new-instance v1, Le/a/d/c0/e0;

    .line 13
    sget-object v11, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x7e

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v10, v1

    .line 14
    invoke-direct/range {v10 .. v19}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 15
    sget-object v11, Lcom/truecaller/voip/util/VoipAnalyticsState;->BUSY:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v13, 0x4

    move-object/from16 v12, v20

    move-object/from16 v14, v21

    .line 16
    invoke-static/range {v9 .. v14}, Le/a/p5/s0/g;->A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V

    .line 17
    iget-object v1, v8, Le/a/d/c0/z1/c;->c:Le/a/d/c0/z1/f;

    invoke-virtual {v4}, Lcom/truecaller/voip/VoipGroupPushNotification;->a()Ljava/lang/String;

    move-result-object v9

    .line 18
    iget-object v4, v4, Lcom/truecaller/voip/VoipGroupPushNotification;->c:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 19
    iput-object v8, v2, Le/a/d/c0/z1/c$a;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/d/c0/z1/c$a;->h:Ljava/lang/Object;

    iput v6, v2, Le/a/d/c0/z1/c$a;->e:I

    check-cast v1, Le/a/d/c0/z1/h;

    .line 20
    iget-object v6, v1, Le/a/d/c0/z1/h;->a:Ls1/w/f;

    new-instance v10, Le/a/d/c0/z1/g;

    invoke-direct {v10, v1, v9, v4, v7}, Le/a/d/c0/z1/g;-><init>(Le/a/d/c0/z1/h;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v6, v10, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v2, v8

    .line 21
    :goto_2
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_a

    .line 22
    new-instance v3, Le/a/d/c0/v0;

    .line 23
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 24
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v5

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v10, v6, 0x1

    if-ltz v6, :cond_8

    .line 27
    check-cast v8, Ljava/lang/String;

    .line 28
    new-instance v11, Le/a/d/c0/x0;

    invoke-direct {v11, v8, v5, v6}, Le/a/d/c0/x0;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v10

    goto :goto_3

    .line 29
    :cond_8
    invoke-static {}, Ls1/u/i;->N0()V

    throw v7

    .line 30
    :cond_9
    sget-object v10, Lcom/truecaller/voip/util/VoipEventType;->MISSED:Lcom/truecaller/voip/util/VoipEventType;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1c

    move-object v8, v3

    .line 31
    invoke-direct/range {v8 .. v15}, Le/a/d/c0/v0;-><init>(Ljava/util/List;Lcom/truecaller/voip/util/VoipEventType;JLjava/lang/Long;Ljava/lang/String;I)V

    .line 32
    iget-object v2, v2, Le/a/d/c0/z1/c;->d:Le/a/d/c0/j1;

    invoke-interface {v2, v3}, Le/a/d/c0/j1;->j(Le/a/d/c0/v0;)V

    return-object v1

    :cond_a
    return-object v7

    .line 33
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Sender id is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
