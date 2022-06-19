.class public final Le/a/i/d0/h0/k;
.super Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;
.source "SourceFile"


# instance fields
.field public a:Le/a/i/c/a/u;

.field public b:Z

.field public c:Z

.field public final d:Le/a/i/d0/h0/c;


# direct methods
.method public constructor <init>(Le/a/i/d0/h0/c;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;-><init>()V

    iput-object p1, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    sget-object v0, Le/a/i/c/a/u$b;->b:Le/a/i/c/a/u$b;

    iput-object v0, p0, Le/a/i/d0/h0/k;->a:Le/a/i/c/a/u;

    .line 3
    iget-boolean v0, p1, Le/a/i/d0/h0/c;->l:Z

    .line 4
    iput-boolean v0, p0, Le/a/i/d0/h0/k;->b:Z

    .line 5
    iget-boolean p1, p1, Le/a/i/d0/h0/c;->k:Z

    .line 6
    iput-boolean p1, p0, Le/a/i/d0/h0/k;->c:Z

    return-void
.end method


# virtual methods
.method public b()Le/a/i/c/a/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->a:Le/a/i/c/a/u;

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Le/a/i/c/a/a0;
    .locals 7

    .line 1
    new-instance v6, Le/a/i/c/a/a0;

    .line 2
    sget-object v0, Lcom/truecaller/ads/mediation/model/AdPartner;->CRITEO:Lcom/truecaller/ads/mediation/model/AdPartner;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

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
    .locals 0

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/c;->n:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public n()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/c;->m:Landroid/view/View;

    return-object v0
.end method

.method public o()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    .line 2
    iget-object v0, v0, Le/a/i/d0/h0/c;->i:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/i/d0/h0/k;->b:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/i/d0/h0/k;->c:Z

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public recordImpression()V
    .locals 0

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ads/mediation/model/AdPartner;->CRITEO:Lcom/truecaller/ads/mediation/model/AdPartner;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->v(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Le/a/i/d0/h0/k;->d:Le/a/i/d0/h0/c;

    invoke-virtual {v0, p1, p2, p3}, Le/a/i/d0/h0/c;->d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void
.end method
