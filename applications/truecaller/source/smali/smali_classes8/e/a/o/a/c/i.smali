.class public final Le/a/o/a/c/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/o/a/c/l;",
        ">;",
        "Le/a/o/a/c/k;"
    }
.end annotation


# instance fields
.field public d:Le/a/o/a/c/m;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/o/p/e/e;

.field public final g:Le/a/o/b/f;

.field public final h:Le/a/o/b/k;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/o/p/e/e;Le/a/o/b/f;Le/a/o/b/k;Lo3/a;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/c0;",
            "Le/a/o/p/e/e;",
            "Le/a/o/b/f;",
            "Le/a/o/b/k;",
            "Lo3/a<",
            "Le/a/o/b/d;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callReasonRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallPromoManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p6}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/c/i;->e:Le/a/p5/c0;

    iput-object p2, p0, Le/a/o/a/c/i;->f:Le/a/o/p/e/e;

    iput-object p3, p0, Le/a/o/a/c/i;->g:Le/a/o/b/f;

    iput-object p4, p0, Le/a/o/a/c/i;->h:Le/a/o/b/k;

    iput-object p5, p0, Le/a/o/a/c/i;->i:Lo3/a;

    iput-object p6, p0, Le/a/o/a/c/i;->j:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 6

    .line 1
    new-instance v3, Le/a/o/a/c/i$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/o/a/c/i$a;-><init>(Le/a/o/a/c/i;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Qb()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/o/a/c/i;->Ij()V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Le/a/o/a/c/l;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/o/a/c/i;->h:Le/a/o/b/k;

    invoke-interface {p1}, Le/a/o/b/k;->a()V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/c/l;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/o/a/c/l;->Q3()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Le/a/o/a/c/i;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/k;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v3, Ls1/k;

    const-string v4, "Source"

    invoke-direct {v3, v4, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ls1/k;

    const-string v3, "Context"

    const-string v4, "ManageReasonScreen"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, p1

    .line 9
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "OnBoardingContextCallSetup"

    .line 10
    invoke-interface {v0, v1, p1}, Le/a/o/b/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c1(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/c/l;

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/a/o/a/c/i;->d:Le/a/o/a/c/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/o/a/c/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-interface {p1, v0}, Le/a/o/a/c/l;->gq(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g2(Le/a/o/a/c/g;)V
    .locals 2

    const-string v0, "manageCallReasonItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/o/a/c/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Le/a/o/a/c/c;

    if-eqz p1, :cond_2

    const-string v0, "$this$mapToCallReason"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/o/a/c/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/truecaller/contextcall/db/reason/CallReason;

    .line 5
    iget p1, p1, Le/a/o/a/c/c;->a:I

    .line 6
    invoke-direct {v1, p1, v0}, Lcom/truecaller/contextcall/db/reason/CallReason;-><init>(ILjava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/c/l;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Le/a/o/a/c/l;->Uw(Lcom/truecaller/contextcall/db/reason/CallReason;)V

    :cond_2
    return-void
.end method

.method public l6()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/o/a/c/i;->Ij()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/o/a/c/i;->Ij()V

    return-void
.end method

.method public ue(Le/a/o/a/c/g;)V
    .locals 9

    const-string v0, "manageCallReasonItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/o/a/c/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/a/o/a/c/c;

    const-string v0, "$this$mapToCallReason"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Le/a/o/a/c/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    new-instance v2, Lcom/truecaller/contextcall/db/reason/CallReason;

    .line 6
    iget p1, p1, Le/a/o/a/c/c;->a:I

    .line 7
    invoke-direct {v2, p1, v0}, Lcom/truecaller/contextcall/db/reason/CallReason;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    new-instance v6, Le/a/o/a/c/i$b;

    invoke-direct {v6, p0, v2, v1}, Le/a/o/a/c/i$b;-><init>(Le/a/o/a/c/i;Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-void
.end method

.method public z3(Le/a/o/a/c/g;)V
    .locals 1

    const-string v0, "manageCallReasonItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/o/a/c/m;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Le/a/o/a/c/m;

    iput-object p1, p0, Le/a/o/a/c/i;->d:Le/a/o/a/c/m;

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/c/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/c/l;->Hr()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/c/l;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Le/a/o/a/c/m;->b:Ljava/lang/String;

    .line 6
    invoke-interface {v0, p1}, Le/a/o/a/c/l;->gq(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
