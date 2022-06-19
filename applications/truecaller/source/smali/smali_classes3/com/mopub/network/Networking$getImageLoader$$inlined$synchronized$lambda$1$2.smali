.class public final Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1;->invoke()Lcom/mopub/network/MaxWidthImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b\u00b8\u0006\u0000"
    }
    d2 = {
        "com/mopub/network/Networking$getImageLoader$1$1$1",
        "Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;",
        "",
        "key",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "(Ljava/lang/String;)Landroid/graphics/Bitmap;",
        "bitmap",
        "Ls1/s;",
        "putBitmap",
        "(Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;


# direct methods
.method public constructor <init>(Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-virtual {v0, p1}, Ln3/g/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$2;->a:Lcom/mopub/network/Networking$getImageLoader$$inlined$synchronized$lambda$1$1;

    invoke-virtual {v0, p1, p2}, Ln3/g/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
