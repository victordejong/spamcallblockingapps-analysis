.class public final Le/a/o/a/h/j;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/o/a/h/f;",
        ">;",
        "Le/a/o/a/h/e;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b0/e/f;

.field public final c:Le/a/p5/c0;

.field public final d:Le/a/o/b/o;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b0/e/f;Le/a/p5/c0;Le/a/o/b/o;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/e/f;",
            "Le/a/p5/c0;",
            "Le/a/o/b/o;",
            "Lo3/a<",
            "Le/a/o/b/d;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "regionUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/o/a/h/j;->b:Le/a/b0/e/f;

    iput-object p2, p0, Le/a/o/a/h/j;->c:Le/a/p5/c0;

    iput-object p3, p0, Le/a/o/a/h/j;->d:Le/a/o/b/o;

    iput-object p4, p0, Le/a/o/a/h/j;->e:Lo3/a;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/h/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/o/a/h/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/o/a/h/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/o/a/h/j;->b:Le/a/b0/e/f;

    invoke-interface {p1}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object p1

    .line 5
    invoke-static {p1}, Le/a/n/g0;->U(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Le/a/n/g0;->N(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "termsOfService"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "privacyPolicy"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/o/a/h/f;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 8
    iget-object v5, p0, Le/a/o/a/h/j;->c:Le/a/p5/c0;

    .line 9
    sget v6, Lcom/truecaller/contextcall/R$string;->context_call_community_guideline_description:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object p1, v7, v3

    const-string p1, "https://www.truecaller.com/community-guidelines/call-reason"

    aput-object p1, v7, v2

    .line 10
    invoke-interface {v5, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026Y_GUIDELINE\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, p1}, Le/a/o/a/h/f;->d(Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/h/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/o/a/h/f;->W4()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p0, Le/a/o/a/h/j;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/d;

    new-array v1, v2, [Ls1/k;

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v2, Ls1/k;

    const-string v5, "Source"

    invoke-direct {v2, v5, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    .line 16
    new-instance p1, Ls1/k;

    const-string v2, "Context"

    const-string v4, "CommunityGuidelineScreen"

    invoke-direct {p1, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p1, v1, v3

    .line 17
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "OnBoardingContextCallSetup"

    .line 18
    invoke-interface {v0, v1, p1}, Le/a/o/b/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/h/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Le/a/o/a/h/j;->d:Le/a/o/b/o;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "guidelineIsAgreed"

    invoke-static {v2, v5, v3, v4, v1}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v2}, Le/a/o/a/h/f;->ys(Z)V

    .line 2
    :cond_0
    iput-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public t6()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/a/h/j;->d:Le/a/o/b/o;

    const-string v1, "guidelineIsAgreed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/h/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/h/f;->t()V

    :cond_0
    return-void
.end method
