.class public Lcom/criteo/publisher/advancednative/RendererHelper$a;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/RendererHelper;->preloadMedia(Ljava/net/URL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/net/URL;

.field public final synthetic d:Lcom/criteo/publisher/advancednative/RendererHelper;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/RendererHelper;Ljava/net/URL;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/RendererHelper$a;->d:Lcom/criteo/publisher/advancednative/RendererHelper;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/RendererHelper$a;->c:Ljava/net/URL;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/RendererHelper$a;->d:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->access$000(Lcom/criteo/publisher/advancednative/RendererHelper;)Le/i/b/r1/o;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/i/b/r1/o;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/ImageLoader;

    .line 3
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/RendererHelper$a;->c:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/advancednative/ImageLoader;->preload(Ljava/net/URL;)V

    return-void
.end method
