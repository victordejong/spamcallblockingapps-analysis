.class public Lcom/clevertap/android/sdk/gif/GifImageView$a;
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
    iput-object p1, p0, Lcom/clevertap/android/sdk/gif/GifImageView$a;->a:Lcom/clevertap/android/sdk/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/gif/GifImageView$a;->a:Lcom/clevertap/android/sdk/gif/GifImageView;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/clevertap/android/sdk/gif/GifImageView;->m:Landroid/graphics/Bitmap;

    .line 3
    iput-object v1, v0, Lcom/clevertap/android/sdk/gif/GifImageView;->i:Le/h/a/c/p0/a;

    .line 4
    iput-object v1, v0, Lcom/clevertap/android/sdk/gif/GifImageView;->f:Ljava/lang/Thread;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/clevertap/android/sdk/gif/GifImageView;->l:Z

    return-void
.end method
