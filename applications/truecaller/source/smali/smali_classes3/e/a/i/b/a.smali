.class public final Le/a/i/b/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R$\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0007\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR$\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0007\u001a\u0004\u0008\u0012\u0010\t\"\u0004\u0008\u0013\u0010\u000bR$\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0007\u001a\u0004\u0008\u0016\u0010\t\"\u0004\u0008\u0017\u0010\u000bR.\u0010!\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010%\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0007\u001a\u0004\u0008#\u0010\t\"\u0004\u0008$\u0010\u000bR$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u0006."
    }
    d2 = {
        "Le/a/i/b/a;",
        "Landroid/widget/FrameLayout;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "Landroid/view/View;",
        "f",
        "Landroid/view/View;",
        "getImageView",
        "()Landroid/view/View;",
        "setImageView",
        "(Landroid/view/View;)V",
        "imageView",
        "c",
        "getCallToActionView",
        "setCallToActionView",
        "callToActionView",
        "d",
        "getIconView",
        "setIconView",
        "iconView",
        "b",
        "getBodyView",
        "setBodyView",
        "bodyView",
        "Le/a/i/b/b;",
        "value",
        "g",
        "Le/a/i/b/b;",
        "getNativeAd",
        "()Le/a/i/b/b;",
        "setNativeAd",
        "(Le/a/i/b/b;)V",
        "nativeAd",
        "a",
        "getHeadlineView",
        "setHeadlineView",
        "headlineView",
        "Lcom/google/android/gms/ads/nativead/MediaView;",
        "e",
        "Lcom/google/android/gms/ads/nativead/MediaView;",
        "getMediaView",
        "()Lcom/google/android/gms/ads/nativead/MediaView;",
        "setMediaView",
        "(Lcom/google/android/gms/ads/nativead/MediaView;)V",
        "mediaView",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Lcom/google/android/gms/ads/nativead/MediaView;

.field public f:Landroid/view/View;

.field public g:Le/a/i/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getBodyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/b/a;->b:Landroid/view/View;

    return-object v0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/b/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public final getHeadlineView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/b/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final getIconView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/b/a;->d:Landroid/view/View;

    return-object v0
.end method

.method public final getImageView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/b/a;->f:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/b/a;->e:Lcom/google/android/gms/ads/nativead/MediaView;

    return-object v0
.end method

.method public final getNativeAd()Le/a/i/b/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/b/a;->g:Le/a/i/b/b;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/a/i/b/a;->g:Le/a/i/b/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->recordImpression()V

    :cond_0
    return-void
.end method

.method public final setBodyView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/b/a;->b:Landroid/view/View;

    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/b/a;->c:Landroid/view/View;

    return-void
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/b/a;->a:Landroid/view/View;

    return-void
.end method

.method public final setIconView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/b/a;->d:Landroid/view/View;

    return-void
.end method

.method public final setImageView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/b/a;->f:Landroid/view/View;

    return-void
.end method

.method public final setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/b/a;->e:Lcom/google/android/gms/ads/nativead/MediaView;

    return-void
.end method

.method public final setNativeAd(Le/a/i/b/b;)V
    .locals 3

    .line 1
    iput-object p1, p0, Le/a/i/b/a;->g:Le/a/i/b/b;

    .line 2
    new-instance v0, Le/a/i/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Le/a/i/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Le/a/i/b/a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Le/a/i/b/a$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Le/a/i/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/i/b/a;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Le/a/i/b/a$a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Le/a/i/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/i/b/a;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    new-instance v1, Le/a/i/b/a$a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Le/a/i/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/i/b/a;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    new-instance v1, Le/a/i/b/a$a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Le/a/i/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_3
    iget-object v0, p0, Le/a/i/b/a;->f:Landroid/view/View;

    if-eqz v0, :cond_4

    new-instance v1, Le/a/i/b/a$a;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, Le/a/i/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/a/i/b/a;->g:Le/a/i/b/b;

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p1, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->recordImpression()V

    :cond_5
    return-void
.end method
