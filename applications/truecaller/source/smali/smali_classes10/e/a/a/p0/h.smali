.class public final Le/a/a/p0/h;
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
        "Landroid/content/ContentProviderOperation;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.categorizer.UnclassifiedMessagesSyncHelper$classify$1$1$1"
    f = "UnclassifiedMessagesSyncHelper.kt"
    l = {
        0x7d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:I

.field public final synthetic s:Le/a/a/p0/k;

.field public final synthetic t:Ls1/z/c/c0;

.field public final synthetic u:Ls1/z/c/c0;

.field public final synthetic v:Ljava/util/Set;

.field public final synthetic w:Le/a/c/c/e/a;

.field public final synthetic x:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILs1/w/d;Le/a/a/p0/k;Ls1/z/c/c0;Ls1/z/c/c0;Ljava/util/Set;Le/a/c/c/e/a;Ljava/util/ArrayList;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Le/a/a/p0/h;->f:Ljava/lang/String;

    move-wide v1, p2

    iput-wide v1, v0, Le/a/a/p0/h;->g:J

    move-object v1, p4

    iput-object v1, v0, Le/a/a/p0/h;->h:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Le/a/a/p0/h;->i:I

    move v1, p6

    iput v1, v0, Le/a/a/p0/h;->j:I

    move v1, p7

    iput v1, v0, Le/a/a/p0/h;->k:I

    move-object v1, p8

    iput-object v1, v0, Le/a/a/p0/h;->l:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Le/a/a/p0/h;->m:Ljava/lang/String;

    move-wide v1, p10

    iput-wide v1, v0, Le/a/a/p0/h;->n:J

    move-wide v1, p12

    iput-wide v1, v0, Le/a/a/p0/h;->o:J

    move-object/from16 v1, p14

    iput-object v1, v0, Le/a/a/p0/h;->p:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/a/p0/h;->q:Ljava/lang/String;

    move/from16 v1, p16

    iput v1, v0, Le/a/a/p0/h;->r:I

    move-object/from16 v1, p18

    iput-object v1, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    move-object/from16 v1, p19

    iput-object v1, v0, Le/a/a/p0/h;->t:Ls1/z/c/c0;

    move-object/from16 v1, p20

    iput-object v1, v0, Le/a/a/p0/h;->u:Ls1/z/c/c0;

    move-object/from16 v1, p21

    iput-object v1, v0, Le/a/a/p0/h;->v:Ljava/util/Set;

    move-object/from16 v1, p22

    iput-object v1, v0, Le/a/a/p0/h;->w:Le/a/c/c/e/a;

    move-object/from16 v1, p23

    iput-object v1, v0, Le/a/a/p0/h;->x:Ljava/util/ArrayList;

    const/4 v1, 0x2

    move-object/from16 v2, p17

    invoke-direct {p0, v1, v2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 26
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

    move-object/from16 v0, p0

    move-object/from16 v18, p2

    const-string v1, "completion"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v25, Le/a/a/p0/h;

    move-object/from16 v1, v25

    iget-object v2, v0, Le/a/a/p0/h;->f:Ljava/lang/String;

    iget-wide v3, v0, Le/a/a/p0/h;->g:J

    iget-object v5, v0, Le/a/a/p0/h;->h:Ljava/lang/String;

    iget v6, v0, Le/a/a/p0/h;->i:I

    iget v7, v0, Le/a/a/p0/h;->j:I

    iget v8, v0, Le/a/a/p0/h;->k:I

    iget-object v9, v0, Le/a/a/p0/h;->l:Ljava/lang/String;

    iget-object v10, v0, Le/a/a/p0/h;->m:Ljava/lang/String;

    iget-wide v11, v0, Le/a/a/p0/h;->n:J

    iget-wide v13, v0, Le/a/a/p0/h;->o:J

    iget-object v15, v0, Le/a/a/p0/h;->p:Ljava/lang/String;

    move-object/from16 p1, v1

    iget-object v1, v0, Le/a/a/p0/h;->q:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v0, Le/a/a/p0/h;->r:I

    move/from16 v17, v1

    iget-object v1, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    move-object/from16 v19, v1

    iget-object v1, v0, Le/a/a/p0/h;->t:Ls1/z/c/c0;

    move-object/from16 v20, v1

    iget-object v1, v0, Le/a/a/p0/h;->u:Ls1/z/c/c0;

    move-object/from16 v21, v1

    iget-object v1, v0, Le/a/a/p0/h;->v:Ljava/util/Set;

    move-object/from16 v22, v1

    iget-object v1, v0, Le/a/a/p0/h;->w:Le/a/c/c/e/a;

    move-object/from16 v23, v1

    iget-object v1, v0, Le/a/a/p0/h;->x:Ljava/util/ArrayList;

    move-object/from16 v24, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v24}, Le/a/a/p0/h;-><init>(Ljava/lang/String;JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILs1/w/d;Le/a/a/p0/k;Ls1/z/c/c0;Ls1/z/c/c0;Ljava/util/Set;Le/a/c/c/e/a;Ljava/util/ArrayList;)V

    return-object v25
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/p0/h;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/p0/h;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/p0/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 43

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/p0/h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/a/p0/h;->u:Ls1/z/c/c0;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    .line 5
    iget-object v2, v2, Le/a/a/p0/k;->h:Le/a/c/b/l;

    .line 6
    iput v3, v0, Le/a/a/p0/h;->e:I

    invoke-interface {v2, v0}, Le/a/c/b/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_0
    check-cast v2, Le/a/c/b/n;

    iget-object v1, v0, Le/a/a/p0/h;->u:Ls1/z/c/c0;

    .line 8
    iget v2, v2, Le/a/c/b/n;->b:I

    .line 9
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    iput-object v4, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 11
    :goto_1
    iget-object v1, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    iget-object v2, v0, Le/a/a/p0/h;->f:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    const-string v2, "category"

    const-string v4, "classification"

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    iget-wide v5, v0, Le/a/a/p0/h;->g:J

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v5, v6}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v3, 0x3

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/4 v2, 0x2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 18
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    const-string v2, "ContentProviderOperation\u2026OMATIC)\n        }.build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v42, v1

    move-object v1, v0

    move-object/from16 v0, v42

    goto/16 :goto_b

    .line 19
    :cond_5
    iget-object v1, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    .line 20
    iget-object v1, v1, Le/a/a/p0/k;->d:Le/a/a/k/m;

    .line 21
    iget-object v5, v0, Le/a/a/p0/h;->h:Ljava/lang/String;

    invoke-interface {v1, v5}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object v1

    .line 23
    iget v5, v0, Le/a/a/p0/h;->i:I

    .line 24
    iput v5, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->v:I

    .line 25
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    const-string v5, "participantCache.getPart\u2026                 .build()"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget v5, v0, Le/a/a/p0/h;->j:I

    if-nez v5, :cond_6

    new-instance v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;

    invoke-direct {v5}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;-><init>()V

    invoke-virtual {v5}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    move-result-object v5

    const-string v6, "SmsTransportInfo.Builder().build()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/16 v25, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const-wide/16 v21, 0x0

    const/16 v29, 0x0

    const/16 v27, 0x0

    const-wide/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    const/16 v28, -0x1

    .line 27
    new-instance v5, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    move-object v7, v5

    const/16 v26, 0x0

    move-object/from16 v20, v26

    const-string v10, ""

    invoke-direct/range {v7 .. v29}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;-><init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V

    .line 28
    :goto_3
    new-instance v6, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v6}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 29
    iget-wide v7, v0, Le/a/a/p0/h;->g:J

    .line 30
    iput-wide v7, v6, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 31
    iget v7, v0, Le/a/a/p0/h;->k:I

    .line 32
    iput v7, v6, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 33
    sget-object v7, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    move-object v8, v7

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Le/a/a/p0/h;->l:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const v31, 0x3fff5

    const-string v11, "text/plain"

    invoke-static/range {v8 .. v31}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 34
    iget-object v8, v0, Le/a/a/p0/h;->m:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/truecaller/messaging/data/types/Message$b;->j(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 35
    iput-object v1, v6, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 36
    iget v8, v0, Le/a/a/p0/h;->j:I

    .line 37
    iput v8, v6, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 38
    iput-object v5, v6, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 39
    invoke-virtual {v6}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v5

    const-string v6, "Message.Builder()\n      \u2026                 .build()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v6, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    iget-wide v13, v0, Le/a/a/p0/h;->g:J

    iget-object v8, v0, Le/a/a/p0/h;->h:Ljava/lang/String;

    iget-wide v10, v0, Le/a/a/p0/h;->n:J

    move-object/from16 p1, v4

    iget-wide v3, v0, Le/a/a/p0/h;->o:J

    iget v15, v0, Le/a/a/p0/h;->j:I

    .line 41
    iget-object v12, v0, Le/a/a/p0/h;->p:Ljava/lang/String;

    iget-object v9, v0, Le/a/a/p0/h;->q:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v32, v9

    move-object v9, v6

    move-wide/from16 v33, v10

    move-wide v10, v13

    move-object/from16 v35, v12

    move-object v12, v8

    move-wide/from16 v36, v13

    move-wide/from16 v13, v33

    move/from16 v38, v15

    move-wide v15, v3

    move-object/from16 v17, v5

    move/from16 v18, v38

    move-object/from16 v19, v32

    .line 42
    invoke-virtual/range {v9 .. v20}, Le/a/a/p0/k;->a(JLjava/lang/String;JJLcom/truecaller/messaging/data/types/Message;ILjava/lang/String;Z)Le/a/c/r/h/f;

    move-result-object v13

    .line 43
    iget-object v9, v6, Le/a/a/p0/k;->e:Le/a/c/i/i/a;

    invoke-interface {v9, v13}, Le/a/c/i/i/a;->e(Le/a/c/r/h/f;)Z

    move-result v9

    const/16 v39, 0x0

    if-nez v9, :cond_7

    if-eqz v35, :cond_7

    .line 44
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Message$b;->b()Lcom/truecaller/messaging/data/types/Message$b;

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const v31, 0x3fff5

    const-string v40, "text/plain"

    move-object/from16 v41, v11

    move-object/from16 v11, v40

    move-object/from16 v40, v8

    move-object v8, v7

    move-object v7, v13

    move-object/from16 v13, v35

    invoke-static/range {v8 .. v31}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v8

    move-object/from16 v9, v41

    invoke-virtual {v9, v8}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    invoke-virtual {v9}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v16

    const/16 v19, 0x1

    move-object v8, v6

    move-wide/from16 v9, v36

    move-object/from16 v11, v40

    move-wide/from16 v12, v33

    move-wide v14, v3

    move/from16 v17, v38

    move-object/from16 v18, v32

    .line 45
    invoke-virtual/range {v8 .. v19}, Le/a/a/p0/k;->a(JLjava/lang/String;JJLcom/truecaller/messaging/data/types/Message;ILjava/lang/String;Z)Le/a/c/r/h/f;

    move-result-object v3

    move-object v13, v3

    goto :goto_4

    :cond_7
    move-object v7, v13

    move-object/from16 v13, v39

    :goto_4
    if-eqz v13, :cond_8

    goto :goto_5

    :cond_8
    move-object v13, v7

    .line 46
    :goto_5
    iget-object v3, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    iget v4, v0, Le/a/a/p0/h;->r:I

    .line 47
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    if-eq v4, v6, :cond_9

    .line 48
    new-instance v3, Le/a/a/p0/a;

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1c

    move-object v14, v3

    invoke-direct/range {v14 .. v20}, Le/a/a/p0/a;-><init>(IILe/a/c/g/a;ZZI)V

    goto :goto_6

    .line 49
    :cond_9
    iget-object v3, v3, Le/a/a/p0/k;->c:Le/a/a/p0/b;

    invoke-interface {v3, v5, v13}, Le/a/a/p0/b;->a(Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/h/f;)Le/a/a/p0/a;

    move-result-object v3

    .line 50
    :goto_6
    iget-object v4, v0, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    .line 51
    invoke-static {v1}, Le/a/c/p/a;->V2(Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l5/a/b4;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 52
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-boolean v1, v3, Le/a/a/p0/a;->e:Z

    if-nez v1, :cond_a

    :goto_7
    move-object/from16 v10, v39

    goto :goto_8

    .line 54
    :cond_a
    iget-object v1, v3, Le/a/a/p0/a;->c:Le/a/c/g/a;

    if-eqz v1, :cond_e

    .line 55
    sget v4, Le/a/a/p0/b;->a:I

    sget-object v14, Le/a/a/p0/b$a;->a:Le/a/a/p0/b$a;

    .line 56
    iget-boolean v4, v3, Le/a/a/p0/a;->d:Z

    .line 57
    sget-object v19, Lcom/truecaller/insights/categorizer/CategorizerInputType;->SMS:Lcom/truecaller/insights/categorizer/CategorizerInputType;

    move-object/from16 v16, v1

    move-object/from16 v17, v13

    move/from16 v18, v4

    .line 58
    invoke-virtual/range {v14 .. v19}, Le/a/a/p0/b$a;->a(Ljava/util/List;Le/a/c/g/a;Le/a/c/r/h/f;ZLcom/truecaller/insights/categorizer/CategorizerInputType;)Le/a/l5/a/b2$b;

    move-result-object v39

    goto :goto_7

    .line 59
    :goto_8
    instance-of v1, v13, Le/a/c/r/h/f$b;

    if-eqz v1, :cond_b

    .line 60
    check-cast v13, Le/a/c/r/h/f$b;

    .line 61
    iget-object v1, v13, Le/a/c/r/h/f$b;->a:Le/a/c/h/m/c;

    .line 62
    iget v4, v3, Le/a/a/p0/a;->a:I

    .line 63
    iget-wide v5, v1, Le/a/c/h/m/c;->a:J

    iget-object v7, v1, Le/a/c/h/m/c;->b:Ljava/lang/String;

    iget-object v8, v1, Le/a/c/h/m/c;->c:Ljava/lang/String;

    iget-object v9, v1, Le/a/c/h/m/c;->d:Ljava/util/Date;

    iget-wide v11, v1, Le/a/c/h/m/c;->e:J

    iget v15, v1, Le/a/c/h/m/c;->f:I

    iget-object v14, v1, Le/a/c/h/m/c;->g:Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v1, Le/a/c/h/m/c;->i:Ljava/lang/String;

    iget-boolean v0, v1, Le/a/c/h/m/c;->j:Z

    iget-object v1, v1, Le/a/c/h/m/c;->k:Ljava/lang/String;

    move-object/from16 v29, v10

    const-string v10, "address"

    .line 64
    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v14

    const-string v14, "message"

    invoke-static {v8, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "date"

    invoke-static {v9, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Le/a/c/h/m/c;

    move-object/from16 v30, v14

    move-object/from16 v23, v16

    move/from16 v22, v15

    move-wide v15, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-wide/from16 v20, v11

    move/from16 v24, v4

    move-object/from16 v25, v2

    move/from16 v26, v0

    move-object/from16 v27, v1

    invoke-direct/range {v14 .. v27}, Le/a/c/h/m/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;JILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 65
    iget-object v9, v3, Le/a/a/p0/a;->c:Le/a/c/g/a;

    .line 66
    iget-object v6, v13, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    iget-object v7, v13, Le/a/c/r/h/f$b;->c:Ljava/lang/String;

    iget-object v8, v13, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    const-string v0, "smsMessage"

    move-object/from16 v1, v30

    .line 67
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "detailedResponse"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/c/r/h/f$b;

    move-object v4, v2

    move-object v5, v1

    move-object/from16 v10, v29

    invoke-direct/range {v4 .. v10}, Le/a/c/r/h/f$b;-><init>(Le/a/c/h/m/c;Le/a/c/r/h/h;Ljava/lang/String;Le/a/c/r/h/i;Le/a/c/g/a;Le/a/l5/a/b2$b;)V

    move-object/from16 v1, p0

    .line 68
    iget-object v4, v1, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    .line 69
    iget-object v4, v4, Le/a/a/p0/k;->a:Le/a/c/b/j;

    .line 70
    invoke-interface {v4}, Le/a/c/b/j;->b()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Le/a/a/p0/h;->v:Ljava/util/Set;

    iget-wide v5, v1, Le/a/a/p0/h;->g:J

    .line 71
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 72
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 73
    iget-object v4, v1, Le/a/a/p0/h;->w:Le/a/c/c/e/a;

    new-instance v5, Le/a/c/c/c$a;

    invoke-direct {v5, v2}, Le/a/c/c/c$a;-><init>(Le/a/c/r/h/f$b;)V

    .line 74
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "transaction"

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v2, v4, Le/a/c/c/e/a;->a:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    move-object v1, v0

    move-object/from16 v28, v2

    move-object/from16 v29, v10

    move-object/from16 v0, p1

    .line 76
    iget-object v2, v1, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    iget-object v4, v1, Le/a/a/p0/h;->u:Ls1/z/c/c0;

    iget-object v4, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 77
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v29, :cond_d

    .line 78
    iget-object v2, v2, Le/a/a/p0/k;->i:Le/a/q2/a;

    const-string v5, "not_run"

    move-object/from16 v6, v29

    .line 79
    invoke-virtual {v6, v5}, Le/a/l5/a/b2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/b2$b;

    if-eqz v4, :cond_c

    .line 80
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    goto :goto_9

    :cond_c
    const-string v4, "0"

    :goto_9
    invoke-virtual {v6, v4}, Le/a/l5/a/b2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/b2$b;

    .line 81
    invoke-virtual {v6}, Le/a/l5/a/b2$b;->a()Le/a/l5/a/b2;

    move-result-object v4

    const-string v5, "it.apply {\n             \u2026\"0\"\n            }.build()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {v2, v4}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 83
    :cond_d
    :goto_a
    iget-object v2, v1, Le/a/a/p0/h;->s:Le/a/a/p0/k;

    .line 84
    iget-wide v4, v1, Le/a/a/p0/h;->g:J

    .line 85
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v4, v5}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 87
    iget v4, v3, Le/a/a/p0/a;->a:I

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v28

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 89
    iget v3, v3, Le/a/a/p0/a;->b:I

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 91
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    const-string v2, "ContentProviderOperation\u2026cation)\n        }.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    return-object v0

    :cond_e
    move-object v1, v0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Categorizer category cannot be null for a valid categorization"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
