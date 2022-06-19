.class public final Le/a/e3/j/d;
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
    c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationHandlerImpl$handleNotification$1"
    f = "CallAlertNotificationHandler.kt"
    l = {
        0x6b,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/e3/j/c;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/lang/Long;

.field public final synthetic n:Ljava/lang/Long;

.field public final synthetic o:Z

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Le/a/e3/e/a;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:J

.field public final synthetic u:Z


# direct methods
.method public constructor <init>(Le/a/e3/j/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Le/a/e3/e/a;Ljava/lang/String;JZLs1/w/d;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    move-object v1, p2

    iput-object v1, v0, Le/a/e3/j/d;->i:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Le/a/e3/j/d;->j:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Le/a/e3/j/d;->k:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Le/a/e3/j/d;->l:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Le/a/e3/j/d;->m:Ljava/lang/Long;

    move-object v1, p7

    iput-object v1, v0, Le/a/e3/j/d;->n:Ljava/lang/Long;

    move v1, p8

    iput-boolean v1, v0, Le/a/e3/j/d;->o:Z

    move-object v1, p9

    iput-object v1, v0, Le/a/e3/j/d;->p:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Le/a/e3/j/d;->q:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Le/a/e3/j/d;->r:Le/a/e3/e/a;

    move-object v1, p12

    iput-object v1, v0, Le/a/e3/j/d;->s:Ljava/lang/String;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Le/a/e3/j/d;->t:J

    move/from16 v1, p15

    iput-boolean v1, v0, Le/a/e3/j/d;->u:Z

    const/4 v1, 0x2

    move-object/from16 v2, p16

    invoke-direct {p0, v1, v2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 19
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

    move-object/from16 v17, p2

    const-string v1, "completion"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Le/a/e3/j/d;

    move-object/from16 v1, v18

    iget-object v2, v0, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    iget-object v3, v0, Le/a/e3/j/d;->i:Ljava/lang/String;

    iget-object v4, v0, Le/a/e3/j/d;->j:Ljava/lang/String;

    iget-object v5, v0, Le/a/e3/j/d;->k:Ljava/lang/String;

    iget-object v6, v0, Le/a/e3/j/d;->l:Ljava/lang/String;

    iget-object v7, v0, Le/a/e3/j/d;->m:Ljava/lang/Long;

    iget-object v8, v0, Le/a/e3/j/d;->n:Ljava/lang/Long;

    iget-boolean v9, v0, Le/a/e3/j/d;->o:Z

    iget-object v10, v0, Le/a/e3/j/d;->p:Ljava/lang/String;

    iget-object v11, v0, Le/a/e3/j/d;->q:Ljava/lang/String;

    iget-object v12, v0, Le/a/e3/j/d;->r:Le/a/e3/e/a;

    iget-object v13, v0, Le/a/e3/j/d;->s:Ljava/lang/String;

    iget-wide v14, v0, Le/a/e3/j/d;->t:J

    move-object/from16 p1, v1

    iget-boolean v1, v0, Le/a/e3/j/d;->u:Z

    move/from16 v16, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v17}, Le/a/e3/j/d;-><init>(Le/a/e3/j/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Le/a/e3/e/a;Ljava/lang/String;JZLs1/w/d;)V

    return-object v18
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e3/j/d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e3/j/d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e3/j/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v10, p0

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v10, Le/a/e3/j/d;->g:I

    const/16 v13, 0x40

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v14, :cond_0

    iget-object v0, v10, Le/a/e3/j/d;->f:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    iget-object v1, v10, Le/a/e3/j/d;->e:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v0

    move v12, v9

    move-object/from16 v0, p1

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v12, v9

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 5
    iget-object v1, v0, Le/a/e3/j/c;->k:Le/a/k/h;

    .line 6
    iget-object v3, v10, Le/a/e3/j/d;->i:Ljava/lang/String;

    .line 7
    iget-object v2, v10, Le/a/e3/j/d;->j:Ljava/lang/String;

    .line 8
    iget-object v4, v10, Le/a/e3/j/d;->k:Ljava/lang/String;

    .line 9
    iget-object v5, v10, Le/a/e3/j/d;->l:Ljava/lang/String;

    .line 10
    iget-object v6, v10, Le/a/e3/j/d;->m:Ljava/lang/Long;

    .line 11
    iget-object v7, v10, Le/a/e3/j/d;->n:Ljava/lang/Long;

    .line 12
    iget-boolean v8, v10, Le/a/e3/j/d;->o:Z

    iput v9, v10, Le/a/e3/j/d;->g:I

    move v12, v9

    move-object/from16 v9, p0

    .line 13
    invoke-virtual/range {v0 .. v9}, Le/a/e3/j/c;->c(Le/a/k/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_3

    return-object v11

    .line 14
    :cond_3
    :goto_0
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 15
    iget-object v0, v0, Le/a/e3/j/c;->b:Le/a/k3/j/b;

    .line 16
    iget-object v1, v10, Le/a/e3/j/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    .line 17
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 18
    iget-object v0, v0, Le/a/e3/j/c;->k:Le/a/k/h;

    .line 19
    iget-object v2, v10, Le/a/e3/j/d;->j:Ljava/lang/String;

    .line 20
    iget-object v3, v10, Le/a/e3/j/d;->i:Ljava/lang/String;

    .line 21
    iget-object v4, v10, Le/a/e3/j/d;->l:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v15

    :goto_1
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_5

    goto :goto_2

    .line 25
    :cond_5
    invoke-interface {v0, v2, v3, v4, v5}, Le/a/k/h;->U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    :cond_6
    :goto_2
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    iget-object v2, v10, Le/a/e3/j/d;->p:Ljava/lang/String;

    iget-object v3, v10, Le/a/e3/j/d;->q:Ljava/lang/String;

    iget-object v4, v10, Le/a/e3/j/d;->k:Ljava/lang/String;

    iget-object v5, v10, Le/a/e3/j/d;->r:Le/a/e3/e/a;

    .line 27
    iget-wide v5, v5, Le/a/e3/e/a;->a:J

    .line 28
    iget-object v7, v10, Le/a/e3/j/d;->s:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v8, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v8}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8, v13}, Lcom/truecaller/data/entity/Contact;->setSource(I)V

    .line 33
    iget-object v2, v0, Le/a/e3/j/c;->c:Le/a/k3/l/f;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v4, v3, v15

    invoke-interface {v2, v3}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v8, v2}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 34
    :cond_7
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/truecaller/data/entity/Contact;->V0(Ljava/lang/String;)V

    .line 35
    iget-object v2, v0, Le/a/e3/j/c;->e:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/truecaller/data/entity/Contact;->X0(J)V

    .line 36
    invoke-virtual {v0, v7}, Le/a/e3/j/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 37
    iput v0, v8, Lcom/truecaller/data/entity/Contact;->r:I

    .line 38
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    iget-wide v2, v10, Le/a/e3/j/d;->t:J

    iget-boolean v4, v10, Le/a/e3/j/d;->u:Z

    .line 39
    iget-object v0, v0, Le/a/e3/j/c;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v5, 0x4e20

    cmp-long v0, v2, v5

    if-gtz v0, :cond_8

    move v9, v12

    goto :goto_3

    :cond_8
    move v9, v15

    :goto_3
    if-eqz v9, :cond_9

    if-eqz v4, :cond_9

    move v9, v12

    goto :goto_4

    :cond_9
    move v9, v15

    :goto_4
    if-eqz v9, :cond_f

    .line 40
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    iget-object v2, v10, Le/a/e3/j/d;->r:Le/a/e3/e/a;

    iput-object v1, v10, Le/a/e3/j/d;->e:Ljava/lang/Object;

    iput-object v8, v10, Le/a/e3/j/d;->f:Ljava/lang/Object;

    iput v14, v10, Le/a/e3/j/d;->g:I

    invoke-virtual {v0, v2, v10}, Le/a/e3/j/c;->b(Le/a/e3/e/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_a

    return-object v11

    .line 41
    :cond_a
    :goto_5
    check-cast v0, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz v1, :cond_b

    .line 42
    iget-object v2, v10, Le/a/e3/j/d;->s:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 43
    iget-object v3, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 44
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "localContact"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "badgesFromPush"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget v4, v1, Lcom/truecaller/data/entity/Contact;->r:I

    .line 46
    invoke-virtual {v3, v2}, Le/a/e3/j/c;->a(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v2, v4

    .line 47
    iput v2, v1, Lcom/truecaller/data/entity/Contact;->r:I

    :cond_b
    if-eqz v1, :cond_c

    .line 48
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_d

    if-eqz v1, :cond_d

    .line 49
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 50
    :cond_d
    iget-object v2, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 51
    iget-object v2, v2, Le/a/e3/j/c;->g:Le/a/e3/j/f;

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    move-object v1, v8

    .line 52
    :goto_7
    iget-object v3, v10, Le/a/e3/j/d;->k:Ljava/lang/String;

    invoke-interface {v2, v1, v3, v0}, Le/a/e3/j/f;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)V

    .line 53
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 54
    iget-object v0, v0, Le/a/e3/j/c;->i:Le/a/u3/g;

    .line 55
    iget-object v1, v0, Le/a/u3/g;->V2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xcb

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 58
    iget-object v0, v0, Le/a/e3/j/c;->h:Le/a/e3/k/a;

    .line 59
    invoke-interface {v0}, Le/a/e3/k/a;->a()V

    .line 60
    :cond_f
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 61
    iget-object v0, v0, Le/a/e3/j/c;->a:Le/a/k3/j/j;

    .line 62
    iget-object v1, v10, Le/a/e3/j/d;->k:Ljava/lang/String;

    new-array v2, v12, [I

    aput v13, v2, v15

    invoke-virtual {v0, v1, v2}, Le/a/k3/j/j;->l(Ljava/lang/String;[I)Z

    .line 63
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    .line 64
    iget-object v0, v0, Le/a/e3/j/c;->a:Le/a/k3/j/j;

    .line 65
    invoke-virtual {v0, v8}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z

    .line 66
    iget-object v0, v10, Le/a/e3/j/d;->h:Le/a/e3/j/c;

    iget-object v1, v10, Le/a/e3/j/d;->r:Le/a/e3/e/a;

    .line 67
    iget-wide v1, v1, Le/a/e3/e/a;->a:J

    .line 68
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v0, v0, Le/a/e3/j/c;->d:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 70
    sget-object v2, Le/a/l5/a/d0;->e:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/d0$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/a/l5/a/d0$b;-><init>(Le/a/l5/a/d0$a;)V

    .line 71
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    aget-object v3, v3, v14

    invoke-virtual {v2, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 72
    iput-object v1, v2, Le/a/l5/a/d0$b;->a:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v12, v1, v14

    .line 74
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v3, 0x3

    aget-object v1, v1, v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 75
    iput-boolean v15, v2, Le/a/l5/a/d0$b;->b:Z

    .line 76
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v12, v1, v3

    .line 77
    invoke-virtual {v2}, Le/a/l5/a/d0$b;->a()Le/a/l5/a/d0;

    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 79
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
