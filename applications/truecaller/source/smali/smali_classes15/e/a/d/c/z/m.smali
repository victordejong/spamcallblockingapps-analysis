.class public final Le/a/d/c/z/m;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/z/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/c/z/o;",
        ">;",
        "Le/a/d/c/z/n;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public final e:Ls1/w/f;

.field public final f:Le/a/d/c0/q0;

.field public final g:Le/a/d/c0/y1/b;

.field public final h:Le/a/d/c0/j1;

.field public final i:Le/a/d/f;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/c0/q0;Le/a/d/c0/y1/b;Le/a/d/c0/j1;Le/a/d/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallDetailsRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAvailabilityUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSupport"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/c/z/m;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c/z/m;->f:Le/a/d/c0/q0;

    iput-object p3, p0, Le/a/d/c/z/m;->g:Le/a/d/c0/y1/b;

    iput-object p4, p0, Le/a/d/c/z/m;->h:Le/a/d/c0/j1;

    iput-object p5, p0, Le/a/d/c/z/m;->i:Le/a/d/f;

    return-void
.end method


# virtual methods
.method public final Ij(Le/a/d/b0/b$b;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/b0/b$b;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/c/z/p$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c/z/m$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c/z/m$a;

    iget v1, v0, Le/a/d/c/z/m$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c/z/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c/z/m$a;

    invoke-direct {v0, p0, p2}, Le/a/d/c/z/m$a;-><init>(Le/a/d/c/z/m;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c/z/m$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c/z/m$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c/z/m$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d/b0/b$b;

    iget-object v0, v0, Le/a/d/c/z/m$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/z/m;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/c/z/m;->g:Le/a/d/c0/y1/b;

    .line 5
    iget-object v2, p1, Le/a/d/b0/b$b;->c:Ljava/lang/String;

    .line 6
    iput-object p0, v0, Le/a/d/c/z/m$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c/z/m$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c/z/m$a;->e:I

    invoke-interface {p2, v2, v0}, Le/a/d/c0/y1/b;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 7
    iget-object v1, v0, Le/a/d/c/z/m;->h:Le/a/d/c0/j1;

    .line 8
    iget-object v2, p1, Le/a/d/b0/b$b;->c:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v2}, Le/a/d/c0/j1;->n(Ljava/lang/String;)Z

    move-result v1

    .line 10
    new-instance v2, Le/a/d/c/z/p$b;

    .line 11
    iget-object v3, v0, Le/a/d/c/z/m;->h:Le/a/d/c0/j1;

    .line 12
    iget-object v4, p1, Le/a/d/b0/b$b;->b:Ljava/lang/Long;

    .line 13
    iget-object v5, p1, Le/a/d/b0/b$b;->e:Ljava/lang/String;

    .line 14
    invoke-interface {v3, v4, v5}, Le/a/d/c0/j1;->t(Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 15
    iget-object v0, v0, Le/a/d/c/z/m;->h:Le/a/d/c0/j1;

    invoke-interface {v0}, Le/a/d/c0/j1;->l()Le/a/d/c0/y1/d;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 16
    sget-object p2, Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;->VOICE:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 17
    sget-object p2, Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;->REGULAR:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    goto :goto_2

    .line 18
    :cond_5
    sget-object p2, Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;->NON_IDENTIFIED:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    .line 19
    :goto_2
    invoke-direct {v2, p1, v3, v0, p2}, Le/a/d/c/z/p$b;-><init>(Le/a/d/b0/b;Landroid/net/Uri;Le/a/d/c0/y1/d;Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;)V

    return-object v2
.end method

.method public Jj(Le/a/d/b0/b$b;)V
    .locals 9

    const-string v0, "searchedPeer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c/z/m;->i:Le/a/d/f;

    .line 2
    iget-object p1, p1, Le/a/d/b0/b$b;->c:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/truecaller/voip/util/VoipAnalyticsContext;->CONTEXT_VOIP_GROUP_CALL_HISTORY:Lcom/truecaller/voip/util/VoipAnalyticsContext;

    invoke-virtual {v1}, Lcom/truecaller/voip/util/VoipAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v8, Lcom/truecaller/voip/VoipCallOptions;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/truecaller/voip/VoipCallOptions;-><init>(JJI)V

    invoke-interface {v0, p1, v1, v8}, Le/a/d/f;->k(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipCallOptions;)V

    return-void
.end method
