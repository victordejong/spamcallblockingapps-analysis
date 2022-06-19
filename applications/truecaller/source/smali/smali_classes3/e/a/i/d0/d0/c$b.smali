.class public final Le/a/i/d0/d0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/d0/c;->b(Le/a/i/c/a/c;Le/a/i/g;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/d0/c;


# direct methods
.method public constructor <init>(Le/a/i/d0/d0/c;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d0/c$b;->a:Le/a/i/d0/d0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/i/d0/d0/c$b;->a:Le/a/i/d0/d0/c;

    .line 2
    iget-object v0, p1, Le/a/i/d0/d0/c;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClicked()V

    .line 3
    iget-object v0, p1, Le/a/i/d0/d0/c;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdOpened()V

    .line 4
    iget-object p1, p1, Le/a/i/d0/d0/c;->b:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdLeftApplication()V

    return-void
.end method
