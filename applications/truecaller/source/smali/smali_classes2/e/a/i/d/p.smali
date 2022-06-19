.class public final Le/a/i/d/p;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/n$d;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lcom/google/android/gms/ads/nativead/NativeAdView;

.field public final c:Le/a/i/d/e;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/i/g;Le/a/i/d/e;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLayout"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Le/a/i/d/p;->c:Le/a/i/d/e;

    const p3, 0x7f0a046c

    .line 2
    invoke-static {p1, p3}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p3

    iput-object p3, p0, Le/a/i/d/p;->a:Ls1/g;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "view.context"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Le/m/d/y/n;->p0(Le/a/i/g;Landroid/content/Context;)Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d/p;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-void
.end method


# virtual methods
.method public b4(Le/a/i/f0/m/h;)V
    .locals 4

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d/p;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2
    iget-object v1, p0, Le/a/i/d/p;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 3
    sget-object v2, Le/a/i/d/a;->a:Le/a/i/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Le/a/i/f0/m/h;->e()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object v2

    .line 9
    iget-object p1, p1, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v2, p1, v3}, Le/m/d/y/n;->n(Lcom/google/android/gms/ads/nativead/NativeAdView;Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/c;Z)V

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    :cond_2
    iget-object p1, p0, Le/a/i/d/p;->c:Le/a/i/d/e;

    invoke-interface {p1}, Le/a/i/d/e;->onAdShown()V

    return-void
.end method
