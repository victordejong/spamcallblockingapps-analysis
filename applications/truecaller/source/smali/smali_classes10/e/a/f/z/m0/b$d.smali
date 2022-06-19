.class public final Le/a/f/z/m0/b$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/z/m0/b;->f(Lq3/a/w2/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenIncomingCallUIEvents$1"
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

    iput-object p1, p0, Le/a/f/z/m0/b$d;->f:Le/a/f/z/m0/b;

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

    new-instance v0, Le/a/f/z/m0/b$d;

    iget-object v1, p0, Le/a/f/z/m0/b$d;->f:Le/a/f/z/m0/b;

    invoke-direct {v0, v1, p2}, Le/a/f/z/m0/b$d;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/z/m0/b$d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/f/z/m0/b$d;->f:Le/a/f/z/m0/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 6
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->REJECT_WITH_MESSAGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 7
    :cond_1
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->REJECT:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->ACCEPT:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    .line 9
    :goto_0
    sget-object p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v2, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p2, p1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->k(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object p2, v1, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/z/m0/b$d;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;

    .line 2
    iget-object v0, p0, Le/a/f/z/m0/b$d;->f:Le/a/f/z/m0/b;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 5
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->REJECT_WITH_MESSAGE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 6
    :cond_1
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->REJECT:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->ACCEPT:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    .line 8
    :goto_0
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v2, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v2}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->k(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object v0, v0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
