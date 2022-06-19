.class public final Le/a/s/n/a/j;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/s/n/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/s/n/a/h;",
        ">;",
        "Le/a/s/n/a/g;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:Le/a/s/k/c/a;

.field public final f:Ls1/w/f;

.field public final g:Le/a/s/s/c;

.field public final h:Le/a/s/s/e;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/s/s/c;Le/a/s/s/e;)V
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

    const-string v0, "callsManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/s/n/a/j;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/s/n/a/j;->g:Le/a/s/s/c;

    iput-object p3, p0, Le/a/s/n/a/j;->h:Le/a/s/s/e;

    return-void
.end method


# virtual methods
.method public I9(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/s/n/a/j;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/n/a/h;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/s/n/a/h;->oi()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/s/n/a/j;->g:Le/a/s/s/c;

    invoke-interface {p1}, Le/a/s/s/c;->g1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/n/a/h;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/s/n/a/h;->hf()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Ij()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/s/n/a/j;->d:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/a/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/s/n/a/j;->g:Le/a/s/s/c;

    invoke-interface {v1}, Le/a/s/s/c;->g1()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/s/n/a/h;->Zf(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/s/n/a/j;->d:Z

    return-void
.end method

.method public Kc()V
    .locals 6

    .line 1
    new-instance v3, Le/a/s/n/a/i;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/s/n/a/i;-><init>(Le/a/s/n/a/j;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/s/n/a/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/s/n/a/j;->Ij()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/n/a/j;->e:Le/a/s/k/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/s/n/a/j;->e:Le/a/s/k/c/a;

    .line 4
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public f()Le/a/s/k/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/n/a/j;->e:Le/a/s/k/c/a;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/n/a/h;->n0()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/s/n/a/j;->Ij()V

    .line 2
    iget-object v0, p0, Le/a/s/n/a/j;->h:Le/a/s/s/e;

    invoke-interface {v0}, Le/a/s/s/e;->a()V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/n/a/h;->Gt()V

    .line 4
    :cond_0
    new-instance v4, Le/a/s/n/a/i;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/s/n/a/i;-><init>(Le/a/s/n/a/j;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public v0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/n/a/h;->Ng()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
