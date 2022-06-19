.class public Le/n/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/volley/Request;

.field public final synthetic b:Lcom/mopub/network/MoPubRequestQueue$c;


# direct methods
.method public constructor <init>(Lcom/mopub/network/MoPubRequestQueue$c;Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/e/b;->b:Lcom/mopub/network/MoPubRequestQueue$c;

    iput-object p3, p0, Le/n/e/b;->a:Lcom/mopub/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/e/b;->b:Lcom/mopub/network/MoPubRequestQueue$c;

    iget-object v0, v0, Lcom/mopub/network/MoPubRequestQueue$c;->d:Lcom/mopub/network/MoPubRequestQueue;

    .line 2
    iget-object v0, v0, Lcom/mopub/network/MoPubRequestQueue;->l:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Le/n/e/b;->a:Lcom/mopub/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/n/e/b;->b:Lcom/mopub/network/MoPubRequestQueue$c;

    iget-object v0, v0, Lcom/mopub/network/MoPubRequestQueue$c;->d:Lcom/mopub/network/MoPubRequestQueue;

    iget-object v1, p0, Le/n/e/b;->a:Lcom/mopub/volley/Request;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method
