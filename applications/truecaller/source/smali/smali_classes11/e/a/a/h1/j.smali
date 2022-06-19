.class public final Le/a/a/h1/j;
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
    c = "com.truecaller.messaging.urgent.UrgentMessageCallMeBackHelperImpl$callMeBack$1"
    f = "UrgentMessageCallMeBackHelper.kt"
    l = {
        0x3a,
        0x3f,
        0x57,
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/h1/k;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/a/h1/k;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    iput-object p2, p0, Le/a/a/h1/j;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/h1/j;->h:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/h1/j;

    iget-object v0, p0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    iget-object v1, p0, Le/a/a/h1/j;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/h1/j;->h:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/h1/j;-><init>(Le/a/a/h1/k;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/h1/j;

    iget-object v0, p0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    iget-object v1, p0, Le/a/a/h1/j;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/h1/j;->h:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/h1/j;-><init>(Le/a/a/h1/k;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/h1/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/a/h1/j;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Le/a/a/h1/j;->g:Ljava/lang/String;

    iget-object v9, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 5
    iget-object v9, v9, Le/a/a/h1/k;->c:Lo3/a;

    .line 6
    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/b0/q/z;

    iget-object v10, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 7
    iget-object v10, v10, Le/a/a/h1/k;->c:Lo3/a;

    .line 8
    invoke-interface {v10}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/b0/q/z;

    invoke-interface {v10}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v3

    const-string v9, "Participant.buildFromAdd\u2026t().getDefaultSimToken())"

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v9, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 10
    iget-object v9, v9, Le/a/a/h1/k;->f:Lo3/a;

    .line 11
    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/w;

    new-array v10, v8, [Lcom/truecaller/data/entity/messaging/Participant;

    aput-object v3, v10, v4

    iput v8, v0, Le/a/a/h1/j;->e:I

    invoke-interface {v9, v10, v8, v0}, Le/a/a/g/w;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5

    return-object v2

    .line 12
    :cond_5
    :goto_1
    check-cast v3, Lcom/truecaller/messaging/data/types/Draft;

    .line 13
    iget-object v9, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 14
    iget-object v9, v9, Le/a/a/h1/k;->g:Lo3/a;

    .line 15
    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/k/t;

    iget-object v10, v3, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v9, v10}, Le/a/a/k/t;->p([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_7

    .line 16
    iget-object v3, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 17
    iget-object v3, v3, Le/a/a/h1/k;->j:Ls1/w/f;

    .line 18
    new-instance v4, Le/a/a/h1/j$a;

    invoke-direct {v4, v0, v10}, Le/a/a/h1/j$a;-><init>(Le/a/a/h1/j;Ls1/w/d;)V

    iput v7, v0, Le/a/a/h1/j;->e:I

    invoke-static {v3, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    return-object v2

    :cond_6
    :goto_2
    return-object v1

    .line 19
    :cond_7
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v3

    .line 20
    iget-object v9, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 21
    iget-object v9, v9, Le/a/a/h1/k;->h:Le/a/p5/c0;

    const v11, 0x7f120137

    new-array v4, v4, [Ljava/lang/Object;

    .line 22
    invoke-interface {v9, v11, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 23
    iput-object v4, v3, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 24
    iput v8, v3, Lcom/truecaller/messaging/data/types/Draft$b;->o:I

    .line 25
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 26
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v3

    const-string v4, "draft\n                .b\u2026\n                .build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v4, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 28
    iget-object v4, v4, Le/a/a/h1/k;->d:Lo3/a;

    .line 29
    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Le/a/a/c1/d;

    .line 30
    invoke-static {v3, v10, v7}, Le/a/c/p/a;->Z(Lcom/truecaller/messaging/data/types/Draft;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v12

    .line 31
    iget-object v3, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 32
    iget-object v3, v3, Le/a/a/h1/k;->e:Lo3/a;

    .line 33
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "multiSimManager.get()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/e4/p;

    invoke-interface {v3}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v13

    const-string v3, "multiSimManager.get().defaultSimToken"

    invoke-static {v13, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 34
    invoke-interface/range {v11 .. v16}, Le/a/a/c1/d;->c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;

    move-result-object v3

    .line 35
    instance-of v4, v3, Le/a/a/c1/b$e;

    if-eqz v4, :cond_8

    .line 36
    iget-object v4, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 37
    iget-object v4, v4, Le/a/a/h1/k;->d:Lo3/a;

    .line 38
    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Le/a/a/c1/d;

    .line 39
    move-object v12, v3

    check-cast v12, Le/a/a/c1/b$e;

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    const-string v14, "callMeBack"

    .line 40
    invoke-static/range {v11 .. v18}, Le/a/c/p/a;->y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;

    move-result-object v3

    .line 41
    invoke-virtual {v3}, Le/a/r2/x;->g()V

    .line 42
    iget-object v3, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 43
    iget-object v3, v3, Le/a/a/h1/k;->j:Ls1/w/f;

    .line 44
    new-instance v4, Le/a/a/h1/j$b;

    invoke-direct {v4, v0, v10}, Le/a/a/h1/j$b;-><init>(Le/a/a/h1/j;Ls1/w/d;)V

    iput v6, v0, Le/a/a/h1/j;->e:I

    invoke-static {v3, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_9

    return-object v2

    .line 45
    :cond_8
    iget-object v3, v0, Le/a/a/h1/j;->f:Le/a/a/h1/k;

    .line 46
    iget-object v3, v3, Le/a/a/h1/k;->j:Ls1/w/f;

    .line 47
    new-instance v4, Le/a/a/h1/j$c;

    invoke-direct {v4, v0, v10}, Le/a/a/h1/j$c;-><init>(Le/a/a/h1/j;Ls1/w/d;)V

    iput v5, v0, Le/a/a/h1/j;->e:I

    invoke-static {v3, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_9

    return-object v2

    :cond_9
    :goto_3
    return-object v1
.end method
