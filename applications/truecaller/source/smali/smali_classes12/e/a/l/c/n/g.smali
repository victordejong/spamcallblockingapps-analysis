.class public final Le/a/l/c/n/g;
.super Le/a/l/c/n/b;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

.field public final c:Lw3/b/a/p;

.field public final d:Le/a/q5/d;

.field public final e:Le/a/q5/i;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/q5/d;Le/a/q5/i;Le/a/p5/c0;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "whatsAppCallerIdManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppCallerIdSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/l/c/n/b;-><init>()V

    iput-object p1, p0, Le/a/l/c/n/g;->d:Le/a/q5/d;

    iput-object p2, p0, Le/a/l/c/n/g;->e:Le/a/q5/i;

    iput-object p3, p0, Le/a/l/c/n/g;->f:Le/a/p5/c0;

    iput-object p4, p0, Le/a/l/c/n/g;->g:Le/a/l/p2/v0;

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Le/a/l/c/n/g;->a:I

    .line 3
    sget-object p1, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->WHATS_APP_CALLER_ID:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    iput-object p1, p0, Le/a/l/c/n/g;->b:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    .line 4
    new-instance p1, Lw3/b/a/p;

    const/16 p2, 0x7e6

    const/4 p3, 0x2

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Lw3/b/a/p;-><init>(III)V

    iput-object p1, p0, Le/a/l/c/n/g;->c:Lw3/b/a/p;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/n/g;->e:Le/a/q5/i;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/q5/i;->d(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/g;->e:Le/a/q5/i;

    invoke-interface {v0}, Le/a/q5/i;->i()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/l/c/n/g;->a:I

    return v0
.end method

.method public d()Lw3/b/a/p;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/g;->c:Lw3/b/a/p;

    return-object v0
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/c/n/g;->d:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->r()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/l/c/n/b;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/l/c/n/g;->e:Le/a/q5/i;

    invoke-interface {v0}, Le/a/q5/i;->J1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/l/c/n/g;->d:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->u()Le/a/q5/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/q5/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/l/c/n/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/c/n/g;->e:Le/a/q5/i;

    invoke-interface {v0}, Le/a/q5/i;->g()J

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
    iget-object v1, p0, Le/a/l/c/n/g;->b:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    .line 3
    iget-object v2, p0, Le/a/l/c/n/g;->f:Le/a/p5/c0;

    const v3, 0x7f1207ca

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026erIdNewFeatureLabelTitle)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Le/a/l/c/n/g;->g:Le/a/l/p2/v0;

    invoke-interface {v3}, Le/a/l/p2/v0;->H()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Le/a/l/c/n/g;->f:Le/a/p5/c0;

    const v5, 0x7f1207c9

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Le/a/l/c/n/g;->f:Le/a/p5/c0;

    const v5, 0x7f1207c8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "if (premiumStateSettings\u2026tionNonPremium)\n        }"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {v0, v1, p1, v2, v3}, Le/a/l/v2/i/b/a;-><init>(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getType()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/g;->b:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/c/n/g;->e:Le/a/q5/i;

    .line 2
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    const-string v2, "DateTime.now()"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    .line 5
    invoke-interface {v0, v1, v2}, Le/a/q5/i;->f(J)V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/c/n/g;->e:Le/a/q5/i;

    invoke-interface {v0}, Le/a/q5/i;->e()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/n/g;->e:Le/a/q5/i;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/q5/i;->b(Z)V

    return-void
.end method
