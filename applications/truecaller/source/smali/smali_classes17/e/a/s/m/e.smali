.class public final Le/a/s/m/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/s/m/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/s/m/d;",
        ">;",
        "Le/a/s/m/c;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/s/s/c;

.field public final f:Le/a/s/s/a;

.field public final g:Le/a/p5/j0;

.field public final h:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/s/s/c;Le/a/s/s/a;Le/a/p5/j0;Le/a/l/p2/v0;)V
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

    const-string v0, "callAssistantAccountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/s/m/e;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/s/m/e;->e:Le/a/s/s/c;

    iput-object p3, p0, Le/a/s/m/e;->f:Le/a/s/s/a;

    iput-object p4, p0, Le/a/s/m/e;->g:Le/a/p5/j0;

    iput-object p5, p0, Le/a/s/m/e;->h:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public G8()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/s/m/e;->e:Le/a/s/s/c;

    invoke-interface {v0}, Le/a/s/s/c;->A()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Le/a/s/m/e;->g:Le/a/p5/j0;

    const v3, 0x7e050002

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/s/m/e;->e:Le/a/s/s/c;

    invoke-interface {v0}, Le/a/s/s/c;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/s/m/d;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0, v1}, Le/a/s/m/d;->hk(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public Gi()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/m/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/m/d;->finish()V

    :cond_0
    return-void
.end method

.method public Oh()V
    .locals 6

    .line 1
    new-instance v3, Le/a/s/m/e$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/s/m/e$a;-><init>(Le/a/s/m/e;Ls1/w/d;)V

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
    check-cast p1, Le/a/s/m/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/s/m/e;->e:Le/a/s/s/c;

    invoke-interface {v0}, Le/a/s/s/c;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1, v0}, Le/a/s/m/d;->M8(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h7()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/s/m/e;->e:Le/a/s/s/c;

    invoke-interface {v0}, Le/a/s/s/c;->N()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/s/m/e;->g:Le/a/p5/j0;

    const v2, 0x7e050002

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/s/m/e;->e:Le/a/s/s/c;

    invoke-interface {v0}, Le/a/s/s/c;->N()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/s/m/d;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Le/a/s/m/d;->j3(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public q(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/m/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/s/m/d;->cg()V

    :cond_0
    return-void
.end method
