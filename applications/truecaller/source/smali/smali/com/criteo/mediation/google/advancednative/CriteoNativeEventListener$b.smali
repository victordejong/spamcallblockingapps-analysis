.class public Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

.field public b:Lcom/criteo/publisher/advancednative/CriteoMediaView;


# direct methods
.method public constructor <init>(Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-direct {p2, p1}, Lcom/criteo/publisher/advancednative/CriteoMediaView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;->a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    new-instance p2, Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-direct {p2, p1}, Lcom/criteo/publisher/advancednative/CriteoMediaView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;->b:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 1

    iget-object p2, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;->a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-static {p2}, Le/i/a/a/e;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getProductMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object p2

    iget-object v0, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;->a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-virtual {p1, p2, v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Lcom/criteo/publisher/advancednative/CriteoMedia;Lcom/criteo/publisher/advancednative/CriteoMediaView;)V

    :cond_0
    iget-object p2, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;->b:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-static {p2}, Le/i/a/a/e;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getAdvertiserLogoMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object p2

    iget-object p3, p0, Lcom/criteo/mediation/google/advancednative/CriteoNativeEventListener$b;->b:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-virtual {p1, p2, p3}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Lcom/criteo/publisher/advancednative/CriteoMedia;Lcom/criteo/publisher/advancednative/CriteoMediaView;)V

    :cond_1
    return-void
.end method
