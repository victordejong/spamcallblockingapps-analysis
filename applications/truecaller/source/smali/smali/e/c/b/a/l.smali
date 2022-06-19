.class public final synthetic Le/c/b/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IIZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/l;->a:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iput p2, p0, Le/c/b/a/l;->b:I

    iput p3, p0, Le/c/b/a/l;->c:I

    iput-boolean p4, p0, Le/c/b/a/l;->d:Z

    iput p5, p0, Le/c/b/a/l;->e:I

    iput p6, p0, Le/c/b/a/l;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Le/c/b/a/l;->a:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iget v1, p0, Le/c/b/a/l;->b:I

    iget v2, p0, Le/c/b/a/l;->c:I

    iget-boolean v3, p0, Le/c/b/a/l;->d:Z

    iget v4, p0, Le/c/b/a/l;->e:I

    iget v5, p0, Le/c/b/a/l;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->h(IIZII)V

    return-void
.end method
