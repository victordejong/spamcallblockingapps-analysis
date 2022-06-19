.class public final Le/a/v/a/y/i;
.super Le/a/i/n;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/y/h;


# instance fields
.field public a:Le/a/i/n;

.field public final b:Ls1/g;

.field public c:Z

.field public d:Le/a/i/c/a/c;

.field public final e:Ls1/g;

.field public f:Z

.field public final g:Le/a/v/a/y/j;

.field public final h:Le/a/u3/g;

.field public final i:Le/a/b0/e/r/a;

.field public final j:Le/a/i/f0/j/a;


# direct methods
.method public constructor <init>(Le/a/v/a/y/j;Le/a/u3/g;Le/a/b0/e/r/a;Le/a/i/f0/j/a;)V
    .locals 1
    .param p2    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adsProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsAdRequestIdGenerator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/i/n;-><init>()V

    iput-object p1, p0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    iput-object p2, p0, Le/a/v/a/y/i;->h:Le/a/u3/g;

    iput-object p3, p0, Le/a/v/a/y/i;->i:Le/a/b0/e/r/a;

    iput-object p4, p0, Le/a/v/a/y/i;->j:Le/a/i/f0/j/a;

    .line 2
    new-instance p1, Le/a/v/a/y/i$b;

    invoke-direct {p1, p0}, Le/a/v/a/y/i$b;-><init>(Le/a/v/a/y/i;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v/a/y/i;->b:Ls1/g;

    .line 3
    new-instance p1, Le/a/v/a/y/i$a;

    invoke-direct {p1, p0}, Le/a/v/a/y/i$a;-><init>(Le/a/v/a/y/i;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v/a/y/i;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/c/a/c;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/y/i;->d:Le/a/i/c/a/c;

    .line 2
    invoke-virtual {p0}, Le/a/v/a/y/i;->d()V

    return-void
.end method

.method public b(Le/a/i/c/b/a;)V
    .locals 1

    const-string v0, "errorAdRouter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/v/a/y/i;->d:Le/a/i/c/a/c;

    .line 2
    iget-object v0, p0, Le/a/v/a/y/i;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    .line 3
    iget p1, p1, Le/a/i/c/b/a;->a:I

    .line 4
    invoke-virtual {v0, p1}, Le/a/i/n;->ed(I)V

    :cond_0
    return-void
.end method

.method public final c()Le/a/i/s;
    .locals 1

    iget-object v0, p0, Le/a/v/a/y/i;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/s;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v/a/y/i;->h:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->f3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xd5

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, p0, Le/a/v/a/y/i;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Le/a/v/a/y/i;->c:Z

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/v/a/y/i;->d:Le/a/i/c/a/c;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Le/a/v/a/y/i;->a:Le/a/i/n;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Le/a/i/n;->a(Le/a/i/c/a/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/v/a/y/i;->f:Z

    .line 2
    iput-boolean p1, p0, Le/a/v/a/y/i;->f:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-virtual {p0}, Le/a/v/a/y/i;->c()Le/a/i/s;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/v/a/y/j;->c(Le/a/i/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/v/a/y/i;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/i/n;->onAdLoaded()V

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Le/a/v/a/y/i;->j:Le/a/i/f0/j/a;

    invoke-interface {p1}, Le/a/i/f0/j/a;->reset()V

    :cond_1
    return-void
.end method

.method public ed(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/v/a/y/i;->c:Z

    .line 2
    iget-object v0, p0, Le/a/v/a/y/i;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/i/n;->ed(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/v/a/y/i;->d()V

    return-void
.end method

.method public f(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v/a/y/i;->h:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->B4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x123

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-static {v2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p1}, Le/a/m0/a1$k;->J0(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public onAdLoaded()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/v/a/y/i;->c:Z

    .line 2
    iget-object v0, p0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-virtual {p0}, Le/a/v/a/y/i;->c()Le/a/i/s;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/v/a/y/j;->c(Le/a/i/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/v/a/y/i;->f:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/v/a/y/i;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/i/n;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public xe(Le/a/i/f0/m/d;I)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/y/i;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Le/a/i/n;->xe(Le/a/i/f0/m/d;I)V

    :cond_0
    return-void
.end method
