.class public final Le/a/i/h0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/a/g;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/h0/i;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    iput-object p2, p0, Le/a/i/h0/i;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "fallbackImage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackTextView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 2
    iget-object p2, p0, Le/a/i/h0/i;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v0, "Image"

    invoke-interface {p2, v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Le/a/i/h0/i;->b:Landroid/content/Context;

    iget-object v1, p0, Le/a/i/h0/i;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 4
    invoke-static {v0, p2, v1, p1}, Le/m/d/y/n;->z0(Landroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Landroid/widget/ImageView;)V

    .line 5
    new-instance p2, Le/a/i/h0/i$a;

    invoke-direct {p2, p0}, Le/a/i/h0/i$a;-><init>(Le/a/i/h0/i;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
