.class public final Le/a/i/d0/a0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/d0/a0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

.field public b:Lcom/criteo/publisher/advancednative/CriteoMediaView;


# direct methods
.method public constructor <init>(Le/a/i/d0/a0/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-direct {p2, p1}, Lcom/criteo/publisher/advancednative/CriteoMediaView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le/a/i/d0/a0/g$b;->a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    .line 2
    new-instance p2, Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-direct {p2, p1}, Lcom/criteo/publisher/advancednative/CriteoMediaView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le/a/i/d0/a0/g$b;->b:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    .line 3
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAd"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/i/d0/a0/g$b;->a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getProductMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object p2

    iget-object v0, p0, Le/a/i/d0/a0/g$b;->a:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-virtual {p1, p2, v0}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Lcom/criteo/publisher/advancednative/CriteoMedia;Lcom/criteo/publisher/advancednative/CriteoMediaView;)V

    .line 3
    :cond_0
    iget-object p2, p0, Le/a/i/d0/a0/g$b;->b:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/criteo/publisher/advancednative/CriteoNativeAd;->getAdvertiserLogoMedia()Lcom/criteo/publisher/advancednative/CriteoMedia;

    move-result-object p2

    iget-object p3, p0, Le/a/i/d0/a0/g$b;->b:Lcom/criteo/publisher/advancednative/CriteoMediaView;

    invoke-virtual {p1, p2, p3}, Lcom/criteo/publisher/advancednative/RendererHelper;->setMediaInView(Lcom/criteo/publisher/advancednative/CriteoMedia;Lcom/criteo/publisher/advancednative/CriteoMediaView;)V

    :cond_1
    return-void
.end method
