.class public final Le/a/l/c/n/a;
.super Le/a/l/c/n/b;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

.field public final b:Lw3/b/a/p;

.field public final c:I

.field public final d:Le/a/s2/h/e;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/l/p2/v0;

.field public final g:Le/a/s2/c;


# direct methods
.method public constructor <init>(Le/a/s2/h/e;Le/a/p5/c0;Le/a/l/p2/v0;Le/a/s2/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "announceCallerIdSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/l/c/n/b;-><init>()V

    iput-object p1, p0, Le/a/l/c/n/a;->d:Le/a/s2/h/e;

    iput-object p2, p0, Le/a/l/c/n/a;->e:Le/a/p5/c0;

    iput-object p3, p0, Le/a/l/c/n/a;->f:Le/a/l/p2/v0;

    iput-object p4, p0, Le/a/l/c/n/a;->g:Le/a/s2/c;

    .line 2
    sget-object p1, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->ANNOUNCE_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    iput-object p1, p0, Le/a/l/c/n/a;->a:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    .line 3
    new-instance p1, Lw3/b/a/p;

    const/16 p2, 0x7e5

    const/16 p3, 0xc

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Lw3/b/a/p;-><init>(III)V

    iput-object p1, p0, Le/a/l/c/n/a;->b:Lw3/b/a/p;

    const/16 p1, 0xa

    .line 4
    iput p1, p0, Le/a/l/c/n/a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/n/a;->d:Le/a/s2/h/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/s2/h/e;->d(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/a;->d:Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->i()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/l/c/n/a;->c:I

    return v0
.end method

.method public d()Lw3/b/a/p;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/a;->b:Lw3/b/a/p;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/a;->g:Le/a/s2/c;

    invoke-interface {v0}, Le/a/s2/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/l/c/n/a;->d:Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/l/c/n/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/l/c/n/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/c/n/a;->d:Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->g()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le/a/l/c/n/b;->k(J)Z

    move-result v0

    return v0
.end method

.method public g(Z)Le/a/l/v2/i/b/a;
    .locals 6

    .line 1
    new-instance v0, Le/a/l/v2/i/b/a;

    .line 2
    iget-object v1, p0, Le/a/l/c/n/a;->a:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    .line 3
    iget-object v2, p0, Le/a/l/c/n/a;->e:Le/a/p5/c0;

    const v3, 0x7f120017

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026ounceCallNewFeatureLabel)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Le/a/l/c/n/a;->f:Le/a/l/p2/v0;

    invoke-interface {v3}, Le/a/l/p2/v0;->H()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Le/a/l/c/n/a;->e:Le/a/p5/c0;

    const v5, 0x7f120019

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Le/a/l/c/n/a;->e:Le/a/p5/c0;

    const v5, 0x7f120018

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "if (premiumStateSettings\u2026NonPremiumUser)\n        }"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {v0, v1, p1, v2, v3}, Le/a/l/v2/i/b/a;-><init>(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getType()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/a;->a:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/c/n/a;->d:Le/a/s2/h/e;

    .line 2
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    const-string v2, "DateTime.now()"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 5
    invoke-interface {v0, v1, v2}, Le/a/s2/h/e;->f(J)V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/a;->d:Le/a/s2/h/e;

    invoke-interface {v0}, Le/a/s2/h/e;->e()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/n/a;->d:Le/a/s2/h/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/s2/h/e;->b(Z)V

    return-void
.end method
