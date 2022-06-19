.class public final Le/a/q2/x0/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/x0/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/q2/w0/h/c;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.analytics.callanalytics.CallAnalyticsContactHelperImpl$resolveContactInfo$2"
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

    iput-object p1, p0, Le/a/q2/x0/b$b;->e:Le/a/q2/x0/b;

    iput-object p2, p0, Le/a/q2/x0/b$b;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/q2/x0/b$b;

    iget-object v0, p0, Le/a/q2/x0/b$b;->e:Le/a/q2/x0/b;

    iget-object v1, p0, Le/a/q2/x0/b$b;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/q2/x0/b$b;-><init>(Le/a/q2/x0/b;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/q2/x0/b$b;->e:Le/a/q2/x0/b;

    iget-object v0, p0, Le/a/q2/x0/b$b;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p1, Le/a/q2/x0/b;->d:Le/a/b0/q/z;

    .line 6
    invoke-interface {p2, v0}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    iget-object v1, p1, Le/a/q2/x0/b;->c:Le/a/k3/j/b;

    .line 8
    invoke-virtual {v1, p2}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    .line 9
    iget-object v2, p1, Le/a/q2/x0/b;->e:Le/a/q2/x0/f;

    .line 10
    invoke-virtual {v2, p2}, Le/a/q2/x0/f;->a(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p2

    .line 11
    iget-object p1, p1, Le/a/q2/x0/b;->b:Le/a/o5/r;

    .line 12
    invoke-interface {p1, v0}, Le/a/o5/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    sget-object p1, Lcom/truecaller/analytics/call/CallContactSource;->PHONEBOOK:Lcom/truecaller/analytics/call/CallContactSource;

    goto :goto_1

    .line 14
    :cond_1
    sget-object p1, Lcom/truecaller/analytics/call/CallContactSource;->SERVER:Lcom/truecaller/analytics/call/CallContactSource;

    .line 15
    :goto_1
    iget-object v0, p2, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->q0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    sget-object p1, Lcom/truecaller/analytics/call/CallContactSource;->NO_HIT:Lcom/truecaller/analytics/call/CallContactSource;

    goto :goto_3

    .line 19
    :pswitch_0
    sget-object p1, Lcom/truecaller/analytics/call/CallContactSource;->USER_WHITELIST:Lcom/truecaller/analytics/call/CallContactSource;

    goto :goto_3

    .line 20
    :pswitch_1
    sget-object p1, Lcom/truecaller/analytics/call/CallContactSource;->USER_SPAMMER:Lcom/truecaller/analytics/call/CallContactSource;

    goto :goto_2

    .line 21
    :pswitch_2
    sget-object p1, Lcom/truecaller/analytics/call/CallContactSource;->TOP_SPAMMER:Lcom/truecaller/analytics/call/CallContactSource;

    :goto_2
    move v0, v3

    goto :goto_4

    :cond_2
    :goto_3
    move v0, v2

    .line 22
    :goto_4
    new-instance v4, Le/a/q2/w0/h/c;

    if-nez v0, :cond_3

    .line 23
    invoke-static {v1, p2}, Le/a/o5/t;->j(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    move v2, v3

    .line 24
    :cond_4
    invoke-direct {v4, p1, v2}, Le/a/q2/w0/h/c;-><init>(Lcom/truecaller/analytics/call/CallContactSource;Z)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/q2/x0/b$b;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/q2/x0/b$b;->e:Le/a/q2/x0/b;

    .line 3
    iget-object v0, v0, Le/a/q2/x0/b;->d:Le/a/b0/q/z;

    .line 4
    invoke-interface {v0, p1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Le/a/q2/x0/b$b;->e:Le/a/q2/x0/b;

    .line 6
    iget-object v0, v0, Le/a/q2/x0/b;->c:Le/a/k3/j/b;

    .line 7
    invoke-virtual {v0, p1}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/q2/x0/b$b;->e:Le/a/q2/x0/b;

    .line 9
    iget-object v1, v1, Le/a/q2/x0/b;->e:Le/a/q2/x0/f;

    .line 10
    invoke-virtual {v1, p1}, Le/a/q2/x0/f;->a(Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object p1

    .line 11
    iget-object v1, p0, Le/a/q2/x0/b$b;->e:Le/a/q2/x0/b;

    .line 12
    iget-object v1, v1, Le/a/q2/x0/b;->b:Le/a/o5/r;

    .line 13
    iget-object v2, p0, Le/a/q2/x0/b$b;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Le/a/o5/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    sget-object v1, Lcom/truecaller/analytics/call/CallContactSource;->PHONEBOOK:Lcom/truecaller/analytics/call/CallContactSource;

    goto :goto_1

    .line 15
    :cond_1
    sget-object v1, Lcom/truecaller/analytics/call/CallContactSource;->SERVER:Lcom/truecaller/analytics/call/CallContactSource;

    .line 16
    :goto_1
    iget-object v2, p1, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->q0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    sget-object v1, Lcom/truecaller/analytics/call/CallContactSource;->NO_HIT:Lcom/truecaller/analytics/call/CallContactSource;

    goto :goto_3

    .line 20
    :pswitch_0
    sget-object v1, Lcom/truecaller/analytics/call/CallContactSource;->USER_WHITELIST:Lcom/truecaller/analytics/call/CallContactSource;

    goto :goto_3

    .line 21
    :pswitch_1
    sget-object v1, Lcom/truecaller/analytics/call/CallContactSource;->USER_SPAMMER:Lcom/truecaller/analytics/call/CallContactSource;

    goto :goto_2

    .line 22
    :pswitch_2
    sget-object v1, Lcom/truecaller/analytics/call/CallContactSource;->TOP_SPAMMER:Lcom/truecaller/analytics/call/CallContactSource;

    :goto_2
    move v2, v4

    goto :goto_4

    :cond_2
    :goto_3
    move v2, v3

    .line 23
    :goto_4
    new-instance v5, Le/a/q2/w0/h/c;

    if-nez v2, :cond_3

    .line 24
    invoke-static {v0, p1}, Le/a/o5/t;->j(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v3, v4

    .line 25
    :cond_4
    invoke-direct {v5, v1, v3}, Le/a/q2/w0/h/c;-><init>(Lcom/truecaller/analytics/call/CallContactSource;Z)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
