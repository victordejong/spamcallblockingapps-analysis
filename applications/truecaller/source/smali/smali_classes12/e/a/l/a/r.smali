.class public final Le/a/l/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/a/q;


# instance fields
.field public final a:Le/a/l/p2/v0;

.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/r;->a:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->r0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x43

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Le/a/l/a/r;->g(Lcom/truecaller/data/entity/Contact;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->n0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x3f

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Le/a/l/a/r;->g(Lcom/truecaller/data/entity/Contact;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public c(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->q0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x42

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Le/a/l/a/r;->g(Lcom/truecaller/data/entity/Contact;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->o0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x40

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Le/a/l/a/r;->g(Lcom/truecaller/data/entity/Contact;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->p0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Le/a/l/a/r;->g(Lcom/truecaller/data/entity/Contact;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f(Lcom/truecaller/data/entity/Contact;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->m0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v1}, Le/a/l/a/r;->g(Lcom/truecaller/data/entity/Contact;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final g(Lcom/truecaller/data/entity/Contact;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->j0()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Le/a/l/a/r;->a:Le/a/l/p2/v0;

    invoke-interface {p2}, Le/a/l/p2/v0;->H()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    .line 4
    iget-object p2, p1, Le/a/u3/g;->l0:Le/a/u3/g$a;

    sget-object v0, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v1, 0x3d

    aget-object v0, v0, v1

    invoke-virtual {p2, p1, v0}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/l/a/r;->b:Le/a/u3/g;

    .line 7
    iget-object p2, p1, Le/a/u3/g;->k0:Le/a/u3/g$a;

    sget-object v0, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v1, 0x3c

    aget-object v0, v0, v1

    invoke-virtual {p2, p1, v0}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    :goto_0
    return p1

    :cond_4
    :goto_1
    return v0
.end method
