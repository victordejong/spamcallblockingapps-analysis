.class public final Le/a/d/b/b/a/l;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/b/b/a/j;
.implements Le/a/d/b/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/b/b/a/k;",
        ">;",
        "Le/a/d/b/b/a/j;",
        "Le/a/d/b/b/g;"
    }
.end annotation


# instance fields
.field public d:Le/a/d/b/b/f;

.field public e:Z

.field public f:Z

.field public final g:Le/a/b0/q/v;

.field public final h:Le/a/d/c0/j1;

.field public final i:Le/a/b0/e/f;

.field public final j:Le/a/d/c0/f0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/c0/j1;Le/a/b0/e/f;Le/a/d/c0/f0;)V
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

    const-string v0, "support"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAnalyticsUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/d/b/b/a/l;->h:Le/a/d/c0/j1;

    iput-object p3, p0, Le/a/d/b/b/a/l;->i:Le/a/b0/e/f;

    iput-object p4, p0, Le/a/d/b/b/a/l;->j:Le/a/d/c0/f0;

    .line 2
    new-instance p1, Le/a/b0/q/v;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;I)V

    iput-object p1, p0, Le/a/d/b/b/a/l;->g:Le/a/b0/q/v;

    return-void
.end method


# virtual methods
.method public final Ij()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/b/b/a/l$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/b/b/a/l$a;-><init>(Le/a/d/b/b/a/l;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final Jj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/b/a/k;->Z2()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/d/b/b/a/l;->Ij()Lq3/a/p1;

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/b/b/a/k;->n2()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Le/a/d/b/b/a/l;->e:Z

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/d/b/b/a/k;->y1()V

    :cond_2
    :goto_1
    return-void
.end method

.method public Ne(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Le/a/d/b/b/a/k;->jr(IIZ)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/d/b/b/a/k;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    sget-boolean v0, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->l:Z

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/d/b/b/a/k;->t()V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/d/b/b/a/l;->i:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Le/a/d/c/a/n$c;->a:Le/a/d/c/a/n$c;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Le/a/d/c/a/n$b;->a:Le/a/d/c/a/n$b;

    .line 9
    :goto_0
    invoke-interface {p1, v0}, Le/a/d/b/b/a/k;->f1(Le/a/d/c/a/n;)V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/b/a/k;->M0()V

    .line 2
    :cond_0
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public nc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/d/b/b/a/k;->as(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/b/a/k;->q()V

    :cond_0
    return-void
.end method
