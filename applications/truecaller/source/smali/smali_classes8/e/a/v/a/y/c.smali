.class public final Le/a/v/a/y/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/y/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/v/a/y/b;",
        ">;",
        "Le/a/v/a/y/a;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:Lcom/truecaller/data/entity/Contact;

.field public final f:Ls1/g;

.field public g:Z

.field public final h:Le/a/v/a/y/c$a;

.field public final i:Ls1/w/f;

.field public final j:Le/a/v/a/y/h;

.field public final k:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/v/a/y/h;Le/a/u3/g;)V
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

    const-string v0, "detailsAdsLoader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/v/a/y/c;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    iput-object p3, p0, Le/a/v/a/y/c;->k:Le/a/u3/g;

    .line 2
    new-instance p1, Le/a/v/a/y/c$b;

    invoke-direct {p1, p0}, Le/a/v/a/y/c$b;-><init>(Le/a/v/a/y/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v/a/y/c;->f:Ls1/g;

    .line 3
    new-instance p1, Le/a/v/a/y/c$a;

    invoke-direct {p1, p0}, Le/a/v/a/y/c$a;-><init>(Le/a/v/a/y/c;)V

    iput-object p1, p0, Le/a/v/a/y/c;->h:Le/a/v/a/y/c$a;

    return-void
.end method


# virtual methods
.method public final Ij(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    check-cast v0, Le/a/v/a/y/i;

    .line 2
    iget-object v0, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-interface {v0}, Le/a/v/a/y/j;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0, p1}, Le/a/v/a/y/c;->Kj(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/y/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/v/a/y/b;->S1()V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/v/a/y/c;->e:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_3

    .line 6
    iget-object v0, p0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    check-cast v0, Le/a/v/a/y/i;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "contact"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "priority"

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "verified_business"

    .line 10
    :goto_0
    sget-object v2, Le/a/l5/a/m;->f:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/m$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/a/l5/a/m$b;-><init>(Le/a/l5/a/m$a;)V

    .line 11
    invoke-virtual {v2, p1}, Le/a/l5/a/m$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/m$b;

    const-string p1, "DetailsScreen"

    .line 12
    invoke-virtual {v2, p1}, Le/a/l5/a/m$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/m$b;

    .line 13
    invoke-virtual {v2, v1}, Le/a/l5/a/m$b;->b(Z)Le/a/l5/a/m$b;

    .line 14
    invoke-virtual {v2}, Le/a/l5/a/m$b;->a()Le/a/l5/a/m;

    move-result-object p1

    .line 15
    iget-object v0, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-interface {v0}, Le/a/v/a/y/j;->e()Le/a/i/f0/a;

    move-result-object v0

    const-string v1, "event"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/i/f0/a;->d(Le/a/l5/a/m;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    xor-int/lit8 v2, p1, 0x1

    check-cast v0, Le/a/v/a/y/i;

    invoke-virtual {v0, v2}, Le/a/v/a/y/i;->e(Z)V

    .line 17
    iput-boolean p1, p0, Le/a/v/a/y/c;->d:Z

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    check-cast p1, Le/a/v/a/y/i;

    .line 19
    iget-object v0, p1, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-interface {v0}, Le/a/v/a/y/j;->f()Le/a/i/c/d/a;

    move-result-object v0

    .line 20
    iget-object v2, p1, Le/a/v/a/y/i;->e:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/c/d/l;

    .line 21
    invoke-interface {v0, v2, p1, v1}, Le/a/i/c/d/a;->d(Le/a/i/c/d/l;Le/a/i/c/d/i;Z)V

    .line 22
    invoke-virtual {p0}, Le/a/v/a/y/c;->Jj()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final Jj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    .line 2
    check-cast v0, Le/a/v/a/y/i;

    .line 3
    iget-object v1, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-virtual {v0}, Le/a/v/a/y/i;->c()Le/a/i/s;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/v/a/y/j;->h(Le/a/i/s;)Le/a/i/f0/m/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/y/b;

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-interface {v3}, Le/a/v/a/y/j;->a()Le/a/i/g;

    move-result-object v3

    .line 6
    invoke-interface {v2, v1, v3}, Le/a/v/a/y/b;->i6(Le/a/i/f0/m/d;Le/a/i/g;)V

    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Le/a/v/a/y/i;->e(Z)V

    :cond_1
    return-void
.end method

.method public final Kj(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/y/c;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    iget-object v0, p0, Le/a/v/a/y/c;->e:Lcom/truecaller/data/entity/Contact;

    check-cast p1, Le/a/v/a/y/i;

    invoke-virtual {p1, v0}, Le/a/v/a/y/i;->f(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/v/a/y/c;->j:Le/a/v/a/y/h;

    check-cast v0, Le/a/v/a/y/i;

    .line 2
    iget-object v1, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-virtual {v0}, Le/a/v/a/y/i;->c()Le/a/i/s;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Le/a/v/a/y/j;->j(Le/a/i/s;Le/a/i/m;)V

    .line 3
    iget-object v1, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-interface {v1}, Le/a/v/a/y/j;->f()Le/a/i/c/d/a;

    move-result-object v1

    invoke-interface {v1}, Le/a/i/c/d/a;->cancel()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Le/a/v/a/y/i;->a:Le/a/i/n;

    .line 5
    iget-object v0, v0, Le/a/v/a/y/i;->j:Le/a/i/f0/j/a;

    invoke-interface {v0}, Le/a/i/f0/j/a;->reset()V

    .line 6
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method
