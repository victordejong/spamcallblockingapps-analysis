.class public final Le/a/d/c/t;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/k;
.implements Le/a/d/c/a/p/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/c/l;",
        ">;",
        "Le/a/d/c/k;",
        "Le/a/d/c/a/p/a/d;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:Lq3/a/p1;

.field public f:Lq3/a/p1;

.field public g:Lq3/a/p1;

.field public h:Lq3/a/p1;

.field public i:Z

.field public j:Lq3/a/p1;

.field public final k:Ls1/w/f;

.field public final l:Le/a/b0/e/f;

.field public final m:Le/a/d/v/d;

.field public final n:Le/a/d/w/d;

.field public final o:Le/a/d/c0/g1;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/e/f;Le/a/d/v/d;Le/a/d/w/d;Le/a/d/c0/g1;)V
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

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invitationManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/c/t;->k:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c/t;->l:Le/a/b0/e/f;

    iput-object p3, p0, Le/a/d/c/t;->m:Le/a/d/v/d;

    iput-object p4, p0, Le/a/d/c/t;->n:Le/a/d/w/d;

    iput-object p5, p0, Le/a/d/c/t;->o:Le/a/d/c0/g1;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/d/c/t;->i:Z

    return-void
.end method

.method public static final Ij(Le/a/d/c/t;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/c/t;->Kj()Le/a/d/w/b;

    move-result-object v0

    instance-of v0, v0, Le/a/d/w/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/d/c/t;->n:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/a/d/c/t;->m:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/d/c/l;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Le/a/d/c/l;->Y2()V

    :cond_2
    return-void
.end method

.method public static final Jj(Le/a/d/c/t;Le/a/d/v/b;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/d/c/t;->f:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    new-instance v6, Le/a/d/c/w;

    invoke-direct {v6, p0, p1, v2}, Le/a/d/c/w;-><init>(Le/a/d/c/t;Le/a/d/v/b;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/d/c/t;->f:Lq3/a/p1;

    .line 3
    iget-object v0, p0, Le/a/d/c/t;->j:Lq3/a/p1;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    new-instance v6, Le/a/d/c/x;

    invoke-direct {v6, p0, p1, v2}, Le/a/d/c/x;-><init>(Le/a/d/c/t;Le/a/d/v/b;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/t;->j:Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public Cc(Le/a/d/b0/a;)V
    .locals 2

    const-string v0, "user"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_0

    invoke-static {p1}, Le/a/p5/s0/g;->H0(Le/a/d/b0/a;)Le/a/d/c/a/o;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/d/c/l;->D(Le/a/d/c/a/o;)V

    .line 2
    :cond_0
    iget-object v0, p1, Le/a/d/b0/a;->f:Lcom/truecaller/voip/VoipUserBadge;

    .line 3
    iget-boolean v1, v0, Lcom/truecaller/voip/VoipUserBadge;->f:Z

    if-nez v1, :cond_1

    .line 4
    iget-boolean v0, v0, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 5
    iget-boolean v0, p1, Le/a/d/b0/a;->i:Z

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p1, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 8
    invoke-interface {v0, p1}, Le/a/d/c/l;->V2(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Le/a/d/c/t;->Kj()Le/a/d/w/b;

    move-result-object p1

    instance-of v0, p1, Le/a/d/w/a;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    check-cast p1, Le/a/d/w/a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/d/w/a;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Le/a/d/c/l;->W2(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final Kj()Le/a/d/w/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c/t;->n:Le/a/d/w/d;

    invoke-interface {v0}, Le/a/d/w/d;->e()Le/a/d/w/b;

    move-result-object v0

    return-object v0
.end method

.method public Lj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c/t;->m:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->a()Le/a/d/c0/z1/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/d/c0/z1/d;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_1

    sget v1, Lcom/truecaller/voip/R$string;->voip_group_launcher_picker_limit_reached:I

    invoke-interface {v0, v1}, Le/a/d/c/l;->d(I)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/l;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Le/a/d/c/l;->R0()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_3

    .line 7
    new-instance v1, Le/a/d/c/t$a;

    invoke-direct {v1, p0}, Le/a/d/c/t$a;-><init>(Le/a/d/c/t;)V

    .line 8
    invoke-interface {v0, v1}, Le/a/d/c/l;->d3(Le/a/d/c/f;)V

    :cond_3
    return-void

    .line 9
    :cond_4
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/l;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Le/a/d/c/l;->G8()V

    .line 10
    :cond_5
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/l;

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Le/a/d/c/l;->G3(Ljava/util/Set;)V

    :cond_6
    return-void
.end method

.method public final Mj(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/d/c/t;->e:Lq3/a/p1;

    if-eqz p1, :cond_0

    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/d/c/t;->f:Lq3/a/p1;

    if-eqz p1, :cond_1

    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/d/c/t;->g:Lq3/a/p1;

    if-eqz p1, :cond_2

    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/d/c/t;->h:Lq3/a/p1;

    if-eqz p1, :cond_3

    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public Ui()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_0

    sget-object v1, Le/a/d/c/a/d;->a:Le/a/d/c/a/d;

    invoke-interface {v0, v1}, Le/a/d/c/l;->D(Le/a/d/c/a/o;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-interface {v0, v1}, Le/a/d/c/l;->V2(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/d/c/l;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/d/c/t;->l:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Le/a/d/c/a/n$c;->a:Le/a/d/c/a/n$c;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/d/c/t;->Kj()Le/a/d/w/b;

    move-result-object v0

    instance-of v0, v0, Le/a/d/w/a;

    if-eqz v0, :cond_3

    new-instance v0, Le/a/d/c/a/n$a;

    invoke-virtual {p0}, Le/a/d/c/t;->Kj()Le/a/d/w/b;

    move-result-object v2

    instance-of v3, v2, Le/a/d/w/a;

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    check-cast v2, Le/a/d/w/a;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Le/a/d/w/a;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-direct {v0, v2}, Le/a/d/c/a/n$a;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_3
    sget-object v0, Le/a/d/c/a/n$b;->a:Le/a/d/c/a/n$b;

    .line 7
    :goto_1
    invoke-interface {p1, v0}, Le/a/d/c/l;->f1(Le/a/d/c/a/n;)V

    .line 8
    sget-object v0, Le/a/d/c/a/d;->a:Le/a/d/c/a/d;

    invoke-interface {p1, v0}, Le/a/d/c/l;->D(Le/a/d/c/a/o;)V

    .line 9
    invoke-interface {p1, p0}, Le/a/d/c/l;->l3(Le/a/d/c/a/p/a/d;)V

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Le/a/d/c/l;->A8(Z)V

    .line 11
    new-instance v5, Le/a/d/c/n;

    invoke-direct {v5, p0, v1}, Le/a/d/c/n;-><init>(Le/a/d/c/t;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/c/l;->V7()V

    .line 2
    :cond_0
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method
