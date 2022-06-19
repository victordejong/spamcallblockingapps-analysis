.class public final Le/a/i/d0/h0/d;
.super Le/a/i/c/a/e;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/ads/adsrouter/ui/AdType;

.field public b:Le/a/i/c/a/u;

.field public final c:Le/a/i/d0/h0/e;

.field public transient d:Le/a/i/d0/z;


# direct methods
.method public constructor <init>(Le/a/i/d0/h0/e;Le/a/i/d0/z;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/i/c/a/e;-><init>()V

    iput-object p1, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    iput-object p2, p0, Le/a/i/d0/h0/d;->d:Le/a/i/d0/z;

    .line 2
    sget-object p1, Lcom/truecaller/ads/adsrouter/ui/AdType;->BANNER_AMAZON:Lcom/truecaller/ads/adsrouter/ui/AdType;

    iput-object p1, p0, Le/a/i/d0/h0/d;->a:Lcom/truecaller/ads/adsrouter/ui/AdType;

    .line 3
    sget-object p1, Le/a/i/c/a/u$b;->b:Le/a/i/c/a/u$b;

    iput-object p1, p0, Le/a/i/d0/h0/d;->b:Le/a/i/c/a/u;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/ads/adsrouter/ui/AdType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->a:Lcom/truecaller/ads/adsrouter/ui/AdType;

    return-object v0
.end method

.method public b()Le/a/i/c/a/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->b:Le/a/i/c/a/u;

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->d:Le/a/i/d0/z;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 2
    iget-object v2, v1, Le/a/i/d0/h0/b;->g:Ljava/lang/String;

    .line 3
    iget-object v1, v1, Le/a/i/d0/h0/b;->f:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Le/m/d/y/n;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Le/a/i/d0/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()Le/a/i/c/a/a0;
    .locals 7

    .line 1
    new-instance v6, Le/a/i/c/a/a0;

    .line 2
    iget-object v0, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 3
    iget-object v2, v0, Le/a/i/d0/h0/b;->f:Ljava/lang/String;

    .line 4
    iget-object v3, v0, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v1, 0x0

    move-object v0, v6

    .line 5
    invoke-direct/range {v0 .. v5}, Le/a/i/c/a/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->d:Le/a/i/d0/z;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 2
    iget-object v2, v1, Le/a/i/d0/h0/b;->g:Ljava/lang/String;

    .line 3
    iget-object v1, v1, Le/a/i/d0/h0/b;->f:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Le/m/d/y/n;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Le/a/i/d0/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/b;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/b;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public recordImpression()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/d;->d:Le/a/i/d0/z;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/i/d0/h0/d;->c:Le/a/i/d0/h0/e;

    .line 2
    iget-object v2, v1, Le/a/i/d0/h0/b;->g:Ljava/lang/String;

    .line 3
    iget-object v1, v1, Le/a/i/d0/h0/b;->f:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Le/m/d/y/n;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Le/a/i/d0/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
