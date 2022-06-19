.class public final Le/a/d/j$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/j;->k(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipCallOptions;)V
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
    c = "com.truecaller.voip.VoipImpl$startCall$$inlined$startCallInternal$1"
    f = "Voip.kt"
    l = {
        0x2ce,
        0x142
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/j;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Le/a/d/j;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lcom/truecaller/voip/VoipCallOptions;


# direct methods
.method public constructor <init>(Le/a/d/j;Ljava/lang/String;Ls1/w/d;Le/a/d/j;Ljava/lang/String;Lcom/truecaller/voip/VoipCallOptions;)V
    .locals 0

    iput-object p1, p0, Le/a/d/j$e;->g:Le/a/d/j;

    iput-object p2, p0, Le/a/d/j$e;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/d/j$e;->i:Le/a/d/j;

    iput-object p5, p0, Le/a/d/j$e;->j:Ljava/lang/String;

    iput-object p6, p0, Le/a/d/j$e;->k:Lcom/truecaller/voip/VoipCallOptions;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/d/j$e;

    iget-object v1, p0, Le/a/d/j$e;->g:Le/a/d/j;

    iget-object v2, p0, Le/a/d/j$e;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/d/j$e;->i:Le/a/d/j;

    iget-object v5, p0, Le/a/d/j$e;->j:Ljava/lang/String;

    iget-object v6, p0, Le/a/d/j$e;->k:Lcom/truecaller/voip/VoipCallOptions;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Le/a/d/j$e;-><init>(Le/a/d/j;Ljava/lang/String;Ls1/w/d;Le/a/d/j;Ljava/lang/String;Lcom/truecaller/voip/VoipCallOptions;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/j$e;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/j$e;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/j$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/j$e;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/d/j$e;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/d/j$e;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/j$e;->g:Le/a/d/j;

    .line 5
    iget-object p1, p1, Le/a/d/j;->a:Lq3/a/b3/c;

    .line 6
    iput-object p1, p0, Le/a/d/j$e;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d/j$e;->f:I

    invoke-interface {p1, v5, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_0
    :try_start_1
    iget-object v2, p0, Le/a/d/j$e;->g:Le/a/d/j;

    .line 8
    iget-object v2, v2, Le/a/d/j;->f:Lo3/a;

    .line 9
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h5/y;

    iget-object v4, p0, Le/a/d/j$e;->g:Le/a/d/j;

    .line 10
    iget-object v4, v4, Le/a/d/j;->e:Le/a/h5/w;

    .line 11
    invoke-interface {v4}, Le/a/h5/w;->h()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object p1, p0, Le/a/d/j$e;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/j$e;->f:I

    invoke-interface {v2, v4, p0}, Le/a/h5/y;->f([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v1, p1

    move-object p1, v2

    .line 12
    :goto_1
    :try_start_2
    check-cast p1, Le/a/h5/l;

    .line 13
    iget-boolean v2, p1, Le/a/h5/l;->a:Z

    if-eqz v2, :cond_7

    .line 14
    iget-boolean p1, p1, Le/a/h5/l;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    invoke-interface {v1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Le/a/d/j$e;->i:Le/a/d/j;

    .line 17
    iget-object p1, p1, Le/a/d/j;->g:Le/a/d/g;

    .line 18
    check-cast p1, Le/a/d/e;

    invoke-virtual {p1}, Le/a/d/e;->b()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Starting service LegacyVoipService with newOutgoingCallIntent::Voip"

    .line 19
    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Le/a/d/j$e;->i:Le/a/d/j;

    .line 21
    iget-object p1, p1, Le/a/d/j;->d:Landroid/content/Context;

    .line 22
    iget-object v1, p0, Le/a/d/j$e;->j:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v1}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const-string p1, "Starting service CallService with newOutgoingCallIntent::Voip"

    .line 23
    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Le/a/d/j$e;->i:Le/a/d/j;

    .line 25
    iget-object p1, p1, Le/a/d/j;->d:Landroid/content/Context;

    .line 26
    sget-object v1, Lcom/truecaller/voip/service/call/CallService;->j:Lcom/truecaller/voip/service/call/CallService$a;

    iget-object v2, p0, Le/a/d/j$e;->j:Ljava/lang/String;

    invoke-static {v2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Le/a/d/j$e;->k:Lcom/truecaller/voip/VoipCallOptions;

    invoke-virtual {v1, p1, v2, v3}, Lcom/truecaller/voip/service/call/CallService$a;->a(Landroid/content/Context;Ljava/util/Set;Lcom/truecaller/voip/VoipCallOptions;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v1}, Ln3/k/b/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_2
    return-object v0

    .line 27
    :cond_7
    :goto_3
    :try_start_3
    iget-object p1, p0, Le/a/d/j$e;->g:Le/a/d/j;

    .line 28
    iget-object v2, p1, Le/a/d/j;->d:Landroid/content/Context;

    .line 29
    iget-object p1, p1, Le/a/d/j;->z:Le/a/p5/a0;

    .line 30
    invoke-static {v2, p1}, Le/a/p5/s0/g;->x1(Landroid/content/Context;Le/a/p5/a0;)V

    .line 31
    iget-object p1, p0, Le/a/d/j$e;->g:Le/a/d/j;

    .line 32
    iget-object p1, p1, Le/a/d/j;->n:Le/a/d/c0/f0;

    .line 33
    iget-object v2, p0, Le/a/d/j$e;->h:Ljava/lang/String;

    sget-object v3, Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;->NO_MIC_PERMISSION:Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;

    invoke-interface {p1, v2, v3}, Le/a/d/c0/f0;->e(Ljava/lang/String;Lcom/truecaller/voip/util/VoipAnalyticsFailedCallAction;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    invoke-interface {v1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :goto_4
    move-object v0, p1

    move-object p1, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_5
    invoke-interface {p1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method
