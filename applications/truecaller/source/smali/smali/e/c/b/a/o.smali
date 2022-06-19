.class public final synthetic Le/c/b/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/o;->a:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iput-boolean p2, p0, Le/c/b/a/o;->b:Z

    iput p3, p0, Le/c/b/a/o;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/c/b/a/o;->a:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iget-boolean v1, p0, Le/c/b/a/o;->b:Z

    iget v2, p0, Le/c/b/a/o;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->d(ZI)V

    return-void
.end method
