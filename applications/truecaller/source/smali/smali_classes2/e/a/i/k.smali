.class public final Le/a/i/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/google/android/gms/ads/nativead/NativeAd$Image;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/k;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/k;->b:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p2, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/i/k;->a:Landroid/content/Context;

    invoke-static {p1}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/i/k;->b:Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/f/a/i;->o(Landroid/graphics/drawable/Drawable;)Le/f/a/h;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Le/f/a/r/a;->e()Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 5
    invoke-static {}, Le/f/a/r/h;->H()Le/f/a/r/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    .line 6
    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
