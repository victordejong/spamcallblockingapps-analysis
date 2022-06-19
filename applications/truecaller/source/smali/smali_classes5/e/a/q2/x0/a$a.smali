.class public final Le/a/q2/x0/a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/x0/a;->a(Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;ZZLs1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.analytics.callanalytics.CallAnalyticsACSHelperImpl$shouldShowAcs$2"
    f = "CallAnalyticsACSHelperImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/q2/x0/a;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/truecaller/analytics/call/CallDirection;

.field public final synthetic h:Z

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Le/a/q2/x0/a;Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;ZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/x0/a$a;->e:Le/a/q2/x0/a;

    iput-object p2, p0, Le/a/q2/x0/a$a;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/q2/x0/a$a;->g:Lcom/truecaller/analytics/call/CallDirection;

    iput-boolean p4, p0, Le/a/q2/x0/a$a;->h:Z

    iput-boolean p5, p0, Le/a/q2/x0/a$a;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/q2/x0/a$a;

    iget-object v1, p0, Le/a/q2/x0/a$a;->e:Le/a/q2/x0/a;

    iget-object v2, p0, Le/a/q2/x0/a$a;->f:Ljava/lang/String;

    iget-object v3, p0, Le/a/q2/x0/a$a;->g:Lcom/truecaller/analytics/call/CallDirection;

    iget-boolean v4, p0, Le/a/q2/x0/a$a;->h:Z

    iget-boolean v5, p0, Le/a/q2/x0/a$a;->i:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/q2/x0/a$a;-><init>(Le/a/q2/x0/a;Ljava/lang/String;Lcom/truecaller/analytics/call/CallDirection;ZZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/q2/x0/a$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/q2/x0/a$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/x0/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/q2/x0/a$a;->e:Le/a/q2/x0/a;

    .line 3
    iget-object p1, p1, Le/a/q2/x0/a;->g:Le/a/q2/x0/f;

    .line 4
    iget-object v0, p0, Le/a/q2/x0/a$a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/a/q2/x0/f;->a(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/q2/x0/a$a;->e:Le/a/q2/x0/a;

    .line 6
    iget-object v0, v0, Le/a/q2/x0/a;->c:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "afterCall"

    .line 7
    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Le/a/q2/x0/a$a;->f:Ljava/lang/String;

    invoke-static {v0}, Le/a/b0/q/c0;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/a/q2/x0/a$a;->e:Le/a/q2/x0/a;

    .line 9
    iget-object v3, p0, Le/a/q2/x0/a$a;->f:Ljava/lang/String;

    iget-object v4, p0, Le/a/q2/x0/a$a;->g:Lcom/truecaller/analytics/call/CallDirection;

    iget-boolean v5, p0, Le/a/q2/x0/a$a;->h:Z

    iget-boolean v6, p0, Le/a/q2/x0/a$a;->i:Z

    .line 10
    iget-object v7, v0, Le/a/q2/x0/a;->f:Le/a/o5/r;

    invoke-interface {v7, v3}, Le/a/o5/r;->b(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v1

    .line 11
    iget-object v7, v0, Le/a/q2/x0/a;->c:Lcom/truecaller/settings/CallingSettings;

    const-string v8, "enabledCallerIDforPB"

    invoke-interface {v7, v8}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 12
    iget-object v8, v0, Le/a/q2/x0/a;->c:Lcom/truecaller/settings/CallingSettings;

    const-string v9, "afterCallForPbContacts"

    invoke-interface {v8, v9}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 13
    invoke-virtual {v4}, Lcom/truecaller/analytics/call/CallDirection;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Le/a/q2/x0/a;->b:Le/a/u3/g;

    invoke-virtual {v9}, Le/a/u3/g;->T()Le/a/u3/b;

    move-result-object v9

    invoke-interface {v9}, Le/a/u3/b;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    if-eqz v8, :cond_1

    .line 14
    invoke-virtual {v4}, Lcom/truecaller/analytics/call/CallDirection;->isOutgoing()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v0, v0, Le/a/q2/x0/a;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->U()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 15
    :goto_1
    invoke-virtual {v4}, Lcom/truecaller/analytics/call/CallDirection;->isOutgoing()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    if-nez v3, :cond_4

    if-nez v7, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_2
    if-nez v3, :cond_4

    if-nez v7, :cond_4

    if-nez v6, :cond_4

    if-nez v9, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Le/a/q2/x0/a$a;->e:Le/a/q2/x0/a;

    .line 17
    iget-object v0, v0, Le/a/q2/x0/a;->d:Le/a/o5/f0;

    .line 18
    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/a/q2/x0/a$a;->e:Le/a/q2/x0/a;

    .line 19
    iget-object v0, v0, Le/a/q2/x0/a;->e:Le/a/o5/x1;

    .line 20
    invoke-interface {v0}, Le/a/o5/x1;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iget-object p1, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 22
    sget-object v0, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-eq p1, v0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    .line 23
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
