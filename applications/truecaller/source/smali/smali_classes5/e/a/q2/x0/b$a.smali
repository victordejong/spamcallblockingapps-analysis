.class public final Le/a/q2/x0/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/x0/b;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/analytics/call/BlockingAction;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.analytics.callanalytics.CallAnalyticsContactHelperImpl$resolveBlockingAction$2"
    f = "CallAnalyticsContactHelperImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/q2/x0/b;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/q2/x0/b;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/x0/b$a;->e:Le/a/q2/x0/b;

    iput-object p2, p0, Le/a/q2/x0/b$a;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/q2/x0/b$a;

    iget-object v0, p0, Le/a/q2/x0/b$a;->e:Le/a/q2/x0/b;

    iget-object v1, p0, Le/a/q2/x0/b$a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/q2/x0/b$a;-><init>(Le/a/q2/x0/b;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/q2/x0/b$a;->e:Le/a/q2/x0/b;

    iget-object v0, p0, Le/a/q2/x0/b$a;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/q2/x0/b;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "truecaller.call_in_progress"

    .line 6
    invoke-interface {p2, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->NONE:Lcom/truecaller/analytics/call/BlockingAction;

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p1, Le/a/q2/x0/b;->e:Le/a/q2/x0/f;

    .line 9
    invoke-virtual {p2, v0}, Le/a/q2/x0/f;->a(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p2

    .line 10
    iget-object p2, p2, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 11
    sget-object v0, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-eq p2, v0, :cond_1

    .line 12
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->NONE:Lcom/truecaller/analytics/call/BlockingAction;

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, p1, Le/a/q2/x0/b;->f:Lcom/truecaller/settings/CallingSettings;

    .line 14
    invoke-interface {p2}, Lcom/truecaller/settings/CallingSettings;->z()Lcom/truecaller/settings/CallingSettings$BlockMethod;

    move-result-object p2

    sget-object v0, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Reject:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    if-ne p2, v0, :cond_2

    .line 15
    iget-object p1, p1, Le/a/q2/x0/b;->g:Le/a/p5/a0;

    const-string p2, "android.permission.CALL_PHONE"

    .line 16
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->AUTO_BLOCK:Lcom/truecaller/analytics/call/BlockingAction;

    goto :goto_0

    .line 18
    :cond_2
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->SILENT_RING:Lcom/truecaller/analytics/call/BlockingAction;

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/q2/x0/b$a;->e:Le/a/q2/x0/b;

    .line 3
    iget-object p1, p1, Le/a/q2/x0/b;->f:Lcom/truecaller/settings/CallingSettings;

    const-string v0, "truecaller.call_in_progress"

    .line 4
    invoke-interface {p1, v0}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->NONE:Lcom/truecaller/analytics/call/BlockingAction;

    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/q2/x0/b$a;->e:Le/a/q2/x0/b;

    .line 7
    iget-object p1, p1, Le/a/q2/x0/b;->e:Le/a/q2/x0/f;

    .line 8
    iget-object v0, p0, Le/a/q2/x0/b$a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/a/q2/x0/f;->a(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 10
    sget-object v0, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-eq p1, v0, :cond_1

    .line 11
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->NONE:Lcom/truecaller/analytics/call/BlockingAction;

    return-object p1

    .line 12
    :cond_1
    iget-object p1, p0, Le/a/q2/x0/b$a;->e:Le/a/q2/x0/b;

    .line 13
    iget-object p1, p1, Le/a/q2/x0/b;->f:Lcom/truecaller/settings/CallingSettings;

    .line 14
    invoke-interface {p1}, Lcom/truecaller/settings/CallingSettings;->z()Lcom/truecaller/settings/CallingSettings$BlockMethod;

    move-result-object p1

    sget-object v0, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Reject:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Le/a/q2/x0/b$a;->e:Le/a/q2/x0/b;

    .line 15
    iget-object p1, p1, Le/a/q2/x0/b;->g:Le/a/p5/a0;

    const-string v0, "android.permission.CALL_PHONE"

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->AUTO_BLOCK:Lcom/truecaller/analytics/call/BlockingAction;

    goto :goto_0

    .line 18
    :cond_2
    sget-object p1, Lcom/truecaller/analytics/call/BlockingAction;->SILENT_RING:Lcom/truecaller/analytics/call/BlockingAction;

    :goto_0
    return-object p1
.end method
