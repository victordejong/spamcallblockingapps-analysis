.class public final Le/a/d/c0/g0;
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
    c = "com.truecaller.voip.util.VoipAnalyticsUtilImpl$listenOnHoldSettings$1"
    f = "VoipAnalyticsUtilImpl.kt"
    l = {
        0x166
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c0/k0;

.field public final synthetic h:Lq3/a/w2/z;

.field public final synthetic i:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/d/c0/k0;Lq3/a/w2/z;Ls1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/g0;->g:Le/a/d/c0/k0;

    iput-object p2, p0, Le/a/d/c0/g0;->h:Lq3/a/w2/z;

    iput-object p3, p0, Le/a/d/c0/g0;->i:Ls1/z/b/a;

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

    new-instance p1, Le/a/d/c0/g0;

    iget-object v0, p0, Le/a/d/c0/g0;->g:Le/a/d/c0/k0;

    iget-object v1, p0, Le/a/d/c0/g0;->h:Lq3/a/w2/z;

    iget-object v2, p0, Le/a/d/c0/g0;->i:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/g0;-><init>(Le/a/d/c0/k0;Lq3/a/w2/z;Ls1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/g0;

    iget-object v0, p0, Le/a/d/c0/g0;->g:Le/a/d/c0/k0;

    iget-object v1, p0, Le/a/d/c0/g0;->h:Lq3/a/w2/z;

    iget-object v2, p0, Le/a/d/c0/g0;->i:Ls1/z/b/a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/g0;-><init>(Le/a/d/c0/k0;Lq3/a/w2/z;Ls1/z/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/g0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/g0;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/d/c0/g0;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/w2/l;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/g0;->h:Lq3/a/w2/z;

    invoke-interface {p1}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object p1

    move-object v1, p1

    move-object p1, p0

    :goto_0
    iput-object v1, p1, Le/a/d/c0/g0;->e:Ljava/lang/Object;

    iput v2, p1, Le/a/d/c0/g0;->f:I

    invoke-interface {v1, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v10, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, v1

    move-object v1, v10

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v3}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    iget-object v4, v0, Le/a/d/c0/g0;->g:Le/a/d/c0/k0;

    iget-object v5, v0, Le/a/d/c0/g0;->i:Ls1/z/b/a;

    invoke-interface {v5}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/c0/e0;

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v2, :cond_3

    .line 7
    sget-object v6, Lcom/truecaller/voip/util/VoipAnalyticsState;->ON_HOLD:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Le/a/p5/s0/g;->A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 8
    sget-object v6, Lcom/truecaller/voip/util/VoipAnalyticsState;->RESUMED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Le/a/p5/s0/g;->A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V

    :goto_2
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_0

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 9
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
