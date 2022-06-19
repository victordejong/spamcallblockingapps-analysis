.class public final Le/a/f/z/m0/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/z/m0/b;->e(Lq3/a/w2/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/callbubbles/CallBubbleUIEvent;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenBubbleUIEvents$1"
    f = "InCallUIAnalyticsImpl.kt"
    l = {
        0xe6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/f/z/m0/b;


# direct methods
.method public constructor <init>(Le/a/f/z/m0/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/m0/b$b;->h:Le/a/f/z/m0/b;

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

    new-instance v0, Le/a/f/z/m0/b$b;

    iget-object v1, p0, Le/a/f/z/m0/b$b;->h:Le/a/f/z/m0/b;

    invoke-direct {v0, v1, p2}, Le/a/f/z/m0/b$b;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/z/m0/b$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/z/m0/b$b;

    iget-object v1, p0, Le/a/f/z/m0/b$b;->h:Le/a/f/z/m0/b;

    invoke-direct {v0, v1, p2}, Le/a/f/z/m0/b$b;-><init>(Le/a/f/z/m0/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/z/m0/b$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/z/m0/b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/z/m0/b$b;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/f/z/m0/b$b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Le/a/f/z/m0/b$b;->e:Ljava/lang/Object;

    check-cast v1, Le/a/q2/y0/a/a$a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/z/m0/b$b;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/callbubbles/CallBubbleUIEvent;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    sget-object p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;->BUBBLE:Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;

    sget-object v1, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI_BUBBLE:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {v1}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v0, v1, v2, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->k(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    iget-object v0, p0, Le/a/f/z/m0/b$b;->h:Le/a/f/z/m0/b;

    .line 6
    iget-object v0, v0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    .line 7
    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Le/a/q2/y0/a/a;->d:Le/a/q2/y0/a/a$a;

    .line 9
    sget-object p1, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI_BUBBLE:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    invoke-virtual {p1}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v3, p0, Le/a/f/z/m0/b$b;->h:Le/a/f/z/m0/b;

    iput-object v1, p0, Le/a/f/z/m0/b$b;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/f/z/m0/b$b;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/f/z/m0/b$b;->g:I

    invoke-virtual {v3, p0}, Le/a/f/z/m0/b;->l(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    move-object v1, p1

    move-object p1, v2

    :goto_0
    const/4 v2, 0x0

    check-cast p1, Lcom/truecaller/incallui/utils/analytics/events/CallerType;

    invoke-virtual {p1}, Lcom/truecaller/incallui/utils/analytics/events/CallerType;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0xa

    .line 11
    invoke-static/range {v0 .. v5}, Le/a/q2/y0/a/a$a;->a(Le/a/q2/y0/a/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Le/a/q2/y0/a/a;

    move-result-object p1

    .line 12
    iget-object v0, p0, Le/a/f/z/m0/b$b;->h:Le/a/f/z/m0/b;

    .line 13
    iget-object v0, v0, Le/a/f/z/m0/b;->c:Le/a/q2/a;

    .line 14
    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 15
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
