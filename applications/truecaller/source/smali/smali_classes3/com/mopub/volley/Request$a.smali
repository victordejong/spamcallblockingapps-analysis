.class public Lcom/mopub/volley/Request$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/Request;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/mopub/volley/Request;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/Request;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/volley/Request$a;->c:Lcom/mopub/volley/Request;

    iput-object p2, p0, Lcom/mopub/volley/Request$a;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mopub/volley/Request$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mopub/volley/Request$a;->c:Lcom/mopub/volley/Request;

    .line 2
    iget-object v0, v0, Lcom/mopub/volley/Request;->a:Lcom/mopub/volley/VolleyLog$a;

    .line 3
    iget-object v1, p0, Lcom/mopub/volley/Request$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mopub/volley/Request$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/volley/VolleyLog$a;->add(Ljava/lang/String;J)V

    .line 4
    iget-object v0, p0, Lcom/mopub/volley/Request$a;->c:Lcom/mopub/volley/Request;

    .line 5
    iget-object v1, v0, Lcom/mopub/volley/Request;->a:Lcom/mopub/volley/VolleyLog$a;

    .line 6
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/volley/VolleyLog$a;->finish(Ljava/lang/String;)V

    return-void
.end method
