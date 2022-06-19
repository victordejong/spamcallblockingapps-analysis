.class public Lcom/criteo/publisher/advancednative/RendererHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final imageLoaderHolder:Le/i/b/r1/o;

.field private final uiExecutor:Le/i/b/w1/c;


# direct methods
.method public constructor <init>(Le/i/b/r1/o;Le/i/b/w1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/RendererHelper;->imageLoaderHolder:Le/i/b/r1/o;

    .line 3
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/RendererHelper;->uiExecutor:Le/i/b/w1/c;

    return-void
.end method

.method public static synthetic access$000(Lcom/criteo/publisher/advancednative/RendererHelper;)Le/i/b/r1/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/criteo/publisher/advancednative/RendererHelper;->imageLoaderHolder:Le/i/b/r1/o;

    return-object p0
.end method


# virtual methods
.method public preloadMedia(Ljava/net/URL;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/criteo/publisher/advancednative/RendererHelper$a;

    invoke-direct {v0, p0, p1}, Lcom/criteo/publisher/advancednative/RendererHelper$a;-><init>(Lcom/criteo/publisher/advancednative/RendererHelper;Ljava/net/URL;)V

    .line 2
    invoke-virtual {v0}, Le/i/b/c3;->run()V

    return-void
.end method

.method public setMediaInView(Lcom/criteo/publisher/advancednative/CriteoMedia;Lcom/criteo/publisher/advancednative/CriteoMediaView;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/criteo/publisher/advancednative/CriteoMedia;->getImageUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->getPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMediaInView(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/RendererHelper;->uiExecutor:Le/i/b/w1/c;

    new-instance v1, Lcom/criteo/publisher/advancednative/RendererHelper$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/criteo/publisher/advancednative/RendererHelper$b;-><init>(Lcom/criteo/publisher/advancednative/RendererHelper;Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Le/i/b/w1/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
