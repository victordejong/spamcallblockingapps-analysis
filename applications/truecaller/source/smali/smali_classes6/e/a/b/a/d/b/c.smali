.class public final Le/a/b/a/d/b/c;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/d/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/b/a/d/b/b;",
        ">;",
        "Le/a/b/a/d/b/a;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Le/a/p5/c0;

.field public final d:Le/a/b/a/e/b;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/b/a/e/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessAnalyticsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/b/a/d/b/c;->c:Le/a/p5/c0;

    iput-object p2, p0, Le/a/b/a/d/b/c;->d:Le/a/b/a/e/b;

    return-void
.end method


# virtual methods
.method public G0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/a/d/b/b;->s()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/b/a/d/b/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/b/a/d/b/b;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/b/a/d/b/c;->b:Ljava/lang/String;

    const-string v1, "verified_business"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget v0, Lcom/truecaller/bizmon/R$attr;->biz_verifiedBusiness_illustration:I

    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/truecaller/bizmon/R$attr;->biz_priorityCall_illustration:I

    .line 8
    :goto_0
    iget-object v2, p0, Le/a/b/a/d/b/c;->c:Le/a/p5/c0;

    .line 9
    iget-object v3, p0, Le/a/b/a/d/b/c;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    sget v3, Lcom/truecaller/bizmon/R$string;->biz_verified_business_awareness_title:I

    goto :goto_1

    .line 11
    :cond_1
    sget v3, Lcom/truecaller/bizmon/R$string;->biz_priority_call_awareness_title:I

    :goto_1
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 12
    invoke-interface {v2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026e\n            }\n        )"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Le/a/b/a/d/b/c;->c:Le/a/p5/c0;

    .line 14
    iget-object v5, p0, Le/a/b/a/d/b/c;->b:Ljava/lang/String;

    invoke-static {v5, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    sget v1, Lcom/truecaller/bizmon/R$string;->biz_verified_business_awareness_text:I

    goto :goto_2

    .line 16
    :cond_2
    sget v1, Lcom/truecaller/bizmon/R$string;->biz_priority_call_awareness_text:I

    :goto_2
    new-array v4, v4, [Ljava/lang/Object;

    .line 17
    invoke-interface {v3, v1, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resourceProvider.getStri\u2026t\n            }\n        )"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1, v0}, Le/a/b/a/d/b/b;->K9(I)V

    .line 19
    invoke-interface {p1, v2}, Le/a/b/a/d/b/b;->setTitle(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1, v1}, Le/a/b/a/d/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a7()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/d/b/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "verified_business"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "LearnMoreClicked"

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Le/a/b/a/e/a$m;

    invoke-direct {v1, v2}, Le/a/b/a/e/a$m;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Le/a/b/a/e/a$l;

    invoke-direct {v1, v2}, Le/a/b/a/e/a$l;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v2, p0, Le/a/b/a/d/b/c;->d:Le/a/b/a/e/b;

    invoke-interface {v2, v1}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    .line 6
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/a/d/b/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Le/a/b/a/d/b/b;->vw(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
