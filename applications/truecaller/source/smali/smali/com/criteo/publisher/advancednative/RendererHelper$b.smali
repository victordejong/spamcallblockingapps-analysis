.class public Lcom/criteo/publisher/advancednative/RendererHelper$b;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/net/URL;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Landroid/graphics/drawable/Drawable;

.field public final synthetic f:Lcom/criteo/publisher/advancednative/RendererHelper;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/RendererHelper;Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->c:Ljava/net/URL;

    iput-object p3, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->d:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->f:Lcom/criteo/publisher/advancednative/RendererHelper;

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->access$000(Lcom/criteo/publisher/advancednative/RendererHelper;)Le/i/b/r1/o;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/i/b/r1/o;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/ImageLoader;

    .line 3
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->c:Ljava/net/URL;

    iget-object v2, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/criteo/publisher/advancednative/RendererHelper$b;->e:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1, v2, v3}, Lcom/criteo/publisher/advancednative/ImageLoader;->loadImageInto(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
