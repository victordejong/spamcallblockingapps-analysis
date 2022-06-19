.class public final Le/a/f/z/m0/b$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/z/m0/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/incallui/service/CallState;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenCallStates$1"
    f = "InCallUIAnalyticsImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/f/z/m0/b;


# direct methods
.method public constructor <init>(Le/a/f/z/m0/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/m0/b$c;->f:Le/a/f/z/m0/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/z/m0/b$c;

    iget-object v1, p0, Le/a/f/z/m0/b$c;->f:Le/a/f/z/m0/b;

    invoke-direct {v0, v1, p2}, Le/a/f/z/m0/b$c;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/z/m0/b$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/f/z/m0/b$c;->f:Le/a/f/z/m0/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 4
    sget-object p2, Lcom/truecaller/incallui/service/CallState;->STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, p2, :cond_3

    .line 5
    iget-object p1, v1, Le/a/f/z/m0/b;->d:Le/a/f/w/c;

    invoke-interface {p1}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/w/f;

    if-eqz p1, :cond_3

    .line 6
    instance-of p2, p1, Le/a/f/w/f$c;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->SEARCHING:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_0

    .line 7
    :cond_0
    instance-of p2, p1, Le/a/f/w/f$a;

    if-eqz p2, :cond_1

    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->UNKNOWN:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_0

    .line 8
    :cond_1
    instance-of p2, p1, Le/a/f/w/f$b;

    if-eqz p2, :cond_2

    check-cast p1, Le/a/f/w/f$b;

    .line 9
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 10
    invoke-virtual {v1, p1}, Le/a/f/z/m0/b;->m(Le/a/f/a/g;)Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    move-result-object p1

    .line 11
    :goto_0
    iget-object v7, v1, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    const-string p2, "type"

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Type"

    .line 15
    invoke-static {p2, p1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    const-string v2, "CallFinished"

    const-string v6, "AnalyticsEvent.Builder(N\u2026       }\n        .build()"

    move-object v3, v5

    .line 16
    invoke-static/range {v2 .. v7}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    goto :goto_1

    .line 17
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/z/m0/b$c;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/incallui/service/CallState;

    .line 2
    sget-object v0, Lcom/truecaller/incallui/service/CallState;->STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

    if-ne p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Le/a/f/z/m0/b$c;->f:Le/a/f/z/m0/b;

    .line 4
    iget-object v0, p1, Le/a/f/z/m0/b;->d:Le/a/f/w/c;

    invoke-interface {v0}, Le/a/f/w/c;->a()Lq3/a/w2/h;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/w/f;

    if-eqz v0, :cond_3

    .line 5
    instance-of v1, v0, Le/a/f/w/f$c;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->SEARCHING:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Le/a/f/w/f$a;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->UNKNOWN:Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Le/a/f/w/f$b;

    if-eqz v1, :cond_2

    check-cast v0, Le/a/f/w/f$b;

    .line 8
    iget-object v0, v0, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 9
    invoke-virtual {p1, v0}, Le/a/f/z/m0/b;->m(Le/a/f/a/g;)Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    move-result-object v0

    .line 10
    :goto_0
    iget-object v6, p1, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    const-string p1, "type"

    .line 11
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Type"

    .line 14
    invoke-static {p1, v0}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x0

    const-string v1, "CallFinished"

    const-string v5, "AnalyticsEvent.Builder(N\u2026       }\n        .build()"

    move-object v2, v4

    .line 15
    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    goto :goto_1

    .line 16
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 17
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
