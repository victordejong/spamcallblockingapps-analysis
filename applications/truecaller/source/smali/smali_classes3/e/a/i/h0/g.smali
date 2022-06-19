.class public final Le/a/i/h0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V
    .locals 0

    iput-object p1, p0, Le/a/i/h0/g;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/i/h0/g;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v0, "Image"

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->performClick(Ljava/lang/String;)V

    return-void
.end method
