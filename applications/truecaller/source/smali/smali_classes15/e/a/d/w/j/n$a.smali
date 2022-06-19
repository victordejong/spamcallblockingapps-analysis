.class public final Le/a/d/w/j/n$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/w/j/n;->e(Le/a/d/w/h$b;)Lq3/a/p1;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.invitation.action.EndInvitationImpl$end$1"
    f = "EndInvitation.kt"
    l = {
        0x27,
        0x58,
        0x2f,
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/w/j/n;

.field public final synthetic i:Le/a/d/w/h$b;


# direct methods
.method public constructor <init>(Le/a/d/w/j/n;Le/a/d/w/h$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    iput-object p2, p0, Le/a/d/w/j/n$a;->i:Le/a/d/w/h$b;

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

    new-instance p1, Le/a/d/w/j/n$a;

    iget-object v0, p0, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    iget-object v1, p0, Le/a/d/w/j/n$a;->i:Le/a/d/w/h$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/w/j/n$a;-><init>(Le/a/d/w/j/n;Le/a/d/w/h$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/w/j/n$a;

    iget-object v0, p0, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    iget-object v1, p0, Le/a/d/w/j/n$a;->i:Le/a/d/w/h$b;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/w/j/n$a;-><init>(Le/a/d/w/j/n;Le/a/d/w/h$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/w/j/n$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v1, Le/a/d/w/j/n$a;->g:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Le/a/d/w/j/n$a;->f:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/d0;

    iget-object v2, v1, Le/a/d/w/j/n$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Le/a/d/w/j/n$a;->f:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/d0;

    iget-object v4, v1, Le/a/d/w/j/n$a;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    :try_start_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    iget-object v2, v1, Le/a/d/w/j/n$a;->f:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v5, v1, Le/a/d/w/j/n$a;->e:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/r;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 5
    iget-object v2, v2, Le/a/d/w/j/n;->a:Lq3/a/i0;

    .line 6
    invoke-interface {v2}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v2

    sget v8, Lq3/a/p1;->e0:I

    sget-object v8, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {v2, v8}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v2

    check-cast v2, Lq3/a/p1;

    if-eqz v2, :cond_5

    iput v6, v1, Le/a/d/w/j/n$a;->g:I

    invoke-static {v2, v1}, Ls1/a/a/a/v0/f/d;->V(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    :goto_0
    iget-object v2, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 8
    iget-object v2, v2, Le/a/d/w/j/n;->d:Le/a/d/w/i;

    .line 9
    iget-object v8, v2, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 10
    iput-object v2, v1, Le/a/d/w/j/n$a;->e:Ljava/lang/Object;

    iput-object v8, v1, Le/a/d/w/j/n$a;->f:Ljava/lang/Object;

    iput v5, v1, Le/a/d/w/j/n$a;->g:I

    invoke-interface {v8, v7, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    return-object v0

    :cond_6
    move-object v5, v2

    move-object v2, v8

    .line 11
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object v5

    .line 12
    iget-object v8, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 13
    iget-object v8, v8, Le/a/d/w/j/n;->d:Le/a/d/w/i;

    .line 14
    invoke-virtual {v8}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/d/w/h;

    .line 15
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    instance-of v8, v8, Le/a/d/w/h$b;

    if-eqz v8, :cond_7

    goto/16 :goto_9

    .line 17
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ending call with state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Le/a/d/w/j/n$a;->i:Le/a/d/w/h$b;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    iget-object v8, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 19
    iget-object v8, v8, Le/a/d/w/j/n;->e:Le/a/d/c0/x1/e;

    .line 20
    iput-object v2, v1, Le/a/d/w/j/n$a;->e:Ljava/lang/Object;

    iput-object v5, v1, Le/a/d/w/j/n$a;->f:Ljava/lang/Object;

    iput v4, v1, Le/a/d/w/j/n$a;->g:I

    invoke-interface {v8, v1}, Le/a/d/c0/x1/e;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v4, v0, :cond_8

    return-object v0

    :cond_8
    move-object v4, v2

    move-object v2, v5

    .line 21
    :goto_2
    :try_start_3
    iget-object v5, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 22
    iget-object v5, v5, Le/a/d/w/j/n;->f:Le/a/d/c0/o;

    .line 23
    invoke-interface {v5}, Le/a/d/c0/o;->t()V

    .line 24
    iget-object v5, v1, Le/a/d/w/j/n$a;->i:Le/a/d/w/h$b;

    instance-of v8, v5, Le/a/d/w/h$b$a;

    if-nez v8, :cond_10

    .line 25
    iget-object v8, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 26
    iget-object v9, v8, Le/a/d/w/j/n;->b:Lq3/a/x2/a1;

    .line 27
    invoke-interface {v9}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/d/b0/a;

    .line 28
    instance-of v10, v5, Le/a/d/w/h$b$a;

    if-nez v10, :cond_f

    .line 29
    instance-of v5, v5, Le/a/d/w/h$b$c;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/truecaller/voip/util/VoipEventType;->BLOCKED:Lcom/truecaller/voip/util/VoipEventType;

    goto :goto_3

    .line 30
    :cond_9
    sget-object v5, Lcom/truecaller/voip/util/VoipEventType;->MISSED:Lcom/truecaller/voip/util/VoipEventType;

    :goto_3
    move-object v12, v5

    .line 31
    new-instance v5, Le/a/d/c0/v0;

    .line 32
    iget-object v8, v8, Le/a/d/w/j/n;->g:Le/a/d/w/j/c;

    invoke-interface {v8, v9}, Le/a/d/w/j/c;->f(Le/a/d/b0/a;)Ljava/util/List;

    move-result-object v11

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    if-eqz v9, :cond_a

    .line 33
    iget-object v8, v9, Le/a/d/b0/a;->d:Ljava/lang/String;

    move-object/from16 v16, v8

    goto :goto_4

    :cond_a
    move-object/from16 v16, v7

    :goto_4
    const/16 v17, 0xc

    move-object v10, v5

    .line 34
    invoke-direct/range {v10 .. v17}, Le/a/d/c0/v0;-><init>(Ljava/util/List;Lcom/truecaller/voip/util/VoipEventType;JLjava/lang/Long;Ljava/lang/String;I)V

    .line 35
    iget-object v8, v5, Le/a/d/c0/v0;->a:Ljava/util/List;

    .line 36
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    .line 37
    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 38
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    move-object v5, v7

    :goto_6
    if-eqz v5, :cond_d

    .line 39
    iget-object v6, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 40
    iget-object v6, v6, Le/a/d/w/j/n;->h:Le/a/d/c0/j1;

    .line 41
    invoke-interface {v6, v5}, Le/a/d/c0/j1;->j(Le/a/d/c0/v0;)V

    .line 42
    :cond_d
    iget-object v5, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 43
    iget-object v5, v5, Le/a/d/w/j/n;->i:Le/a/d/w/j/s;

    .line 44
    iget-object v6, v1, Le/a/d/w/j/n$a;->i:Le/a/d/w/h$b;

    invoke-interface {v5, v6}, Le/a/d/w/j/s;->j(Le/a/d/w/h$b;)V

    .line 45
    iget-object v5, v1, Le/a/d/w/j/n$a;->h:Le/a/d/w/j/n;

    .line 46
    iget-object v5, v5, Le/a/d/w/j/n;->c:Le/a/d/c0/z1/i;

    .line 47
    iput-object v4, v1, Le/a/d/w/j/n$a;->e:Ljava/lang/Object;

    iput-object v2, v1, Le/a/d/w/j/n$a;->f:Ljava/lang/Object;

    iput v3, v1, Le/a/d/w/j/n$a;->g:I

    invoke-interface {v5, v1}, Le/a/d/c0/z1/i;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_e

    return-object v0

    :cond_e
    move-object v0, v2

    move-object v2, v4

    :goto_7
    move-object v4, v2

    move-object v2, v0

    goto :goto_8

    .line 48
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t save history when call is accepted"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_10
    :goto_8
    iget-object v0, v1, Le/a/d/w/j/n$a;->i:Le/a/d/w/h$b;

    invoke-interface {v2, v0}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    .line 50
    :goto_9
    :try_start_4
    sget-object v0, Ls1/s;->a:Ls1/s;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    invoke-interface {v2, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v4, v2

    :goto_a
    invoke-interface {v4, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method
