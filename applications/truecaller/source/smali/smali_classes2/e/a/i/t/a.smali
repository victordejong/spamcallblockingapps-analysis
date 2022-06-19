.class public Le/a/i/t/a;
.super Le/a/e/l0;
.source "SourceFile"

# interfaces
.implements Le/a/i/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/t/a$a;
    }
.end annotation


# instance fields
.field public final b:Le/a/i/g;

.field public c:Le/a/i/t/b;

.field public final d:Le/a/i/t/e;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$g;Le/a/i/g;Le/a/i/t/b;Le/a/i/t/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/e/l0;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 2
    iput-object p2, p0, Le/a/i/t/a;->b:Le/a/i/g;

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Le/a/i/t/c;

    invoke-direct {p3}, Le/a/i/t/c;-><init>()V

    :cond_0
    iput-object p3, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    if-nez p4, :cond_1

    .line 4
    new-instance p4, Le/a/i/t/h;

    invoke-direct {p4}, Le/a/i/t/h;-><init>()V

    :cond_1
    iput-object p4, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v0, p1}, Le/a/i/t/b;->c(I)I

    move-result p1

    return p1
.end method

.method public ed(I)V
    .locals 0

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-super {p0}, Le/a/e/l0;->getItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/i/t/b;->b(I)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v0, p1}, Le/a/i/t/b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xf4240

    .line 3
    iget-object v1, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v1, p1}, Le/a/i/t/b;->a(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/e/l0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p0, p1}, Le/a/i/t/a;->i(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v0, p1}, Le/a/i/t/b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    iget-object v1, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v1, p1}, Le/a/i/t/b;->a(I)I

    move-result p1

    invoke-interface {v0, p1}, Le/a/i/t/e;->e(I)Le/a/i/f0/m/d;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    invoke-interface {p1}, Le/a/i/t/e;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0a13dd

    return p1

    :cond_0
    const p1, 0x7f0a13da

    return p1

    .line 4
    :cond_1
    sget-object v0, Lcom/truecaller/ads/provider/holders/AdHolderType;->NATIVE_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    invoke-interface {p1}, Le/a/i/f0/m/d;->getType()Lcom/truecaller/ads/provider/holders/AdHolderType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const p1, 0x7f0a13d7

    return p1

    .line 5
    :cond_2
    sget-object v0, Lcom/truecaller/ads/provider/holders/AdHolderType;->BANNER_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    invoke-interface {p1}, Le/a/i/f0/m/d;->getType()Lcom/truecaller/ads/provider/holders/AdHolderType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    const p1, 0x7f0a13b6

    return p1

    .line 6
    :cond_3
    sget-object v0, Lcom/truecaller/ads/provider/holders/AdHolderType;->HOUSE_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    invoke-interface {p1}, Le/a/i/f0/m/d;->getType()Lcom/truecaller/ads/provider/holders/AdHolderType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    const p1, 0x7f0a13c6

    return p1

    .line 7
    :cond_4
    invoke-interface {p1}, Le/a/i/f0/m/d;->getType()Lcom/truecaller/ads/provider/holders/AdHolderType;

    move-result-object v0

    sget-object v1, Lcom/truecaller/ads/provider/holders/AdHolderType;->CUSTOM_AD:Lcom/truecaller/ads/provider/holders/AdHolderType;

    if-ne v0, v1, :cond_5

    .line 8
    instance-of v0, p1, Le/a/i/f0/m/c;

    if-eqz v0, :cond_5

    .line 9
    sget-object v0, Le/a/i/b/c;->a:Ljava/util/Set;

    .line 10
    move-object v1, p1

    check-cast v1, Le/a/i/f0/m/c;

    .line 11
    iget-object v1, v1, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 12
    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getCustomFormatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    const p1, 0x7f0a13d8

    return p1

    .line 13
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ad type "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Le/a/i/f0/m/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_7
    iget-object v0, p0, Le/a/e/l0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p0, p1}, Le/a/i/t/a;->i(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public h(I)Z
    .locals 1

    const v0, 0x7f0a13d7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a13d8

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a13b6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a13c6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a13dd

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a13da

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public i(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v0, p1}, Le/a/i/t/b;->d(I)I

    move-result p1

    return p1
.end method

.method public onAdLoaded()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/l0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-object p1, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    invoke-interface {p1, p0}, Le/a/i/t/e;->g(Le/a/i/m;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Le/a/i/t/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Prefetcher returned null for existing ad"

    const v3, 0x7f0a13d7

    if-ne v0, v3, :cond_1

    .line 2
    iget-object v0, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    iget-object v3, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v3, p2}, Le/a/i/t/b;->a(I)I

    move-result p2

    invoke-interface {v0, p2}, Le/a/i/t/e;->e(I)Le/a/i/f0/m/d;

    move-result-object p2

    check-cast p2, Le/a/i/f0/m/h;

    if-nez p2, :cond_0

    .line 3
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Le/a/i/f0/m/h;->e()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object v0

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 6
    iget-object p2, p2, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 7
    invoke-static {p1, v0, p2, v1}, Le/m/d/y/n;->n(Lcom/google/android/gms/ads/nativead/NativeAdView;Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/c;Z)V

    return-void

    :cond_1
    const v3, 0x7f0a13d8

    if-ne v0, v3, :cond_3

    .line 8
    iget-object v0, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    iget-object v3, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v3, p2}, Le/a/i/t/b;->a(I)I

    move-result p2

    invoke-interface {v0, p2}, Le/a/i/t/e;->e(I)Le/a/i/f0/m/d;

    move-result-object p2

    check-cast p2, Le/a/i/f0/m/c;

    if-nez p2, :cond_2

    .line 9
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    invoke-static {p2}, Le/a/i/b/c;->a(Le/a/i/f0/m/c;)Le/a/i/b/b;

    move-result-object v0

    .line 11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast p1, Le/a/i/b/a;

    .line 12
    iget-object p2, p2, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 13
    iget-object p2, p2, Le/a/i/f0/l/c;->d:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    .line 14
    invoke-static {p1, v0, p2, v1}, Le/m/d/y/n;->o(Le/a/i/b/a;Le/a/i/b/b;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;Z)V

    return-void

    :cond_3
    const v1, 0x7f0a13b6

    if-ne v0, v1, :cond_6

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    iget-object v0, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    iget-object v1, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v1, p2}, Le/a/i/t/b;->a(I)I

    move-result p2

    invoke-interface {v0, p2}, Le/a/i/t/e;->e(I)Le/a/i/f0/m/d;

    move-result-object p2

    check-cast p2, Le/a/i/f0/m/a;

    if-nez p2, :cond_4

    .line 17
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-void

    .line 18
    :cond_4
    iget-object p2, p2, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 19
    check-cast p2, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 22
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 23
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_6
    const v1, 0x7f0a13c6

    if-ne v0, v1, :cond_8

    .line 25
    iget-object v0, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    iget-object v1, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v1, p2}, Le/a/i/t/b;->a(I)I

    move-result p2

    invoke-interface {v0, p2}, Le/a/i/t/e;->e(I)Le/a/i/f0/m/d;

    move-result-object p2

    check-cast p2, Le/a/i/f0/m/f;

    if-nez p2, :cond_7

    .line 26
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-void

    .line 27
    :cond_7
    iget-object v0, p2, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 28
    check-cast v0, Le/a/i/f0/n/d;

    .line 29
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast p1, Le/a/i/a/f;

    .line 30
    iget-object p2, p2, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 31
    iget-object p2, p2, Le/a/i/f0/l/c;->d:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    .line 32
    invoke-static {p1, v0, p2}, Le/m/d/y/n;->p(Le/a/i/a/f;Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V

    return-void

    :cond_8
    const v1, 0x7f0a13da

    if-eq v0, v1, :cond_a

    const v1, 0x7f0a13dd

    if-ne v0, v1, :cond_9

    goto :goto_0

    .line 33
    :cond_9
    iget-object v0, p0, Le/a/e/l0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 34
    iget-object v1, p0, Le/a/i/t/a;->c:Le/a/i/t/b;

    invoke-interface {v1, p2}, Le/a/i/t/b;->d(I)I

    move-result p2

    .line 35
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 1

    .line 36
    invoke-virtual {p0, p2}, Le/a/i/t/a;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0, v0}, Le/a/i/t/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2}, Le/a/i/t/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Le/a/e/l0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p0, p2}, Le/a/i/t/a;->i(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a13d7

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p1, Le/a/i/t/a$a;

    iget-object p2, p0, Le/a/i/t/a;->b:Le/a/i/g;

    invoke-static {p2, v0}, Le/m/d/y/n;->p0(Le/a/i/g;Landroid/content/Context;)Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p2

    invoke-direct {p1, p2}, Le/a/i/t/a$a;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const v1, 0x7f0a13d8

    if-ne p2, v1, :cond_1

    .line 3
    new-instance p1, Le/a/i/t/a$a;

    iget-object p2, p0, Le/a/i/t/a;->b:Le/a/i/g;

    invoke-static {p2, v0}, Le/m/d/y/n;->o0(Le/a/i/g;Landroid/content/Context;)Le/a/i/b/a;

    move-result-object p2

    invoke-direct {p1, p2}, Le/a/i/t/a$a;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    const v1, 0x7f0a13c6

    if-ne p2, v1, :cond_2

    .line 4
    new-instance p1, Le/a/i/t/a$a;

    iget-object p2, p0, Le/a/i/t/a;->b:Le/a/i/g;

    invoke-static {v0, p2}, Le/m/d/y/n;->y(Landroid/content/Context;Le/a/i/g;)Le/a/i/a/f;

    move-result-object p2

    invoke-direct {p1, p2}, Le/a/i/t/a$a;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_2
    const v1, 0x7f0a13b6

    const/4 v2, 0x0

    const-string v3, "adType"

    const-string v4, "context"

    if-ne p2, v1, :cond_3

    .line 5
    new-instance p2, Le/a/i/t/a$a;

    iget-object v1, p0, Le/a/i/t/a;->b:Le/a/i/g;

    .line 6
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-interface {v1}, Le/a/i/g;->getBannerLayout()I

    move-result v1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026nerLayout, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p2, p1}, Le/a/i/t/a$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_3
    const v1, 0x7f0a13dd

    if-ne p2, v1, :cond_4

    .line 9
    new-instance p2, Le/a/i/t/a$a;

    iget-object v1, p0, Le/a/i/t/a;->b:Le/a/i/g;

    invoke-static {v0, v1, p1}, Le/m/d/y/n;->z(Landroid/content/Context;Le/a/i/g;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Le/a/i/t/a$a;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_4
    const v1, 0x7f0a13da

    if-ne p2, v1, :cond_5

    .line 10
    new-instance p2, Le/a/i/t/a$a;

    iget-object v1, p0, Le/a/i/t/a;->b:Le/a/i/g;

    .line 11
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-interface {v1}, Le/a/i/g;->getEmptyLayout()I

    move-result v1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026ptyLayout, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p2, p1}, Le/a/i/t/a$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 14
    :cond_5
    iget-object v0, p0, Le/a/e/l0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/l0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-object p1, p0, Le/a/i/t/a;->d:Le/a/i/t/e;

    invoke-interface {p1, p0}, Le/a/i/t/e;->i(Le/a/i/m;)V

    return-void
.end method

.method public xe(Le/a/i/f0/m/d;I)V
    .locals 0

    return-void
.end method
