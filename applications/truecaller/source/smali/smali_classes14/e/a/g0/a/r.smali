.class public final Le/a/g0/a/r;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/g0/a/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/g0/a/n;",
        ">;",
        "Le/a/g0/a/m;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/g0/d;

.field public final g:Le/a/p5/u;

.field public final h:Le/a/g0/j/j;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/g0/d;Le/a/p5/u;Le/a/g0/j/j;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suspensionManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/g0/a/r;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/g0/a/r;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/g0/a/r;->f:Le/a/g0/d;

    iput-object p4, p0, Le/a/g0/a/r;->g:Le/a/p5/u;

    iput-object p5, p0, Le/a/g0/a/r;->h:Le/a/g0/j/j;

    return-void
.end method


# virtual methods
.method public final Ij()Le/a/g0/a/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/g0/a/n;->Ol()V

    .line 3
    invoke-interface {v0}, Le/a/g0/a/n;->ij()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final Jj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/g0/a/n;->Fs()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/g0/a/n;->t()V

    :cond_1
    return-void
.end method

.method public final Kj()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/g0/a/r;->g:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Le/a/g0/a/r$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/g0/a/r$a;-><init>(Le/a/g0/a/r;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/g0/a/n;->i0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Lj()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/g0/a/r;->f:Le/a/g0/d;

    invoke-interface {v0}, Le/a/g0/d;->k()Lcom/truecaller/suspension/UnsuspensionMethod;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/truecaller/suspension/UnsuspensionMethod$b;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/truecaller/suspension/UnsuspensionMethod$b;

    .line 3
    iget-boolean v1, v0, Lcom/truecaller/suspension/UnsuspensionMethod$b;->b:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Le/a/g0/a/n;->Ty()V

    .line 6
    invoke-interface {v0}, Le/a/g0/a/n;->Jn()V

    .line 7
    invoke-interface {v0}, Le/a/g0/a/n;->on()V

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/a/g0/a/r;->Ij()Le/a/g0/a/n;

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-wide v2, v0, Lcom/truecaller/suspension/UnsuspensionMethod$b;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    long-to-double v0, v2

    .line 10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 11
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/g0/a/n;

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1}, Le/a/g0/a/n;->xn()V

    .line 13
    invoke-interface {v1}, Le/a/g0/a/n;->Oq()V

    .line 14
    invoke-interface {v1, v0}, Le/a/g0/a/n;->qt(I)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Le/a/g0/a/r;->Ij()Le/a/g0/a/n;

    goto/16 :goto_0

    :cond_3
    if-nez v1, :cond_a

    .line 16
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_4

    .line 17
    invoke-interface {v0}, Le/a/g0/a/n;->je()V

    .line 18
    invoke-interface {v0}, Le/a/g0/a/n;->Oq()V

    .line 19
    invoke-interface {v0}, Le/a/g0/a/n;->JA()V

    .line 20
    :cond_4
    invoke-virtual {p0}, Le/a/g0/a/r;->Ij()Le/a/g0/a/n;

    goto/16 :goto_0

    .line 21
    :cond_5
    instance-of v1, v0, Lcom/truecaller/suspension/UnsuspensionMethod$Support;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/truecaller/suspension/UnsuspensionMethod$Support;

    .line 22
    iget-object v0, v0, Lcom/truecaller/suspension/UnsuspensionMethod$Support;->b:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;

    if-nez v0, :cond_6

    .line 23
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_a

    .line 24
    invoke-interface {v0}, Le/a/g0/a/n;->yp()V

    .line 25
    invoke-interface {v0}, Le/a/g0/a/n;->Jn()V

    .line 26
    invoke-interface {v0}, Le/a/g0/a/n;->kw()V

    .line 27
    invoke-interface {v0}, Le/a/g0/a/n;->Do()V

    .line 28
    invoke-interface {v0}, Le/a/g0/a/n;->ij()V

    goto :goto_0

    .line 29
    :cond_6
    sget-object v1, Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;->Recaptcha:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;

    if-ne v0, v1, :cond_7

    .line 30
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_a

    .line 31
    invoke-interface {v0}, Le/a/g0/a/n;->yp()V

    .line 32
    invoke-interface {v0}, Le/a/g0/a/n;->Oq()V

    .line 33
    invoke-interface {v0}, Le/a/g0/a/n;->Jq()V

    .line 34
    invoke-interface {v0}, Le/a/g0/a/n;->Do()V

    .line 35
    invoke-interface {v0}, Le/a/g0/a/n;->ij()V

    goto :goto_0

    .line 36
    :cond_7
    sget-object v1, Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;->Feedback:Lcom/truecaller/suspension/UnsuspensionMethod$Support$Error;

    if-ne v0, v1, :cond_a

    .line 37
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_a

    .line 38
    invoke-interface {v0}, Le/a/g0/a/n;->B6()V

    .line 39
    invoke-interface {v0}, Le/a/g0/a/n;->Fb()V

    .line 40
    invoke-interface {v0}, Le/a/g0/a/n;->ur()V

    .line 41
    invoke-interface {v0}, Le/a/g0/a/n;->o6()V

    .line 42
    invoke-interface {v0}, Le/a/g0/a/n;->Ol()V

    goto :goto_0

    .line 43
    :cond_8
    sget-object v1, Lcom/truecaller/suspension/UnsuspensionMethod$a;->a:Lcom/truecaller/suspension/UnsuspensionMethod$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g0/a/n;

    if-eqz v0, :cond_9

    .line 45
    invoke-interface {v0}, Le/a/g0/a/n;->xn()V

    .line 46
    invoke-interface {v0}, Le/a/g0/a/n;->W6()V

    .line 47
    invoke-interface {v0}, Le/a/g0/a/n;->cz()V

    .line 48
    :cond_9
    invoke-virtual {p0}, Le/a/g0/a/r;->Ij()Le/a/g0/a/n;

    :cond_a
    :goto_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/g0/a/n;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/g0/a/r;->f:Le/a/g0/d;

    invoke-interface {p1}, Le/a/g0/d;->c()V

    .line 5
    iget-object p1, p0, Le/a/g0/a/r;->f:Le/a/g0/d;

    invoke-interface {p1}, Le/a/g0/d;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Le/a/g0/a/r;->Jj()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Le/a/g0/a/r;->Lj()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/g0/a/r;->f:Le/a/g0/d;

    invoke-interface {v0}, Le/a/g0/d;->a()V

    return-void
.end method
