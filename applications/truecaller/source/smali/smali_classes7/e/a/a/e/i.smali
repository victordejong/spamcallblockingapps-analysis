.class public final Le/a/a/e/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/e/h;",
        ">;",
        "Le/a/a/e/g;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/a/i0;

.field public final f:Le/a/q2/a;

.field public final g:Le/a/u3/g;

.field public final h:Le/a/a/s0/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/a/i0;Le/a/q2/a;Le/a/u3/g;Le/a/a/s0/d;)V
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

    const-string v0, "messageSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSmsHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/e/i;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    iput-object p3, p0, Le/a/a/e/i;->f:Le/a/q2/a;

    iput-object p4, p0, Le/a/a/e/i;->g:Le/a/u3/g;

    iput-object p5, p0, Le/a/a/e/i;->h:Le/a/a/s0/d;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/a/e/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->Q()I

    move-result v0

    iget-object v1, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->V2()I

    move-result v1

    iget-object v2, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->V0()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Le/a/a/e/h;->Yw(III)V

    .line 5
    iget-object v0, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->u0()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/e/h;->Fp(Z)V

    .line 6
    invoke-interface {p1}, Le/a/a/e/h;->X1()V

    .line 7
    iget-object v0, p0, Le/a/a/e/i;->g:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/e/h;->Jc(Z)V

    return-void
.end method

.method public f2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->a4(Z)V

    return-void
.end method

.method public ib()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->Q()I

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->V2()I

    move-result v2

    .line 4
    iget-object v3, p0, Le/a/a/e/i;->e:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->V0()I

    move-result v3

    .line 5
    invoke-interface {v0, v1, v2, v3}, Le/a/a/e/h;->Yw(III)V

    :cond_0
    return-void
.end method

.method public r1()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/e/i$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/e/i$a;-><init>(Le/a/a/e/i;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
