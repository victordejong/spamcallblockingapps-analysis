.class public final Lcom/facebook/ads/redexgen/X/Sb;
.super Landroid/os/AsyncTask;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8H;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/8H;"
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/Nt;

.field public A03:Z

.field public final A04:I

.field public final A05:I

.field public final A06:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Nr;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/XT;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "r8ye64eLoQHeOJVpmB1uxWw1zCCHhuzX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pvZIfONmKv3cVbimQPa9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RLgA2SApOIsDDawooMs2KL5D8ZiCWoW1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kM6akDIqkvY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0vJdyNO9qrz2JF8Kt31GcmRDql8haFQB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b8N1ZLVb0I2QrMIKflin5UtA7D7V4D"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "X"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sb;->A0B:[Ljava/lang/String;

    .line 52255
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sb;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;IILcom/facebook/ads/redexgen/X/XT;)V
    .locals 1

    .line 52256
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A03:Z

    .line 52258
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:I

    .line 52259
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:I

    .line 52260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A07:Ljava/lang/ref/WeakReference;

    .line 52261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A06:Ljava/lang/ref/WeakReference;

    .line 52262
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A08:Ljava/lang/ref/WeakReference;

    .line 52263
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A09:Ljava/lang/ref/WeakReference;

    .line 52264
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Sb;->A04:I

    .line 52265
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Sb;->A05:I

    .line 52266
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 52267
    const/16 v1, 0xc

    const/16 v0, 0x10

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/view/ViewGroup;IILcom/facebook/ads/redexgen/X/XT;)V

    .line 52268
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 52269
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52270
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Sb;->A03:Z

    .line 52271
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:I

    .line 52272
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:I

    .line 52273
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A07:Ljava/lang/ref/WeakReference;

    .line 52274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A06:Ljava/lang/ref/WeakReference;

    .line 52275
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A08:Ljava/lang/ref/WeakReference;

    .line 52276
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A09:Ljava/lang/ref/WeakReference;

    .line 52277
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Sb;->A04:I

    .line 52278
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A05:I

    .line 52279
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nr;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 1

    .line 52280
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A03:Z

    .line 52282
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:I

    .line 52283
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:I

    .line 52284
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A07:Ljava/lang/ref/WeakReference;

    .line 52285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A06:Ljava/lang/ref/WeakReference;

    .line 52286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A08:Ljava/lang/ref/WeakReference;

    .line 52287
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A09:Ljava/lang/ref/WeakReference;

    .line 52288
    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A04:I

    .line 52289
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A05:I

    .line 52290
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sb;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sb;->A0A:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x59t
        -0x5bt
        -0x52t
        -0x5bt
        -0x4et
        -0x57t
        -0x5dt
    .end array-data
.end method

.method private final A02([Landroid/graphics/Bitmap;)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 52291
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Sb;
    .local v1, "result":[Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A08:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    .line 52292
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A08:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 52293
    .local p1, "imageView":Landroid/widget/ImageView;
    aget-object v0, p1, v6

    if-eqz v0, :cond_1

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A03:Z

    if-nez v0, :cond_1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A04:I

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 52294
    aget-object v0, p1, v6

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52295
    return-void

    .line 52296
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sb;
    :cond_1
    if-eqz v1, :cond_2

    .line 52297
    aget-object v0, p1, v5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52298
    .end local p1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A06:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 52299
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Nr;

    .line 52300
    .local p1, "blurBorderView":Lcom/facebook/ads/redexgen/X/Nr;
    if-eqz v2, :cond_3

    .line 52301
    aget-object v1, p1, v5

    aget-object v0, p1, v6

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 52302
    .end local p1    # "blurBorderView":Lcom/facebook/ads/redexgen/X/Nr;
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A09:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A09:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    aget-object v0, p1, v6

    if-eqz v0, :cond_4

    .line 52303
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A09:Ljava/lang/ref/WeakReference;

    .line 52304
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v1, p1, v6

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 52305
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 52306
    :cond_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sb;->A02:Lcom/facebook/ads/redexgen/X/Nt;

    if-eqz v0, :cond_6

    .line 52307
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Sb;->A02:Lcom/facebook/ads/redexgen/X/Nt;

    aget-object v0, p1, v5

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-interface {v1, v5}, Lcom/facebook/ads/redexgen/X/Nt;->AAi(Z)V

    .line 52308
    :cond_6
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "result":[Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final varargs A03([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 12

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    return-object v11

    :cond_0
    move-object v6, p0

    .line 52309
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Sb;
    .local v2, "urls":[Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_0
    aget-object v4, p1, v10

    .line 52310
    .local v11, "url":Ljava/lang/String;
    const/4 v7, 0x0

    .line 52311
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 52312
    .local v10, "blurBitmap":Landroid/graphics/Bitmap;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Sb;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/XT;

    .line 52313
    .local v4, "context":Lcom/facebook/ads/redexgen/X/XT;
    const/4 v9, 0x1

    const/4 v8, 0x2

    if-nez v3, :cond_1

    .line 52314
    new-array v0, v8, [Landroid/graphics/Bitmap;

    aput-object v7, v0, v10

    aput-object v5, v0, v9

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52315
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sb;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iget v1, v6, Lcom/facebook/ads/redexgen/X/Sb;->A00:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Sb;->A01:I

    invoke-virtual {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0L(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 52316
    if-eqz v7, :cond_2

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Sb;->A03:Z

    if-nez v0, :cond_2

    .line 52317
    iget v1, v6, Lcom/facebook/ads/redexgen/X/Sb;->A04:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Sb;->A05:I

    invoke-static {v3, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->A01(Lcom/facebook/ads/redexgen/X/XT;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52318
    :catchall_0
    move-exception v4

    .line 52319
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A1J:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 52320
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 52321
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    new-array v0, v8, [Landroid/graphics/Bitmap;

    aput-object v7, v0, v10

    aput-object v5, v0, v9

    return-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v11    # "url":Ljava/lang/String;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "blurBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "context":Lcom/facebook/ads/redexgen/X/XT;
    .end local v2    # "urls":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v11
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/Sb;
    .locals 1

    .line 52322
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:I

    .line 52323
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:I

    .line 52324
    return-object p0
.end method

.method public final A05(II)Lcom/facebook/ads/redexgen/X/Sb;
    .locals 0

    .line 52325
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:I

    .line 52326
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:I

    .line 52327
    return-object p0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;
    .locals 0

    .line 52328
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A02:Lcom/facebook/ads/redexgen/X/Nt;

    .line 52329
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)V
    .locals 3

    .line 52330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 52331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A02:Lcom/facebook/ads/redexgen/X/Nt;

    if-eqz v0, :cond_0

    .line 52332
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Nt;->AAi(Z)V

    .line 52333
    :cond_0
    return-void

    .line 52334
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52335
    return-void
.end method

.method public final A5Y()Lcom/facebook/ads/redexgen/X/XT;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 52336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/XT;

    return-object v0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 52337
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Sb;
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Sb;->A03([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sb;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 52338
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Sb;
    :try_start_0
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Sb;->A02([Landroid/graphics/Bitmap;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sb;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sb;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sb;->A0B:[Ljava/lang/String;

    const-string v1, "X"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "y"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void
.end method
