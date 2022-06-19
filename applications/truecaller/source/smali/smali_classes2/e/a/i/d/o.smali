.class public final Le/a/i/d/o;
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

    iput-object p3, p0, Le/a/i/d/o;->c:Le/a/i/d/e;

    const p3, 0x7f0a046c

    .line 2
    invoke-static {p1, p3}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p3

    iput-object p3, p0, Le/a/i/d/o;->a:Ls1/g;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Le/m/d/y/n;->p0(Le/a/i/g;Landroid/content/Context;)Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p1

    .line 4
    invoke-interface {p3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    :cond_0
    iput-object p1, p0, Le/a/i/d/o;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-void
.end method


# virtual methods
.method public b4(Le/a/i/f0/m/h;)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d/o;->b:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1}, Le/a/i/f0/m/h;->e()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object v1

    .line 2
    iget-object p1, p1, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, p1, v2}, Le/m/d/y/n;->n(Lcom/google/android/gms/ads/nativead/NativeAdView;Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/c;Z)V

    .line 4
    iget-object p1, p0, Le/a/i/d/o;->c:Le/a/i/d/e;

    invoke-interface {p1}, Le/a/i/d/e;->onAdShown()V

    return-void
.end method
