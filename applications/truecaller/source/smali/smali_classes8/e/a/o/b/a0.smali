.class public final Le/a/o/b/a0;
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
    c = "com.truecaller.contextcall.utils.IncomingMidCallReasonNotificationManagerImpl$handleReceiveMidCallReason$1"
    f = "IncomingMidCallReasonNotificationManager.kt"
    l = {
        0x1a,
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/o/b/b0;

.field public final synthetic h:Le/a/o/b/h0;


# direct methods
.method public constructor <init>(Le/a/o/b/b0;Le/a/o/b/h0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a0;->g:Le/a/o/b/b0;

    iput-object p2, p0, Le/a/o/b/a0;->h:Le/a/o/b/h0;

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

    new-instance p1, Le/a/o/b/a0;

    iget-object v0, p0, Le/a/o/b/a0;->g:Le/a/o/b/b0;

    iget-object v1, p0, Le/a/o/b/a0;->h:Le/a/o/b/h0;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/b/a0;-><init>(Le/a/o/b/b0;Le/a/o/b/h0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/b/a0;

    iget-object v0, p0, Le/a/o/b/a0;->g:Le/a/o/b/b0;

    iget-object v1, p0, Le/a/o/b/a0;->h:Le/a/o/b/h0;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/b/a0;-><init>(Le/a/o/b/b0;Le/a/o/b/h0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/b/a0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/o/b/a0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/o/b/a0;->e:Ljava/lang/Object;

    check-cast v1, Le/a/o/b/h0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/o/b/a0;->e:Ljava/lang/Object;

    check-cast v2, Le/a/o/b/h0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_4

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/o/b/a0;->h:Le/a/o/b/h0;

    .line 5
    iget-object v2, p1, Le/a/o/b/h0;->a:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_d

    .line 7
    iget-object v2, p1, Le/a/o/b/h0;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v4

    :goto_3
    if-nez v2, :cond_d

    .line 9
    iget-object v2, p1, Le/a/o/b/h0;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    move v5, v4

    :cond_8
    if-eqz v5, :cond_9

    goto :goto_6

    .line 11
    :cond_9
    iget-object v2, p0, Le/a/o/b/a0;->g:Le/a/o/b/b0;

    .line 12
    iget-object v2, v2, Le/a/o/b/b0;->a:Le/a/o/b/v;

    .line 13
    iget-object v5, p1, Le/a/o/b/h0;->c:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Le/a/o/b/a0;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/o/b/a0;->f:I

    invoke-interface {v2, v5, p0}, Le/a/o/b/v;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    .line 15
    :cond_a
    :goto_4
    iget-object v2, p0, Le/a/o/b/a0;->g:Le/a/o/b/b0;

    .line 16
    iget-object v4, v2, Le/a/o/b/b0;->a:Le/a/o/b/v;

    .line 17
    iget-object v5, p1, Le/a/o/b/h0;->a:Ljava/lang/String;

    .line 18
    iget-object v6, p1, Le/a/o/b/h0;->c:Ljava/lang/String;

    .line 19
    iget-object v7, p1, Le/a/o/b/h0;->b:Ljava/lang/String;

    const/4 v8, 0x0

    .line 20
    sget-object v9, Lcom/truecaller/data/entity/FeatureType;->MID_CALL:Lcom/truecaller/data/entity/FeatureType;

    const/16 v11, 0x8

    const/4 v12, 0x0

    iput-object p1, p0, Le/a/o/b/a0;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/o/b/a0;->f:I

    move-object v10, p0

    invoke-static/range {v4 .. v12}, Le/a/m0/a1$k;->q(Le/a/o/b/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/data/entity/FeatureType;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    return-object v1

    :cond_b
    move-object v1, p1

    move-object p1, v2

    :goto_5
    check-cast p1, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;

    if-eqz p1, :cond_c

    .line 21
    iget-object p1, p0, Le/a/o/b/a0;->g:Le/a/o/b/b0;

    .line 22
    iget-object p1, p1, Le/a/o/b/b0;->d:Le/a/o/b/i0;

    .line 23
    invoke-interface {p1}, Le/a/o/b/i0;->a()Lq3/a/x2/a1;

    move-result-object p1

    .line 24
    iget-object v2, v1, Le/a/o/b/h0;->b:Ljava/lang/String;

    .line 25
    invoke-interface {p1, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 26
    :cond_c
    iget-object p1, p0, Le/a/o/b/a0;->g:Le/a/o/b/b0;

    .line 27
    iget-object p1, p1, Le/a/o/b/b0;->c:Le/a/o/b/d;

    .line 28
    iget-object v1, v1, Le/a/o/b/h0;->a:Ljava/lang/String;

    .line 29
    invoke-interface {p1, v1}, Le/a/o/b/d;->b(Ljava/lang/String;)V

    :cond_d
    :goto_6
    return-object v0
.end method
