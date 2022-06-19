.class public final Le/a/i/d0/a0/g$a;
.super Le/a/i/d0/h0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/d0/a0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final o:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

.field public final p:Le/a/i/d0/a0/g$b;


# direct methods
.method public constructor <init>(Le/a/i/d0/a0/g;Landroid/content/Context;Lcom/criteo/publisher/advancednative/CriteoNativeAd;Ljava/util/Map;Le/a/i/d0/a0/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Le/a/i/d0/a0/g$b;",
            ")V"
        }
    .end annotation

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAd"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bidMap"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeMediaRenderer"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/i/d0/h0/c;-><init>()V

    iput-object p3, p0, Le/a/i/d0/a0/g$a;->o:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    iput-object p5, p0, Le/a/i/d0/a0/g$a;->p:Le/a/i/d0/a0/g$b;

    .line 2
    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, p0, Le/a/i/d0/h0/c;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getDescription()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Le/a/i/d0/h0/c;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getAdvertiserDescription()Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, p0, Le/a/i/d0/h0/c;->j:Ljava/lang/String;

    const-string p1, "crt_cpm"

    .line 8
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "0.0"

    :goto_0
    invoke-virtual {p0, p1}, Le/a/i/d0/h0/a;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/i/d0/h0/a;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Le/a/i/d0/h0/a;->a(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 13
    iput-wide p1, p0, Le/a/i/d0/h0/a;->d:D

    .line 14
    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    .line 15
    iput-object p1, p0, Le/a/i/d0/h0/c;->g:Ljava/lang/String;

    const/16 p1, 0xa

    .line 16
    iput p1, p0, Le/a/i/d0/h0/a;->c:I

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Le/a/i/d0/h0/c;->l:Z

    .line 18
    iput-boolean p1, p0, Le/a/i/d0/h0/c;->k:Z

    .line 19
    iget-object p1, p5, Le/a/i/d0/a0/g$b;->a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    .line 20
    iput-object p1, p0, Le/a/i/d0/h0/c;->m:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public c()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;
    .locals 1

    .line 1
    new-instance v0, Le/a/i/d0/h0/k;

    invoke-direct {v0, p0}, Le/a/i/d0/h0/k;-><init>(Le/a/i/d0/h0/c;)V

    return-object v0
.end method

.method public d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 2
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
    invoke-super {p0, p1, p2, p3}, Le/a/i/d0/h0/c;->d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 2
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LOGO_MEDIA_VIEW"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_2

    .line 3
    check-cast p3, Landroid/view/ViewGroup;

    iget-object p2, p0, Le/a/i/d0/a0/g$a;->p:Le/a/i/d0/a0/g$b;

    .line 4
    iget-object p2, p2, Le/a/i/d0/a0/g$b;->b:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    :cond_2
    iget-object p2, p0, Le/a/i/d0/a0/g$a;->o:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->renderNativeView(Landroid/view/View;)V

    return-void
.end method
