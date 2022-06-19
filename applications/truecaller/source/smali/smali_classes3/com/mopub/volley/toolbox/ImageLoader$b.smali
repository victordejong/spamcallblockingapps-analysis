.class public Lcom/mopub/volley/toolbox/ImageLoader$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/toolbox/ImageLoader;->a(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/volley/toolbox/ImageLoader$b;->a:Lcom/mopub/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$b;->a:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 2
    iget-object v0, v0, Lcom/mopub/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/volley/toolbox/ImageLoader$c;

    .line 4
    iget-object v2, v1, Lcom/mopub/volley/toolbox/ImageLoader$c;->d:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 6
    iget-object v4, v3, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    if-nez v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/mopub/volley/toolbox/ImageLoader$c;->getError()Lcom/mopub/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 8
    iget-object v4, v1, Lcom/mopub/volley/toolbox/ImageLoader$c;->b:Landroid/graphics/Bitmap;

    .line 9
    iput-object v4, v3, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    .line 10
    iget-object v4, v3, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    const/4 v5, 0x0

    .line 11
    invoke-interface {v4, v3, v5}, Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v3, v3, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;

    .line 13
    invoke-virtual {v1}, Lcom/mopub/volley/toolbox/ImageLoader$c;->getError()Lcom/mopub/volley/VolleyError;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$b;->a:Lcom/mopub/volley/toolbox/ImageLoader;

    .line 15
    iget-object v0, v0, Lcom/mopub/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 17
    iget-object v0, p0, Lcom/mopub/volley/toolbox/ImageLoader$b;->a:Lcom/mopub/volley/toolbox/ImageLoader;

    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/mopub/volley/toolbox/ImageLoader;->g:Ljava/lang/Runnable;

    return-void
.end method
