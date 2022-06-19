.class public final Le/a/o/a/c/n/f;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/c/n/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/o/a/c/n/e;",
        ">;",
        "Le/a/o/a/c/n/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/o/b/k;

.field public final c:Le/a/e4/p;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/o/b/k;Le/a/e4/p;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o/b/k;",
            "Le/a/e4/p;",
            "Lo3/a<",
            "Le/a/o/b/d;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextCallPromoManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/o/a/c/n/f;->b:Le/a/o/b/k;

    iput-object p2, p0, Le/a/o/a/c/n/f;->c:Le/a/e4/p;

    iput-object p3, p0, Le/a/o/a/c/n/f;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/c/n/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/c/n/e;->t()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/o/a/c/n/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/o/a/c/n/f;->b:Le/a/o/b/k;

    invoke-interface {v0}, Le/a/o/b/k;->d()V

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/c/n/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/c/n/e;->W4()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Le/a/o/a/c/n/f;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o/b/d;

    const/4 v2, 0x2

    new-array v2, v2, [Ls1/k;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v4, Ls1/k;

    const-string v5, "Source"

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v0, 0x1

    .line 9
    new-instance v3, Ls1/k;

    const-string v4, "Context"

    const-string v5, "OnBoardingScreen"

    invoke-direct {v3, v4, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    .line 10
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "OnBoardingContextCallSetup"

    .line 11
    invoke-interface {v1, v2, v0}, Le/a/o/b/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    :cond_0
    iget-object v0, p0, Le/a/o/a/c/n/f;->c:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Le/a/o/a/c/n/e;->oa()V

    :cond_1
    return-void
.end method
