.class public Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public final b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final synthetic e:Lcom/mopub/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    .line 3
    iput-object p3, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Le/m/d/y/n;->o1()V

    .line 2
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 4
    iget-object v0, v0, Lcom/mopub/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    .line 5
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$c;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Lcom/mopub/volley/toolbox/ImageLoader$c;->removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 8
    iget-object v0, v0, Lcom/mopub/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    .line 9
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 11
    iget-object v0, v0, Lcom/mopub/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    .line 12
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/toolbox/ImageLoader$c;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0, p0}, Lcom/mopub/volley/toolbox/ImageLoader$c;->removeContainerAndCancelIfNecessary(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 14
    iget-object v0, v0, Lcom/mopub/volley/toolbox/ImageLoader$c;->d:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 17
    iget-object v0, v0, Lcom/mopub/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    .line 18
    iget-object v1, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    return-object v0
.end method
