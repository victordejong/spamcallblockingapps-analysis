.class public final Le/a/d/c0/f$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/f;->a(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/d/b0/a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.CallUserResolverImpl$resolveByNumber$2"
    f = "CallUserResolver.kt"
    l = {
        0xe0,
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c0/f;

.field public final synthetic h:Lcom/truecaller/voip/groupcall/call/CallDirection;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/c0/f;Lcom/truecaller/voip/groupcall/call/CallDirection;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/f$e;->g:Le/a/d/c0/f;

    iput-object p2, p0, Le/a/d/c0/f$e;->h:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iput-object p3, p0, Le/a/d/c0/f$e;->i:Ljava/lang/String;

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

    new-instance p1, Le/a/d/c0/f$e;

    iget-object v0, p0, Le/a/d/c0/f$e;->g:Le/a/d/c0/f;

    iget-object v1, p0, Le/a/d/c0/f$e;->h:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iget-object v2, p0, Le/a/d/c0/f$e;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/f$e;-><init>(Le/a/d/c0/f;Lcom/truecaller/voip/groupcall/call/CallDirection;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/f$e;

    iget-object v0, p0, Le/a/d/c0/f$e;->g:Le/a/d/c0/f;

    iget-object v1, p0, Le/a/d/c0/f$e;->h:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iget-object v2, p0, Le/a/d/c0/f$e;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/f$e;-><init>(Le/a/d/c0/f;Lcom/truecaller/voip/groupcall/call/CallDirection;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/f$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v1, Le/a/d/c0/f$e;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Le/a/d/c0/f$e;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lq3/a/b3/c;

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v3, p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Le/a/d/c0/f$e;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Le/a/d/c0/f$e;->g:Le/a/d/c0/f;

    .line 5
    iget-object v2, v2, Le/a/d/c0/f;->a:Lq3/a/b3/c;

    .line 6
    iput-object v2, v1, Le/a/d/c0/f$e;->e:Ljava/lang/Object;

    iput v4, v1, Le/a/d/c0/f$e;->f:I

    invoke-interface {v2, v5, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    :try_start_1
    iget-object v6, v1, Le/a/d/c0/f$e;->h:Lcom/truecaller/voip/groupcall/call/CallDirection;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_5

    if-ne v6, v4, :cond_4

    .line 8
    sget-object v4, Lcom/truecaller/voip/util/VoipSearchDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipSearchDirection;

    goto :goto_1

    :cond_4
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 9
    :cond_5
    sget-object v4, Lcom/truecaller/voip/util/VoipSearchDirection;->INCOMING:Lcom/truecaller/voip/util/VoipSearchDirection;

    .line 10
    :goto_1
    iget-object v6, v1, Le/a/d/c0/f$e;->g:Le/a/d/c0/f;

    .line 11
    iget-object v6, v6, Le/a/d/c0/f;->d:Le/a/d/c0/j1;

    .line 12
    iget-object v7, v1, Le/a/d/c0/f$e;->i:Ljava/lang/String;

    iput-object v2, v1, Le/a/d/c0/f$e;->e:Ljava/lang/Object;

    iput v3, v1, Le/a/d/c0/f$e;->f:I

    invoke-interface {v6, v7, v4, v1}, Le/a/d/c0/j1;->E(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6

    return-object v0

    .line 13
    :cond_6
    :goto_2
    check-cast v3, Le/a/d/c0/f1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_7

    .line 14
    invoke-interface {v2, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v5

    .line 15
    :cond_7
    :try_start_2
    sget v0, Le/a/d/c0/i;->b:I

    .line 16
    new-instance v0, Le/a/d/b0/a;

    .line 17
    iget-object v7, v3, Le/a/d/c0/f1;->a:Ljava/lang/Long;

    .line 18
    iget-object v8, v3, Le/a/d/c0/f1;->b:Ljava/lang/String;

    .line 19
    iget-object v9, v3, Le/a/d/c0/f1;->c:Ljava/lang/String;

    .line 20
    iget-object v10, v3, Le/a/d/c0/f1;->e:Ljava/lang/String;

    .line 21
    iget-object v11, v3, Le/a/d/c0/f1;->d:Ljava/lang/String;

    .line 22
    iget-object v12, v3, Le/a/d/c0/f1;->j:Lcom/truecaller/voip/VoipUserBadge;

    .line 23
    iget-boolean v13, v3, Le/a/d/c0/f1;->f:Z

    .line 24
    iget-object v14, v3, Le/a/d/c0/f1;->g:Ljava/lang/Integer;

    .line 25
    iget-boolean v15, v3, Le/a/d/c0/f1;->h:Z

    .line 26
    iget-boolean v3, v3, Le/a/d/c0/f1;->i:Z

    move-object v6, v0

    move/from16 v16, v3

    .line 27
    invoke-direct/range {v6 .. v16}, Le/a/d/b0/a;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUserBadge;ZLjava/lang/Integer;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-interface {v2, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v2, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method
