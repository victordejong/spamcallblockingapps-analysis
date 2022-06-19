.class public final synthetic Le/c/b/a/a;
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

    iput-object p1, p0, Le/c/b/a/a;->a:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iput-boolean p2, p0, Le/c/b/a/a;->b:Z

    iput p3, p0, Le/c/b/a/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/c/b/a/a;->a:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iget-boolean v1, p0, Le/c/b/a/a;->b:Z

    iget v2, p0, Le/c/b/a/a;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->c(ZI)V

    return-void
.end method
