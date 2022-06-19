.class public final Le/a/d/c/a0/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/a0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/c/a0/h;",
        ">;",
        "Le/a/d/c/a0/g;"
    }
.end annotation


# instance fields
.field public d:Z

.field public final e:Le/a/d/w/d;

.field public final f:Le/a/d/v/d;

.field public final g:Le/a/d/c0/j1;

.field public final h:Le/a/d/c0/y0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/w/d;Le/a/d/v/d;Le/a/d/c0/j1;Le/a/d/c0/y0;)V
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

    const-string v0, "invitationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSupport"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipIdProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/d/c/a0/i;->e:Le/a/d/w/d;

    iput-object p3, p0, Le/a/d/c/a0/i;->f:Le/a/d/v/d;

    iput-object p4, p0, Le/a/d/c/a0/i;->g:Le/a/d/c0/j1;

    iput-object p5, p0, Le/a/d/c/a0/i;->h:Le/a/d/c0/y0;

    return-void
.end method


# virtual methods
.method public final Ij()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/c/a0/i$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/c/a0/i$a;-><init>(Le/a/d/c/a0/i;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final Jj()Le/a/d/w/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c/a0/i;->e:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->e()Le/a/d/w/b;

    move-result-object v0

    return-object v0
.end method

.method public Kj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a0/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/c/a0/h;->Z2()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/d/c/a0/i;->Ij()Lq3/a/p1;

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a0/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/c/a0/h;->n2()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Le/a/d/c/a0/i;->d:Z

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a0/h;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/d/c/a0/h;->y1()V

    :cond_2
    :goto_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/d/c/a0/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/d/c/a0/j;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/d/c/a0/j;-><init>(Le/a/d/c/a0/i;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 5
    invoke-virtual {p0}, Le/a/d/c/a0/i;->Jj()Le/a/d/w/b;

    move-result-object v1

    instance-of v2, v1, Le/a/d/w/a;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Le/a/d/w/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/w/a;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1, v0}, Le/a/d/c/a0/h;->Av(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
