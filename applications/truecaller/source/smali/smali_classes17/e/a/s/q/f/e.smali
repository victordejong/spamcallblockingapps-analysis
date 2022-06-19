.class public final Le/a/s/q/f/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/s/q/f/c;
.implements Le/a/s/r/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/s/q/f/d;",
        ">;",
        "Le/a/s/q/f/c;",
        "Le/a/s/r/e;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public final e:Ls1/w/f;

.field public final f:Le/a/p5/j0;

.field public final g:Le/a/s/s/a;

.field public final h:Le/a/s/s/c;

.field public final i:Le/a/s/r/c;

.field public final j:Le/a/b0/q/e;

.field public final k:Le/a/y2/q/a;

.field public final l:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/j0;Le/a/s/s/a;Le/a/s/s/c;Le/a/s/r/c;Le/a/b0/q/e;Le/a/y2/q/a;Le/a/l/p2/v0;)V
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

    const-string v0, "toastUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAssistantSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceValidationHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRejecter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundWorkTrigger"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/s/q/f/e;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/s/q/f/e;->f:Le/a/p5/j0;

    iput-object p3, p0, Le/a/s/q/f/e;->g:Le/a/s/s/a;

    iput-object p4, p0, Le/a/s/q/f/e;->h:Le/a/s/s/c;

    iput-object p5, p0, Le/a/s/q/f/e;->i:Le/a/s/r/c;

    iput-object p6, p0, Le/a/s/q/f/e;->j:Le/a/b0/q/e;

    iput-object p7, p0, Le/a/s/q/f/e;->k:Le/a/y2/q/a;

    iput-object p8, p0, Le/a/s/q/f/e;->l:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public Cd()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/f/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/s/q/f/d;->Uk(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/f/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/s/q/f/d;->qx()V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Le/a/s/q/f/e$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/s/q/f/e$a;-><init>(Le/a/s/q/f/e;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public T6()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/q/f/e;->j:Le/a/b0/q/e;

    invoke-interface {v0}, Le/a/b0/q/e;->a()Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/f/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/q/f/d;->xa()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/s/q/f/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/s/q/f/e;->i:Le/a/s/r/c;

    invoke-interface {p1, p0}, Le/a/s/r/c;->l1(Le/a/s/r/e;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/q/f/e;->i:Le/a/s/r/c;

    invoke-interface {v0, p0}, Le/a/s/r/c;->k1(Le/a/s/r/e;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/f/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/q/f/d;->xa()V

    .line 3
    :cond_0
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public j1()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/s/q/f/e;->d:Lq3/a/p1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/s/q/f/e;->h:Le/a/s/s/c;

    invoke-interface {v0, v1}, Le/a/s/s/c;->l0(Z)V

    .line 3
    iget-object v0, p0, Le/a/s/q/f/e;->l:Le/a/l/p2/v0;

    invoke-interface {v0, v1}, Le/a/l/p2/v0;->f2(Z)V

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/f/d;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-interface {v0, v1}, Le/a/s/q/f/d;->en(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/f/d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/s/q/f/d;->Td()V

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/f/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/s/q/f/d;->xa()V

    .line 7
    :cond_3
    iget-object v1, p0, Le/a/s/q/f/e;->k:Le/a/y2/q/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "CallAssistantNumberSyncWorkAction"

    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->z1(Le/a/y2/q/a;Ljava/lang/String;Ls1/k;Ln3/m0/f;ILjava/lang/Object;)Ln3/m0/s;

    return-void
.end method

.method public r6()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/f/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/q/f/d;->T()V

    :cond_0
    return-void
.end method
