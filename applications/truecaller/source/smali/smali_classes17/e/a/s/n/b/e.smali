.class public final Le/a/s/n/b/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/s/n/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/s/n/b/c;",
        ">;",
        "Le/a/s/n/b/b;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:Lq3/a/p1;

.field public final f:Ls1/w/f;

.field public final g:Le/a/s/s/c;

.field public final h:Le/a/s/s/a;

.field public final i:Le/a/p5/j0;

.field public final j:Le/a/h0/m;

.field public final k:Ln3/m0/y;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/s/s/c;Le/a/s/s/a;Le/a/p5/j0;Le/a/h0/m;Ln3/m0/y;)V
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

    const-string v0, "callAssistantSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/s/n/b/e;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/s/n/b/e;->g:Le/a/s/s/c;

    iput-object p3, p0, Le/a/s/n/b/e;->h:Le/a/s/s/a;

    iput-object p4, p0, Le/a/s/n/b/e;->i:Le/a/p5/j0;

    iput-object p5, p0, Le/a/s/n/b/e;->j:Le/a/h0/m;

    iput-object p6, p0, Le/a/s/n/b/e;->k:Ln3/m0/y;

    return-void
.end method


# virtual methods
.method public Eb(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Le/a/s/n/b/e;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/s/n/b/e;->e:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lq3/a/p1;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/s/n/b/e;->e:Lq3/a/p1;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "updatePreferencesJob"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    new-instance v5, Le/a/s/n/b/d;

    invoke-direct {v5, p0, p1, v1}, Le/a/s/n/b/d;-><init>(Le/a/s/n/b/e;ZLs1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/s/n/b/e;->e:Lq3/a/p1;

    return-void
.end method

.method public W2(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/s/n/b/e;->j:Le/a/h0/m;

    invoke-interface {v0, p1}, Le/a/h0/m;->k(Z)V

    .line 2
    iget-object p1, p0, Le/a/s/n/b/e;->j:Le/a/h0/m;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/h0/m;->c(Z)V

    .line 3
    iget-object p1, p0, Le/a/s/n/b/e;->k:Ln3/m0/y;

    const-string v0, "workManager"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Ln3/m0/h;->a:Ln3/m0/h;

    .line 6
    new-instance v1, Ln3/m0/r$a;

    const-class v2, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;

    invoke-direct {v1, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 7
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    .line 8
    iput-object v3, v2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 9
    new-instance v3, Ln3/m0/d;

    invoke-direct {v3, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 10
    iget-object v2, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 11
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    check-cast v1, Ln3/m0/r;

    const-string v2, "FilterSettingsUploadWorker"

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/s/n/b/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le/a/s/n/b/e;->d:Z

    .line 5
    iget-object v0, p0, Le/a/s/n/b/e;->g:Le/a/s/s/c;

    invoke-interface {v0}, Le/a/s/s/c;->O0()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/s/n/b/c;->ju(Z)V

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/n/b/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/s/n/b/e;->j:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->u()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/s/n/b/c;->Ry(Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/n/b/c;

    if-eqz p1, :cond_1

    iget-object v0, p0, Le/a/s/n/b/e;->j:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->b()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/s/n/b/c;->D9(Z)V

    :cond_1
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Le/a/s/n/b/e;->d:Z

    return-void
.end method

.method public cg()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/s/n/b/e;->i:Le/a/p5/j0;

    const v1, 0x7e05001e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    return-void
.end method

.method public j9(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/s/n/b/e;->j:Le/a/h0/m;

    invoke-interface {v0, p1}, Le/a/h0/m;->m(Z)V

    .line 2
    iget-object p1, p0, Le/a/s/n/b/e;->j:Le/a/h0/m;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/h0/m;->c(Z)V

    .line 3
    iget-object p1, p0, Le/a/s/n/b/e;->k:Ln3/m0/y;

    const-string v0, "workManager"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Ln3/m0/h;->a:Ln3/m0/h;

    .line 6
    new-instance v1, Ln3/m0/r$a;

    const-class v2, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;

    invoke-direct {v1, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 7
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    .line 8
    iput-object v3, v2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 9
    new-instance v3, Ln3/m0/d;

    invoke-direct {v3, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 10
    iget-object v2, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 11
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    check-cast v1, Ln3/m0/r;

    const-string v2, "FilterSettingsUploadWorker"

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public k7()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/b/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/n/b/c;->Vx()V

    :cond_0
    return-void
.end method
