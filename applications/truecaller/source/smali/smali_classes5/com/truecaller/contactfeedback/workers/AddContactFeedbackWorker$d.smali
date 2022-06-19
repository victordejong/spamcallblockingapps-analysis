.class public final Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->doWork()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Landroidx/work/ListenableWorker$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contactfeedback.workers.AddContactFeedbackWorker$doWork$1"
    f = "AddContactFeedbackWorker.kt"
    l = {
        0x4f,
        0x54
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;


# direct methods
.method public constructor <init>(Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;

    iget-object v0, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;-><init>(Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;

    iget-object v0, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;-><init>(Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 5
    iget-object v5, v2, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->j:Le/a/k3/j/b;

    .line 6
    iget-object v2, v2, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 7
    invoke-virtual {v5, v6, v7}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    sget-object v5, Ln3/m0/f;->c:Ln3/m0/f;

    :cond_3
    if-eqz v2, :cond_c

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "it"

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/truecaller/data/entity/Number;

    .line 12
    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    move v8, v4

    :goto_2
    xor-int/2addr v8, v4

    .line 13
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Lcom/truecaller/data/entity/Number;

    .line 18
    new-instance v15, Lcom/truecaller/contactfeedback/db/ContactFeedback;

    .line 19
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v10

    const-string v7, "it.normalizedNumber"

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v7, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 21
    iget-object v7, v7, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->c:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_8

    goto :goto_4

    .line 22
    :cond_8
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v7

    :goto_4
    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    const-string v7, ""

    :goto_5
    move-object v11, v7

    .line 23
    iget-object v7, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 24
    iget-object v7, v7, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->d:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    .line 25
    iget-object v7, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 26
    iget-object v7, v7, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->b:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 27
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 28
    iget-object v7, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 29
    iget-object v7, v7, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->e:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_a

    const/4 v14, 0x0

    goto :goto_6

    .line 30
    :cond_a
    iget-object v7, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 31
    iget-object v7, v7, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->e:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 32
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 33
    :goto_6
    iget-object v7, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 34
    iget-object v7, v7, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->f:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_b

    const/4 v7, 0x0

    goto :goto_7

    .line 35
    :cond_b
    iget-object v7, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 36
    iget-object v7, v7, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->f:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 37
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object v7, v9

    .line 38
    :goto_7
    iget-object v9, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 39
    iget-object v9, v9, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->g:Ls1/g;

    invoke-interface {v9}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Ljava/lang/String;

    .line 40
    iget-object v9, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 41
    iget-object v9, v9, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->h:Le/a/p5/c;

    .line 42
    invoke-interface {v9}, Le/a/p5/c;->c()J

    move-result-wide v17

    move-object v9, v15

    move-object v3, v15

    move-object v15, v7

    .line 43
    invoke-direct/range {v9 .. v18}, Lcom/truecaller/contactfeedback/db/ContactFeedback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    goto/16 :goto_3

    .line 44
    :cond_c
    sget-object v5, Ls1/u/s;->a:Ls1/u/s;

    .line 45
    :cond_d
    iget-object v2, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 46
    iget-object v2, v2, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->i:Le/a/q/h/f;

    .line 47
    iput v4, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->e:I

    check-cast v2, Le/a/q/h/g;

    .line 48
    iget-object v2, v2, Le/a/q/h/g;->b:Le/a/q/g/e;

    check-cast v2, Le/a/q/g/f;

    invoke-virtual {v2, v5, v0}, Le/a/q/g/f;->l(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_e

    goto :goto_8

    .line 49
    :cond_e
    sget-object v2, Ls1/s;->a:Ls1/s;

    :goto_8
    if-ne v2, v1, :cond_f

    return-object v1

    .line 50
    :cond_f
    :goto_9
    iget-object v2, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 51
    iget-object v2, v2, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->h:Le/a/p5/c;

    .line 52
    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v8

    .line 53
    new-instance v2, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    const-wide/16 v4, 0x0

    iget-object v3, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 54
    iget-object v3, v3, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->a:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v2

    .line 55
    invoke-direct/range {v3 .. v11}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;-><init>(JJJILs1/z/c/f;)V

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 56
    iget-object v3, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->f:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    .line 57
    iget-object v3, v3, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->i:Le/a/q/h/f;

    const/4 v4, 0x2

    .line 58
    iput v4, v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;->e:I

    check-cast v3, Le/a/q/h/g;

    .line 59
    iget-object v3, v3, Le/a/q/h/g;->b:Le/a/q/g/e;

    check-cast v3, Le/a/q/g/f;

    invoke-virtual {v3, v2, v0}, Le/a/q/g/f;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_10

    return-object v1

    .line 60
    :cond_10
    :goto_a
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v1
.end method
