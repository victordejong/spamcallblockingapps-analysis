.class public final Le/a/q2/w0/d;
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
    c = "com.truecaller.analytics.call.CallAnalyticsImpl$logAppCallFinishedV3$2"
    f = "CallAnalytics.kt"
    l = {
        0x85,
        0x87,
        0x93
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:J

.field public l:I

.field public final synthetic m:Le/a/q2/w0/b;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lcom/truecaller/analytics/call/CallDirection;

.field public final synthetic r:Lcom/truecaller/analytics/call/CallProvider;

.field public final synthetic s:Lcom/truecaller/analytics/call/CallAnswered;

.field public final synthetic t:Lcom/truecaller/analytics/call/BlockingAction;

.field public final synthetic u:J

.field public final synthetic v:J


# direct methods
.method public constructor <init>(Le/a/q2/w0/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;Lcom/truecaller/analytics/call/CallProvider;Lcom/truecaller/analytics/call/CallAnswered;Lcom/truecaller/analytics/call/BlockingAction;JJLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    iput-object p2, p0, Le/a/q2/w0/d;->n:Ljava/lang/String;

    iput-object p3, p0, Le/a/q2/w0/d;->o:Ljava/lang/String;

    iput-object p4, p0, Le/a/q2/w0/d;->p:Ljava/lang/String;

    iput-object p5, p0, Le/a/q2/w0/d;->q:Lcom/truecaller/analytics/call/CallDirection;

    iput-object p6, p0, Le/a/q2/w0/d;->r:Lcom/truecaller/analytics/call/CallProvider;

    iput-object p7, p0, Le/a/q2/w0/d;->s:Lcom/truecaller/analytics/call/CallAnswered;

    iput-object p8, p0, Le/a/q2/w0/d;->t:Lcom/truecaller/analytics/call/BlockingAction;

    iput-wide p9, p0, Le/a/q2/w0/d;->u:J

    iput-wide p11, p0, Le/a/q2/w0/d;->v:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 16
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

    const-string v1, "completion"

    move-object/from16 v15, p2

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/a/q2/w0/d;

    iget-object v3, v0, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    iget-object v4, v0, Le/a/q2/w0/d;->n:Ljava/lang/String;

    iget-object v5, v0, Le/a/q2/w0/d;->o:Ljava/lang/String;

    iget-object v6, v0, Le/a/q2/w0/d;->p:Ljava/lang/String;

    iget-object v7, v0, Le/a/q2/w0/d;->q:Lcom/truecaller/analytics/call/CallDirection;

    iget-object v8, v0, Le/a/q2/w0/d;->r:Lcom/truecaller/analytics/call/CallProvider;

    iget-object v9, v0, Le/a/q2/w0/d;->s:Lcom/truecaller/analytics/call/CallAnswered;

    iget-object v10, v0, Le/a/q2/w0/d;->t:Lcom/truecaller/analytics/call/BlockingAction;

    iget-wide v11, v0, Le/a/q2/w0/d;->u:J

    iget-wide v13, v0, Le/a/q2/w0/d;->v:J

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Le/a/q2/w0/d;-><init>(Le/a/q2/w0/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;Lcom/truecaller/analytics/call/CallProvider;Lcom/truecaller/analytics/call/CallAnswered;Lcom/truecaller/analytics/call/BlockingAction;JJLs1/w/d;)V

    return-object v1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/q2/w0/d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/q2/w0/d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/w0/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v6, p0

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v6, Le/a/q2/w0/d;->l:I

    const-string v8, "this"

    const/4 v1, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v11, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, v6, Le/a/q2/w0/d;->j:Ljava/lang/Object;

    check-cast v0, Le/a/l5/a/v$b;

    iget-object v1, v6, Le/a/q2/w0/d;->i:Ljava/lang/Object;

    check-cast v1, Le/a/l5/a/v$b;

    iget-object v2, v6, Le/a/q2/w0/d;->h:Ljava/lang/Object;

    check-cast v2, Le/a/l5/a/v$b;

    iget-object v2, v6, Le/a/q2/w0/d;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    iget-object v3, v6, Le/a/q2/w0/d;->f:Ljava/lang/Object;

    check-cast v3, Le/a/q2/w0/h/c;

    iget-object v4, v6, Le/a/q2/w0/d;->e:Ljava/lang/Object;

    check-cast v4, Le/a/l5/a/v$b;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v0

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
    iget-wide v2, v6, Le/a/q2/w0/d;->k:J

    iget-object v0, v6, Le/a/q2/w0/d;->h:Ljava/lang/Object;

    check-cast v0, Le/a/q2/w0/h/c;

    iget-object v4, v6, Le/a/q2/w0/d;->g:Ljava/lang/Object;

    check-cast v4, Le/a/q2/w0/h/n;

    iget-object v5, v6, Le/a/q2/w0/d;->f:Ljava/lang/Object;

    check-cast v5, Le/a/q2/w0/h/n;

    iget-object v12, v6, Le/a/q2/w0/d;->e:Ljava/lang/Object;

    check-cast v12, Le/a/l5/a/v$b;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v13, v0

    move-object v0, v4

    move-wide v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_3

    :cond_2
    iget-object v0, v6, Le/a/q2/w0/d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/q2/w0/h/n;

    iget-object v2, v6, Le/a/q2/w0/d;->f:Ljava/lang/Object;

    check-cast v2, Le/a/q2/w0/h/n;

    iget-object v3, v6, Le/a/q2/w0/d;->e:Ljava/lang/Object;

    check-cast v3, Le/a/l5/a/v$b;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    move-object v5, v2

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Le/a/l5/a/v;->v:Lorg/apache/avro/Schema;

    new-instance v3, Le/a/l5/a/v$b;

    invoke-direct {v3, v10}, Le/a/l5/a/v$b;-><init>(Le/a/l5/a/v$a;)V

    .line 5
    iget-object v0, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    .line 6
    iget-object v0, v0, Le/a/q2/w0/b;->f:Lo3/a;

    .line 7
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/w0/h/e;

    iget-object v2, v6, Le/a/q2/w0/d;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Le/a/q2/w0/h/e;->a(Ljava/lang/String;)Le/a/q2/w0/h/n;

    move-result-object v0

    .line 8
    iget-object v2, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    .line 9
    iget-object v2, v2, Le/a/q2/w0/b;->f:Lo3/a;

    .line 10
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/w0/h/e;

    iget-object v4, v6, Le/a/q2/w0/d;->o:Ljava/lang/String;

    invoke-interface {v2, v4}, Le/a/q2/w0/h/e;->a(Ljava/lang/String;)Le/a/q2/w0/h/n;

    move-result-object v2

    .line 11
    iget-object v4, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    .line 12
    iget-object v4, v4, Le/a/q2/w0/b;->k:Lo3/a;

    .line 13
    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/w0/h/b;

    iget-object v5, v6, Le/a/q2/w0/d;->n:Ljava/lang/String;

    iput-object v3, v6, Le/a/q2/w0/d;->e:Ljava/lang/Object;

    iput-object v0, v6, Le/a/q2/w0/d;->f:Ljava/lang/Object;

    iput-object v2, v6, Le/a/q2/w0/d;->g:Ljava/lang/Object;

    iput v11, v6, Le/a/q2/w0/d;->l:I

    invoke-interface {v4, v5, v6}, Le/a/q2/w0/h/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v7, :cond_4

    return-object v7

    :cond_4
    move-object v5, v0

    move-object v0, v2

    .line 14
    :goto_0
    check-cast v4, Le/a/q2/w0/h/c;

    .line 15
    iget-object v2, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    iget-object v12, v6, Le/a/q2/w0/d;->n:Ljava/lang/String;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    instance-of v2, v5, Le/a/q2/w0/h/n$b;

    if-eqz v2, :cond_5

    move-object v2, v5

    check-cast v2, Le/a/q2/w0/h/n$b;

    .line 18
    iget-object v2, v2, Le/a/q2/w0/h/n$b;->a:Ljava/lang/String;

    .line 19
    invoke-static {v2}, Le/m/d/y/n;->H0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 20
    :cond_5
    instance-of v2, v5, Le/a/q2/w0/h/n$a;

    if-eqz v2, :cond_d

    if-eqz v12, :cond_6

    invoke-static {v12}, Le/m/d/y/n;->H0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_6
    move-object v2, v10

    :goto_1
    if-eqz v2, :cond_7

    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_2

    :cond_7
    const-wide/16 v12, -0x1

    .line 22
    :goto_2
    iget-object v2, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    .line 23
    iget-object v2, v2, Le/a/q2/w0/b;->l:Lo3/a;

    .line 24
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/w0/h/d;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v3, v6, Le/a/q2/w0/d;->e:Ljava/lang/Object;

    iput-object v5, v6, Le/a/q2/w0/d;->f:Ljava/lang/Object;

    iput-object v0, v6, Le/a/q2/w0/d;->g:Ljava/lang/Object;

    iput-object v4, v6, Le/a/q2/w0/d;->h:Ljava/lang/Object;

    iput-wide v12, v6, Le/a/q2/w0/d;->k:J

    iput v9, v6, Le/a/q2/w0/d;->l:I

    invoke-interface {v2, v14, v6}, Le/a/q2/w0/h/d;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_8

    return-object v7

    :cond_8
    move-wide/from16 v16, v12

    move-object v12, v3

    move-object v13, v4

    move-wide/from16 v3, v16

    .line 25
    :goto_3
    move-object v14, v2

    check-cast v14, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    .line 26
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v2, v15}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 27
    iput-wide v3, v12, Le/a/l5/a/v$b;->a:J

    .line 28
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v11, v2, v9

    .line 29
    instance-of v2, v5, Le/a/q2/w0/h/n$b;

    .line 30
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 31
    iput-boolean v2, v12, Le/a/l5/a/v$b;->b:Z

    .line 32
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v11, v2, v1

    .line 33
    iget-object v2, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    invoke-static {v2, v5}, Le/a/q2/w0/b;->c(Le/a/q2/w0/b;Le/a/q2/w0/h/n;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v12, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 35
    iput-object v2, v12, Le/a/l5/a/v$b;->c:Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v11, v2, v4

    .line 37
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, ""

    invoke-virtual {v12, v2, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 38
    iput-object v4, v12, Le/a/l5/a/v$b;->d:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v11, v2, v3

    .line 40
    iget-object v2, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    invoke-static {v2, v0}, Le/a/q2/w0/b;->c(Le/a/q2/w0/b;Le/a/q2/w0/h/n;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v12, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 42
    iput-object v0, v12, Le/a/l5/a/v$b;->e:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v3

    .line 44
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v12, v0, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 45
    iput-object v4, v12, Le/a/l5/a/v$b;->f:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v2

    .line 47
    invoke-static {v12, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    iget-object v2, v6, Le/a/q2/w0/d;->p:Ljava/lang/String;

    iget-object v3, v6, Le/a/q2/w0/d;->q:Lcom/truecaller/analytics/call/CallDirection;

    .line 48
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/truecaller/analytics/call/CallDirection;->INCOMING:Lcom/truecaller/analytics/call/CallDirection;

    if-ne v3, v0, :cond_9

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_a

    move-object v4, v2

    goto :goto_4

    :cond_a
    const-string v4, "outside"

    .line 50
    :goto_4
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-virtual {v12, v0, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 51
    iput-object v4, v12, Le/a/l5/a/v$b;->g:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v2

    .line 53
    iget-object v0, v6, Le/a/q2/w0/d;->r:Lcom/truecaller/analytics/call/CallProvider;

    invoke-virtual {v0}, Lcom/truecaller/analytics/call/CallProvider;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v12, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 55
    iput-object v0, v12, Le/a/l5/a/v$b;->h:Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v3

    .line 57
    iget-object v0, v6, Le/a/q2/w0/d;->q:Lcom/truecaller/analytics/call/CallDirection;

    invoke-virtual {v0}, Lcom/truecaller/analytics/call/CallDirection;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v12, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 59
    iput-object v0, v12, Le/a/l5/a/v$b;->i:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v3

    .line 61
    iget-object v0, v6, Le/a/q2/w0/d;->s:Lcom/truecaller/analytics/call/CallAnswered;

    invoke-virtual {v0}, Lcom/truecaller/analytics/call/CallAnswered;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v12, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 63
    iput-object v0, v12, Le/a/l5/a/v$b;->j:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v3

    .line 65
    iget-object v0, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    iget-object v2, v6, Le/a/q2/w0/d;->n:Ljava/lang/String;

    iget-object v3, v6, Le/a/q2/w0/d;->q:Lcom/truecaller/analytics/call/CallDirection;

    iget-object v4, v6, Le/a/q2/w0/d;->s:Lcom/truecaller/analytics/call/CallAnswered;

    iget-object v5, v6, Le/a/q2/w0/d;->p:Ljava/lang/String;

    iput-object v12, v6, Le/a/q2/w0/d;->e:Ljava/lang/Object;

    iput-object v13, v6, Le/a/q2/w0/d;->f:Ljava/lang/Object;

    iput-object v14, v6, Le/a/q2/w0/d;->g:Ljava/lang/Object;

    iput-object v12, v6, Le/a/q2/w0/d;->h:Ljava/lang/Object;

    iput-object v12, v6, Le/a/q2/w0/d;->i:Ljava/lang/Object;

    iput-object v12, v6, Le/a/q2/w0/d;->j:Ljava/lang/Object;

    iput v1, v6, Le/a/q2/w0/d;->l:I

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Le/a/q2/w0/b;->e(Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;Lcom/truecaller/analytics/call/CallAnswered;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_b

    return-object v7

    :cond_b
    move-object v1, v12

    move-object v4, v1

    move-object v3, v13

    move-object v2, v14

    :goto_5
    check-cast v0, Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/16 v7, 0xc

    aget-object v5, v5, v7

    invoke-virtual {v12, v5, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 67
    iput-object v0, v12, Le/a/l5/a/v$b;->k:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v12}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v7

    .line 69
    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, v3, Le/a/q2/w0/h/c;->a:Lcom/truecaller/analytics/call/CallContactSource;

    .line 71
    invoke-virtual {v0}, Lcom/truecaller/analytics/call/CallContactSource;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/16 v7, 0xf

    aget-object v5, v5, v7

    invoke-virtual {v1, v5, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 73
    iput-object v0, v1, Le/a/l5/a/v$b;->n:Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v7

    .line 75
    iget-boolean v0, v3, Le/a/q2/w0/h/c;->b:Z

    .line 76
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x10

    aget-object v3, v3, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 77
    iput-boolean v0, v1, Le/a/l5/a/v$b;->o:Z

    .line 78
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v5

    .line 79
    iget-object v0, v6, Le/a/q2/w0/d;->t:Lcom/truecaller/analytics/call/BlockingAction;

    invoke-virtual {v0}, Lcom/truecaller/analytics/call/BlockingAction;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x11

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 81
    iput-object v0, v1, Le/a/l5/a/v$b;->p:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v5

    .line 83
    iget-wide v7, v6, Le/a/q2/w0/d;->u:J

    .line 84
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v3, 0xd

    aget-object v0, v0, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 85
    iput-wide v7, v1, Le/a/l5/a/v$b;->l:J

    .line 86
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v3

    .line 87
    iget-wide v7, v6, Le/a/q2/w0/d;->v:J

    .line 88
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v3, 0xe

    aget-object v0, v0, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 89
    iput-wide v7, v1, Le/a/l5/a/v$b;->m:J

    .line 90
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v3

    .line 91
    sget-object v0, Le/a/l5/a/j4;->d:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/j4$b;

    invoke-direct {v0, v10}, Le/a/l5/a/j4$b;-><init>(Le/a/l5/a/j4$a;)V

    .line 92
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    .line 93
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v0, v5, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 94
    iput-object v3, v0, Le/a/l5/a/j4$b;->a:Ljava/util/List;

    .line 95
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v11, v5, v7

    .line 96
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v11

    invoke-virtual {v0, v5, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 97
    iput-object v3, v0, Le/a/l5/a/j4$b;->b:Ljava/util/List;

    .line 98
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v5

    aput-boolean v11, v5, v11

    .line 99
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v0, v5, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 100
    iput-object v3, v0, Le/a/l5/a/j4$b;->c:Ljava/util/List;

    .line 101
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v11, v3, v9

    .line 102
    invoke-virtual {v0}, Le/a/l5/a/j4$b;->a()Le/a/l5/a/j4;

    move-result-object v0

    .line 103
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/16 v5, 0x12

    aget-object v3, v3, v5

    invoke-virtual {v1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 104
    iput-object v0, v1, Le/a/l5/a/v$b;->q:Le/a/l5/a/j4;

    .line 105
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v5

    if-eqz v2, :cond_c

    .line 106
    invoke-virtual {v2}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v10

    .line 107
    :cond_c
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v2, 0x13

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, v10}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 108
    iput-object v10, v1, Le/a/l5/a/v$b;->r:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v11, v0, v2

    .line 110
    iget-object v0, v6, Le/a/q2/w0/d;->m:Le/a/q2/w0/b;

    .line 111
    iget-object v0, v0, Le/a/q2/w0/b;->e:Lo3/a;

    .line 112
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-virtual {v4}, Le/a/l5/a/v$b;->a()Le/a/l5/a/v;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 113
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    .line 114
    :cond_d
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
