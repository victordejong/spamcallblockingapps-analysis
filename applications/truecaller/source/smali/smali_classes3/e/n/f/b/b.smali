.class public Le/n/f/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/Response$ErrorListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/mopub/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/f/b/b;->b:Lcom/mopub/volley/toolbox/ImageLoader;

    iput-object p2, p0, Le/n/f/b/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/n/f/b/b;->b:Lcom/mopub/volley/toolbox/ImageLoader;

    iget-object v1, p0, Le/n/f/b/b;->a:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lcom/mopub/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/volley/toolbox/ImageLoader$c;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, p1}, Lcom/mopub/volley/toolbox/ImageLoader$c;->setError(Lcom/mopub/volley/VolleyError;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/mopub/volley/toolbox/ImageLoader;->a(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$c;)V

    :cond_0
    return-void
.end method
