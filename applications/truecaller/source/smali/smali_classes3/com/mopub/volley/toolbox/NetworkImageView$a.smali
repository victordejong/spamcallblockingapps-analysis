.class public Lcom/mopub/volley/toolbox/NetworkImageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/NetworkImageView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/mopub/volley/toolbox/NetworkImageView;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$a;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$a;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    .line 2
    iget v0, p1, Lcom/mopub/volley/toolbox/NetworkImageView;->d:I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/mopub/volley/toolbox/NetworkImageView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-boolean p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$a;->a:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$a;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    new-instance v0, Lcom/mopub/volley/toolbox/NetworkImageView$a$a;

    invoke-direct {v0, p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView$a$a;-><init>(Lcom/mopub/volley/toolbox/NetworkImageView$a;Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView$a;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView$a;->b:Lcom/mopub/volley/toolbox/NetworkImageView;

    .line 6
    iget p2, p1, Lcom/mopub/volley/toolbox/NetworkImageView;->b:I

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, p1, Lcom/mopub/volley/toolbox/NetworkImageView;->c:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void
.end method
