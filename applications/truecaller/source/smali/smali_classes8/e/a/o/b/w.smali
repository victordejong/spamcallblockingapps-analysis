.class public final Le/a/o/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/v;
.implements Lq3/a/i0;


# instance fields
.field public final a:Le/a/p5/c;

.field public final b:Le/a/o/p/c/c;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/b0/q/z;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/p5/c;Le/a/o/p/c/c;Lo3/a;Le/a/b0/q/z;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/c;",
            "Le/a/o/p/c/c;",
            "Lo3/a<",
            "Le/a/o/b/b;",
            ">;",
            "Le/a/b0/q/z;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incomingCallContextDbHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContextMessageFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutine"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/w;->a:Le/a/p5/c;

    iput-object p2, p0, Le/a/o/b/w;->b:Le/a/o/p/c/c;

    iput-object p3, p0, Le/a/o/b/w;->c:Lo3/a;

    iput-object p4, p0, Le/a/o/b/w;->d:Le/a/b0/q/z;

    iput-object p5, p0, Le/a/o/b/w;->e:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/b/w;->e:Ls1/w/f;

    new-instance v1, Le/a/o/b/w$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/b/w$c;-><init>(Le/a/o/b/w;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/data/entity/FeatureType;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/data/entity/FeatureType;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    instance-of v2, v1, Le/a/o/b/w$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/o/b/w$b;

    iget v3, v2, Le/a/o/b/w$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/o/b/w$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/o/b/w$b;

    invoke-direct {v2, v0, v1}, Le/a/o/b/w$b;-><init>(Le/a/o/b/w;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/o/b/w$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/o/b/w$b;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Le/a/o/b/w$b;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/o/b/w$b;->i:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    iget-object v6, v2, Le/a/o/b/w$b;->h:Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    iget-object v8, v2, Le/a/o/b/w$b;->g:Ljava/lang/Object;

    check-cast v8, Le/a/o/b/w;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/o/b/w;->c:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Le/a/o/b/b;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x30

    const/16 v16, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    invoke-static/range {v8 .. v16}, Le/a/m0/a1$k;->r(Le/a/o/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5
    iget-object v4, v0, Le/a/o/b/w;->a:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->c()J

    move-result-wide v12

    const-string v4, "$this$mapToIncomingCallContext"

    .line 6
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    .line 8
    iget-object v9, v1, Lcom/truecaller/data/entity/CallContextMessage;->a:Ljava/lang/String;

    .line 9
    iget-object v10, v1, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    .line 10
    iget-object v11, v1, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    move-object v8, v4

    .line 11
    invoke-direct/range {v8 .. v13}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz p4, :cond_5

    .line 12
    iput-object v0, v2, Le/a/o/b/w$b;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/o/b/w$b;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/o/b/w$b;->i:Ljava/lang/Object;

    iput v6, v2, Le/a/o/b/w$b;->e:I

    .line 13
    iget-object v1, v0, Le/a/o/b/w;->e:Ls1/w/f;

    new-instance v6, Le/a/o/b/x;

    invoke-direct {v6, v0, v7}, Le/a/o/b/x;-><init>(Le/a/o/b/w;Ls1/w/d;)V

    invoke-static {v1, v6, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Ls1/s;->a:Ls1/s;

    :goto_1
    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v8, v0

    move-object v6, v4

    .line 14
    :goto_2
    iput-object v6, v2, Le/a/o/b/w$b;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/o/b/w$b;->h:Ljava/lang/Object;

    iput-object v7, v2, Le/a/o/b/w$b;->i:Ljava/lang/Object;

    iput v5, v2, Le/a/o/b/w$b;->e:I

    invoke-virtual {v8, v4, v2}, Le/a/o/b/w;->d(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object v7, v6

    :cond_7
    :goto_3
    return-object v7
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/b/w;->e:Ls1/w/f;

    new-instance v1, Le/a/o/b/w$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/b/w$a;-><init>(Le/a/o/b/w;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/o/b/w$d;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/o/b/w$d;

    iget v2, v1, Le/a/o/b/w$d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/o/b/w$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/o/b/w$d;

    invoke-direct {v1, p0, p2}, Le/a/o/b/w$d;-><init>(Le/a/o/b/w;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/o/b/w$d;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/o/b/w$d;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p2, p0, Le/a/o/b/w;->b:Le/a/o/p/c/c;

    iput v4, v1, Le/a/o/b/w$d;->e:I

    check-cast p2, Le/a/o/p/c/g;

    .line 5
    iget-object v3, p2, Le/a/o/p/c/g;->c:Ls1/w/f;

    new-instance v4, Le/a/o/p/c/h;

    const/4 v5, 0x0

    invoke-direct {v4, p2, p1, v5}, Le/a/o/p/c/h;-><init>(Le/a/o/p/c/g;Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ls1/w/d;)V

    invoke-static {v3, v4, v1}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-ne p1, v2, :cond_4

    return-object v2

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Le/a/m0/a1$k;->o0(Landroid/database/sqlite/SQLiteException;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/b/w;->e:Ls1/w/f;

    return-object v0
.end method
