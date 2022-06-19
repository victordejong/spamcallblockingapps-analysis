.class public final Le/a/b/a/c/a/e0/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/a/c/a/p;",
        ">;",
        "Le/a/b/a/c/a/o;"
    }
.end annotation


# instance fields
.field public final d:Le/a/b0/e/f;

.field public final e:Le/a/b/a/e/b;

.field public final f:Le/a/b/a/f/b;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;

.field public final i:Le/a/u3/g;

.field public final j:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/b0/e/f;Le/a/b/a/e/b;Le/a/b/a/f/b;Ls1/w/f;Ls1/w/f;Le/a/u3/g;Le/a/b0/o/a;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p6    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "regionUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessAnalyticsManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessProfileV2Repository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p5}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/a/c/a/e0/i;->d:Le/a/b0/e/f;

    iput-object p2, p0, Le/a/b/a/c/a/e0/i;->e:Le/a/b/a/e/b;

    iput-object p3, p0, Le/a/b/a/c/a/e0/i;->f:Le/a/b/a/f/b;

    iput-object p4, p0, Le/a/b/a/c/a/e0/i;->g:Ls1/w/f;

    iput-object p5, p0, Le/a/b/a/c/a/e0/i;->h:Ls1/w/f;

    iput-object p6, p0, Le/a/b/a/c/a/e0/i;->i:Le/a/u3/g;

    iput-object p7, p0, Le/a/b/a/c/a/e0/i;->j:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/b/a/c/a/p;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/b/a/c/a/e0/i;->e:Le/a/b/a/e/b;

    sget-object v0, Le/a/b/a/e/a$j;->a:Le/a/b/a/e/a$j;

    invoke-interface {p1, v0}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    .line 5
    iget-object p1, p0, Le/a/b/a/c/a/e0/i;->j:Le/a/b0/o/a;

    const-string v0, "bizV2GetProfileSuccess"

    invoke-interface {p1, v0}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    new-instance v3, Le/a/b/a/c/a/e0/h;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/b/a/c/a/e0/h;-><init>(Le/a/b/a/c/a/e0/i;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/a/c/a/p;->f3()V

    :cond_0
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/a/c/a/p;->e1()V

    :cond_0
    return-void
.end method

.method public wa()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/e0/i;->d:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/a/c/a/p;

    if-eqz v1, :cond_0

    invoke-static {v0}, Le/a/n/g0;->N(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Le/a/n/g0;->U(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Le/a/b/a/c/a/p;->s5(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public x4(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/a/c/a/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/b/a/c/a/p;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
