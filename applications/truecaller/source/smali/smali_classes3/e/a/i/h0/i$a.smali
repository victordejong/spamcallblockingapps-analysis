.class public final Le/a/i/h0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/h0/i;->a(Landroid/widget/ImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/h0/i;


# direct methods
.method public constructor <init>(Le/a/i/h0/i;)V
    .locals 0

    iput-object p1, p0, Le/a/i/h0/i$a;->a:Le/a/i/h0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/i/h0/i$a;->a:Le/a/i/h0/i;

    iget-object p1, p1, Le/a/i/h0/i;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v0, "Image"

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->performClick(Ljava/lang/String;)V

    return-void
.end method
