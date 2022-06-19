.class public final Le/a/i/h0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/r/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/h0/j;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    iput-object p2, p0, Le/a/i/h0/j;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/r;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/i/h0/j;->b:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Le/a/i/h0/j;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->recordImpression()V

    const/4 p1, 0x0

    return p1
.end method
