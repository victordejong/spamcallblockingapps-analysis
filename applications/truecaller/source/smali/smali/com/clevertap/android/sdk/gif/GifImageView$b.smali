.class public Lcom/clevertap/android/sdk/gif/GifImageView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clevertap/android/sdk/gif/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/clevertap/android/sdk/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/gif/GifImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView$b;->a:Lcom/clevertap/android/sdk/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView$b;->a:Lcom/clevertap/android/sdk/gif/GifImageView;

    .line 2
    iget-object v0, v0, Lcom/clevertap/android/sdk/gif/GifImageView;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView$b;->a:Lcom/clevertap/android/sdk/gif/GifImageView;

    .line 5
    iget-object v1, v0, Lcom/clevertap/android/sdk/gif/GifImageView;->m:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView$b;->a:Lcom/clevertap/android/sdk/gif/GifImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method
