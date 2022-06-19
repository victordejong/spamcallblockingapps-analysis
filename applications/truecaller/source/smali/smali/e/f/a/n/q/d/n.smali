.class public final Le/f/a/n/q/d/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/q/d/n$b;
    }
.end annotation


# static fields
.field public static final f:Le/f/a/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/h<",
            "Le/f/a/n/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Le/f/a/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/h<",
            "Le/f/a/n/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Le/f/a/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Le/f/a/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Le/f/a/n/q/d/n$b;

.field public static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/f/a/n/o/b0/d;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Le/f/a/n/o/b0/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/f/a/n/q/d/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Le/f/a/n/b;->a:Le/f/a/n/b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Le/f/a/n/h;->a(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/n/h;

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/n;->f:Le/f/a/n/h;

    .line 3
    sget-object v0, Le/f/a/n/j;->a:Le/f/a/n/j;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 4
    invoke-static {v1, v0}, Le/f/a/n/h;->a(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/n/h;

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/n;->g:Le/f/a/n/h;

    .line 5
    sget-object v0, Le/f/a/n/q/d/m;->g:Le/f/a/n/h;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v1, v0}, Le/f/a/n/h;->a(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/n/h;

    move-result-object v1

    sput-object v1, Le/f/a/n/q/d/n;->h:Le/f/a/n/h;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 7
    invoke-static {v1, v0}, Le/f/a/n/h;->a(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/n/h;

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/n;->i:Le/f/a/n/h;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/n;->j:Ljava/util/Set;

    .line 10
    new-instance v0, Le/f/a/n/q/d/n$a;

    invoke-direct {v0}, Le/f/a/n/q/d/n$a;-><init>()V

    sput-object v0, Le/f/a/n/q/d/n;->k:Le/f/a/n/q/d/n$b;

    .line 11
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 12
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/n;->l:Ljava/util/Set;

    .line 14
    sget-object v0, Le/f/a/t/j;->a:[C

    .line 15
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 16
    sput-object v0, Le/f/a/n/q/d/n;->m:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Le/f/a/n/o/b0/d;Le/f/a/n/o/b0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Le/f/a/n/o/b0/d;",
            "Le/f/a/n/o/b0/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Le/f/a/n/q/d/t;->a()Le/f/a/n/q/d/t;

    move-result-object v0

    iput-object v0, p0, Le/f/a/n/q/d/n;->e:Le/f/a/n/q/d/t;

    .line 3
    iput-object p1, p0, Le/f/a/n/q/d/n;->d:Ljava/util/List;

    const-string p1, "Argument must not be null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Le/f/a/n/q/d/n;->b:Landroid/util/DisplayMetrics;

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    .line 8
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Le/f/a/n/q/d/n;->c:Le/f/a/n/o/b0/b;

    return-void
.end method

.method public static c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/n$b;Le/f/a/n/o/b0/d;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0xa00000

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Le/f/a/n/q/d/n$b;->a()V

    .line 4
    :goto_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 7
    sget-object v3, Le/f/a/n/q/d/c0;->e:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v4, 0x0

    .line 9
    :try_start_0
    invoke-static {p0, v4, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 13
    :try_start_1
    invoke-static {v3, v0, v1, v2, p1}, Le/f/a/n/q/d/n;->h(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v0

    const-string v1, "Downsampler"

    const/4 v2, 0x3

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 16
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 17
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v1}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    .line 18
    iput-object v4, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 19
    invoke-static {p0, p1, p2, p3}, Le/f/a/n/q/d/n;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/n$b;Le/f/a/n/o/b0/d;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    sget-object p1, Le/f/a/n/q/d/c0;->e:Ljava/util/concurrent/locks/Lock;

    .line 21
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    .line 22
    :catch_1
    :try_start_3
    throw v0

    .line 23
    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :goto_1
    sget-object p1, Le/f/a/n/q/d/c0;->e:Ljava/util/concurrent/locks/Lock;

    .line 25
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " ("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(D)I
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-double p0, v0, p0

    :goto_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static f(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/n$b;Le/f/a/n/o/b0/d;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    invoke-static {p0, p1, p2, p3}, Le/f/a/n/q/d/n;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/n$b;Le/f/a/n/o/b0/d;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 4
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p3, p2, p0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, p2, v0

    return-object p2
.end method

.method public static g(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception decoding bitmap, outWidth: "

    const-string v2, ", outHeight: "

    const-string v3, ", outMimeType: "

    invoke-static {v1, p1, v2, p2, v3}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", inBitmap: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Le/f/a/n/q/d/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static i(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 8
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 10
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 11
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 15
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method public static j(D)I
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILe/f/a/n/i;Le/f/a/n/q/d/n$b;)Le/f/a/n/o/w;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Le/f/a/n/i;",
            "Le/f/a/n/q/d/n$b;",
            ")",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p4

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    const-string v2, "You must provide an InputStream that supports mark()"

    .line 2
    invoke-static {v1, v2}, Ln3/g0/y;->t(ZLjava/lang/String;)V

    .line 3
    iget-object v1, v12, Le/f/a/n/q/d/n;->c:Le/f/a/n/o/b0/b;

    const-class v2, [B

    const/high16 v3, 0x10000

    invoke-interface {v1, v3, v2}, Le/f/a/n/o/b0/b;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    .line 4
    const-class v1, Le/f/a/n/q/d/n;

    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v14, Le/f/a/n/q/d/n;->m:Ljava/util/Queue;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 6
    :try_start_1
    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 7
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_0

    .line 8
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 9
    invoke-static {v2}, Le/f/a/n/q/d/n;->i(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    move-object v15, v2

    .line 10
    monitor-exit v1

    .line 11
    iput-object v13, v15, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 12
    sget-object v1, Le/f/a/n/q/d/n;->f:Le/f/a/n/h;

    invoke-virtual {v0, v1}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/f/a/n/b;

    .line 13
    sget-object v1, Le/f/a/n/q/d/n;->g:Le/f/a/n/h;

    invoke-virtual {v0, v1}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/f/a/n/j;

    .line 14
    sget-object v1, Le/f/a/n/q/d/m;->g:Le/f/a/n/h;

    invoke-virtual {v0, v1}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/f/a/n/q/d/m;

    .line 15
    sget-object v1, Le/f/a/n/q/d/n;->h:Le/f/a/n/h;

    invoke-virtual {v0, v1}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 16
    sget-object v1, Le/f/a/n/q/d/n;->i:Le/f/a/n/h;

    .line 17
    invoke-virtual {v0, v1}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    .line 18
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Le/f/a/n/q/d/n;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/m;Le/f/a/n/b;Le/f/a/n/j;ZIIZLe/f/a/n/q/d/n$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    iget-object v1, v12, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    invoke-static {v0, v1}, Le/f/a/n/q/d/e;->d(Landroid/graphics/Bitmap;Le/f/a/n/o/b0/d;)Le/f/a/n/q/d/e;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    invoke-static {v15}, Le/f/a/n/q/d/n;->i(Landroid/graphics/BitmapFactory$Options;)V

    .line 21
    monitor-enter v14

    .line 22
    :try_start_4
    invoke-interface {v14, v15}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    iget-object v1, v12, Le/f/a/n/q/d/n;->c:Le/f/a/n/o/b0/b;

    invoke-interface {v1, v13}, Le/f/a/n/o/b0/b;->put(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 25
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 26
    invoke-static {v15}, Le/f/a/n/q/d/n;->i(Landroid/graphics/BitmapFactory$Options;)V

    .line 27
    sget-object v2, Le/f/a/n/q/d/n;->m:Ljava/util/Queue;

    monitor-enter v2

    .line 28
    :try_start_6
    invoke-interface {v2, v15}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 29
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 30
    iget-object v1, v12, Le/f/a/n/q/d/n;->c:Le/f/a/n/o/b0/b;

    invoke-interface {v1, v13}, Le/f/a/n/o/b0/b;->put(Ljava/lang/Object;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 31
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 32
    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/m;Le/f/a/n/b;Le/f/a/n/j;ZIIZLe/f/a/n/q/d/n$b;)Landroid/graphics/Bitmap;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    .line 1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v7, Le/f/a/t/f;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 2
    iget-object v9, v0, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    invoke-static {v1, v2, v5, v9}, Le/f/a/n/q/d/n;->f(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/n$b;Le/f/a/n/o/b0/d;)[I

    move-result-object v9

    const/4 v10, 0x0

    .line 3
    aget v11, v9, v10

    const/4 v12, 0x1

    .line 4
    aget v9, v9, v12

    const/4 v13, -0x1

    if-eq v11, v13, :cond_1

    if-ne v9, v13, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v13, p6

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v10

    .line 5
    :goto_1
    iget-object v14, v0, Le/f/a/n/q/d/n;->d:Ljava/util/List;

    iget-object v15, v0, Le/f/a/n/q/d/n;->c:Le/f/a/n/o/b0/b;

    invoke-static {v14, v1, v15}, Ln3/g0/y;->s0(Ljava/util/List;Ljava/io/InputStream;Le/f/a/n/o/b0/b;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    move v15, v10

    goto :goto_2

    :pswitch_0
    const/16 v15, 0x10e

    goto :goto_2

    :pswitch_1
    const/16 v15, 0x5a

    goto :goto_2

    :pswitch_2
    const/16 v15, 0xb4

    :goto_2
    packed-switch v14, :pswitch_data_1

    move/from16 v16, v10

    goto :goto_3

    :pswitch_3
    move/from16 v16, v12

    :goto_3
    const/high16 v10, -0x80000000

    move/from16 v12, p7

    if-ne v12, v10, :cond_3

    .line 6
    invoke-static {v15}, Le/f/a/n/q/d/n;->g(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v9

    goto :goto_4

    :cond_2
    move v12, v11

    :cond_3
    :goto_4
    move/from16 p6, v14

    move/from16 v14, p8

    if-ne v14, v10, :cond_5

    .line 7
    invoke-static {v15}, Le/f/a/n/q/d/n;->g(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move v14, v11

    goto :goto_5

    :cond_4
    move v14, v9

    .line 8
    :cond_5
    :goto_5
    iget-object v10, v0, Le/f/a/n/q/d/n;->d:Ljava/util/List;

    move-wide/from16 v17, v7

    iget-object v7, v0, Le/f/a/n/q/d/n;->c:Le/f/a/n/o/b0/b;

    invoke-static {v10, v1, v7}, Ln3/g0/y;->F0(Ljava/util/List;Ljava/io/InputStream;Le/f/a/n/o/b0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v7

    .line 9
    iget-object v8, v0, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    const-string v10, "]"

    const-string v4, "x"

    move/from16 v19, v13

    const-string v13, "Downsampler"

    if-lez v11, :cond_18

    if-gtz v9, :cond_6

    move v8, v9

    move v3, v11

    move v9, v12

    move-object v0, v13

    move v11, v14

    const/4 v12, 0x3

    const/16 v21, 0x0

    goto/16 :goto_10

    .line 10
    :cond_6
    invoke-static {v15}, Le/f/a/n/q/d/n;->g(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move v15, v9

    move-object/from16 v20, v10

    move v0, v11

    goto :goto_6

    :cond_7
    move v0, v9

    move-object/from16 v20, v10

    move v15, v11

    .line 11
    :goto_6
    invoke-virtual {v3, v15, v0, v12, v14}, Le/f/a/n/q/d/m;->b(IIII)F

    move-result v10

    const/16 v21, 0x0

    cmpg-float v22, v10, v21

    if-lez v22, :cond_17

    .line 12
    invoke-virtual {v3, v15, v0, v12, v14}, Le/f/a/n/q/d/m;->a(IIII)Le/f/a/n/q/d/m$f;

    move-result-object v4

    if-eqz v4, :cond_16

    move/from16 v22, v9

    int-to-float v9, v15

    move/from16 v23, v11

    mul-float v11, v10, v9

    move/from16 p7, v12

    float-to-double v11, v11

    .line 13
    invoke-static {v11, v12}, Le/f/a/n/q/d/n;->j(D)I

    move-result v11

    int-to-float v12, v0

    move-object/from16 v24, v13

    mul-float v13, v10, v12

    move/from16 v25, v14

    float-to-double v13, v13

    .line 14
    invoke-static {v13, v14}, Le/f/a/n/q/d/n;->j(D)I

    move-result v13

    .line 15
    div-int v11, v15, v11

    .line 16
    div-int v13, v0, v13

    .line 17
    sget-object v14, Le/f/a/n/q/d/m$f;->a:Le/f/a/n/q/d/m$f;

    if-ne v4, v14, :cond_8

    .line 18
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_7

    .line 19
    :cond_8
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_7
    const/16 v13, 0x17

    if-gt v6, v13, :cond_9

    .line 20
    sget-object v13, Le/f/a/n/q/d/n;->j:Ljava/util/Set;

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 21
    invoke-interface {v13, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_8

    .line 22
    :cond_9
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v11, 0x1

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v4, v14, :cond_a

    int-to-float v4, v3

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v10, v11, v10

    cmpg-float v4, v4, v10

    if-gez v4, :cond_a

    shl-int/lit8 v3, v3, 0x1

    .line 23
    :cond_a
    :goto_8
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 24
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v7, v4, :cond_b

    const/16 v0, 0x8

    .line 25
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v9, v4

    float-to-double v7, v9

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    div-float/2addr v12, v4

    float-to-double v8, v12

    .line 27
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 28
    div-int/2addr v3, v0

    if-lez v3, :cond_13

    .line 29
    div-int/2addr v7, v3

    .line 30
    div-int/2addr v4, v3

    goto :goto_d

    .line 31
    :cond_b
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v7, v4, :cond_12

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v7, v4, :cond_c

    goto :goto_b

    .line 32
    :cond_c
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v7, v4, :cond_10

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v7, v4, :cond_d

    goto :goto_a

    .line 33
    :cond_d
    rem-int v4, v15, v3

    if-nez v4, :cond_f

    rem-int v4, v0, v3

    if-eqz v4, :cond_e

    goto :goto_9

    .line 34
    :cond_e
    div-int v7, v15, v3

    .line 35
    div-int v4, v0, v3

    goto :goto_d

    .line 36
    :cond_f
    :goto_9
    invoke-static {v1, v2, v5, v8}, Le/f/a/n/q/d/n;->f(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/n$b;Le/f/a/n/o/b0/d;)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 37
    aget v7, v0, v3

    const/4 v3, 0x1

    .line 38
    aget v4, v0, v3

    goto :goto_d

    :cond_10
    :goto_a
    const/16 v0, 0x18

    if-lt v6, v0, :cond_11

    int-to-float v0, v3

    div-float/2addr v9, v0

    .line 39
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-float/2addr v12, v0

    .line 40
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_d

    :cond_11
    int-to-float v0, v3

    div-float/2addr v9, v0

    float-to-double v3, v9

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-float/2addr v12, v0

    float-to-double v7, v12

    .line 42
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    goto :goto_c

    :cond_12
    :goto_b
    int-to-float v0, v3

    div-float/2addr v9, v0

    float-to-double v3, v9

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-float/2addr v12, v0

    float-to-double v7, v12

    .line 44
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    :goto_c
    double-to-int v4, v7

    move v7, v3

    :cond_13
    :goto_d
    move-object/from16 v0, p3

    move/from16 v9, p7

    move/from16 v11, v25

    .line 45
    invoke-virtual {v0, v7, v4, v9, v11}, Le/f/a/n/q/d/m;->b(IIII)F

    move-result v0

    float-to-double v3, v0

    .line 46
    invoke-static {v3, v4}, Le/f/a/n/q/d/n;->e(D)I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v7, v3

    .line 47
    invoke-static {v7, v8}, Le/f/a/n/q/d/n;->j(D)I

    move-result v7

    int-to-float v8, v7

    int-to-float v0, v0

    div-float/2addr v8, v0

    float-to-double v12, v8

    div-double v12, v3, v12

    int-to-double v7, v7

    mul-double/2addr v12, v7

    .line 48
    invoke-static {v12, v13}, Le/f/a/n/q/d/n;->j(D)I

    move-result v0

    .line 49
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 50
    invoke-static {v3, v4}, Le/f/a/n/q/d/n;->e(D)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 51
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v3, :cond_14

    if-lez v0, :cond_14

    if-eq v3, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_f

    :cond_15
    const/4 v0, 0x0

    .line 53
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_f
    move-object/from16 v0, v24

    const/4 v3, 0x2

    .line 54
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-object/from16 v4, p0

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v3, v23

    goto/16 :goto_11

    .line 55
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object v0, v3

    move/from16 v22, v9

    move/from16 v23, v11

    move v9, v12

    move v11, v14

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot scale with factor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v22

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v20

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    move v8, v9

    move v3, v11

    move v9, v12

    move-object v0, v13

    move v11, v14

    const/16 v21, 0x0

    const/4 v12, 0x3

    .line 57
    :goto_10
    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 58
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to determine dimensions for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with target ["

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_19
    move-object/from16 v4, p0

    move/from16 v7, v21

    .line 59
    :goto_11
    iget-object v10, v4, Le/f/a/n/q/d/n;->e:Le/f/a/n/q/d/t;

    move/from16 v13, v16

    move/from16 v12, v19

    .line 60
    invoke-virtual {v10, v9, v11, v12, v13}, Le/f/a/n/q/d/t;->b(IIZZ)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 61
    sget-object v12, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v12, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x0

    .line 62
    iput-boolean v12, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_12

    :cond_1a
    const/4 v12, 0x0

    :goto_12
    if-eqz v10, :cond_1c

    :cond_1b
    const/4 v10, 0x1

    goto :goto_15

    .line 63
    :cond_1c
    sget-object v10, Le/f/a/n/b;->a:Le/f/a/n/b;

    move-object/from16 v13, p4

    if-eq v13, v10, :cond_1f

    .line 64
    :try_start_0
    iget-object v10, v4, Le/f/a/n/q/d/n;->d:Ljava/util/List;

    iget-object v14, v4, Le/f/a/n/q/d/n;->c:Le/f/a/n/o/b0/b;

    invoke-static {v10, v1, v14}, Ln3/g0/y;->F0(Ljava/util/List;Ljava/io/InputStream;Le/f/a/n/o/b0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    const/4 v10, 0x3

    .line 65
    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1d
    move v10, v12

    :goto_13
    if-eqz v10, :cond_1e

    .line 67
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_14

    :cond_1e
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_14
    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 68
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v10, v13, :cond_1b

    const/4 v10, 0x1

    .line 69
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_15

    :cond_1f
    const/4 v10, 0x1

    .line 70
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 71
    :goto_15
    iget v13, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ltz v3, :cond_20

    if-ltz v8, :cond_20

    if-eqz p9, :cond_20

    move v14, v11

    goto :goto_18

    .line 72
    :cond_20
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v9, :cond_21

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v11, :cond_21

    if-eq v9, v11, :cond_21

    move v11, v10

    goto :goto_16

    :cond_21
    move v11, v12

    :goto_16
    if-eqz v11, :cond_22

    int-to-float v9, v9

    .line 73
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v11, v11

    div-float v11, v9, v11

    goto :goto_17

    :cond_22
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_17
    int-to-float v3, v3

    int-to-float v9, v13

    div-float/2addr v3, v9

    float-to-double v13, v3

    .line 74
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v3, v13

    int-to-float v8, v8

    div-float/2addr v8, v9

    float-to-double v8, v8

    .line 75
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v3, v3

    mul-float/2addr v3, v11

    .line 76
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v8, v8

    mul-float/2addr v8, v11

    .line 77
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v14

    const/4 v8, 0x2

    .line 78
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move v9, v3

    :goto_18
    const/4 v3, 0x0

    const/16 v8, 0x1a

    if-lez v9, :cond_26

    if-lez v14, :cond_26

    .line 79
    iget-object v11, v4, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    if-lt v6, v8, :cond_24

    .line 80
    iget-object v13, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v15, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v13, v15, :cond_23

    goto :goto_1a

    .line 81
    :cond_23
    iget-object v13, v2, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_19

    :cond_24
    move-object v13, v3

    :goto_19
    if-nez v13, :cond_25

    .line 82
    iget-object v13, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 83
    :cond_25
    invoke-interface {v11, v9, v14, v13}, Le/f/a/n/o/b0/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_26
    :goto_1a
    const/16 v9, 0x1c

    if-lt v6, v9, :cond_29

    .line 84
    sget-object v6, Le/f/a/n/j;->b:Le/f/a/n/j;

    move-object/from16 v8, p5

    if-ne v8, v6, :cond_27

    iget-object v6, v2, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v6, :cond_27

    .line 85
    invoke-virtual {v6}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v6

    if-eqz v6, :cond_27

    move v11, v10

    goto :goto_1b

    :cond_27
    move v11, v12

    :goto_1b
    if-eqz v11, :cond_28

    .line 86
    sget-object v6, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_1c

    :cond_28
    sget-object v6, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_1c
    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_1d

    :cond_29
    if-lt v6, v8, :cond_2a

    .line 87
    sget-object v6, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 88
    :cond_2a
    :goto_1d
    iget-object v6, v4, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    invoke-static {v1, v2, v5, v6}, Le/f/a/n/q/d/n;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Le/f/a/n/q/d/n$b;Le/f/a/n/o/b0/d;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    iget-object v6, v4, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    invoke-interface {v5, v6, v1}, Le/f/a/n/q/d/n$b;->b(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;)V

    const/4 v5, 0x2

    .line 90
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 91
    invoke-static {v1}, Le/f/a/n/q/d/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 92
    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Le/f/a/n/q/d/n;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 94
    invoke-static/range {v17 .. v18}, Le/f/a/t/f;->a(J)D

    :cond_2b
    if-eqz v1, :cond_2d

    .line 95
    iget-object v0, v4, Le/f/a/n/q/d/n;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 96
    iget-object v0, v4, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    packed-switch p6, :pswitch_data_2

    move v10, v12

    :pswitch_4
    if-nez v10, :cond_2c

    move-object v3, v1

    goto/16 :goto_1f

    .line 97
    :cond_2c
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v8, -0x40800000    # -1.0f

    packed-switch p6, :pswitch_data_3

    goto :goto_1e

    .line 98
    :pswitch_5
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1e

    .line 99
    :pswitch_6
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 100
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1e

    .line 101
    :pswitch_7
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1e

    :pswitch_8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 103
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1e

    :pswitch_9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 105
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1e

    .line 106
    :pswitch_a
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_1e

    :pswitch_b
    const/high16 v3, 0x3f800000    # 1.0f

    .line 107
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 108
    :goto_1e
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 109
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 110
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 111
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 112
    invoke-static {v1}, Le/f/a/n/q/d/c0;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 113
    invoke-interface {v0, v5, v6, v7}, Le/f/a/n/o/b0/d;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 115
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 116
    invoke-static {v1, v0, v2}, Le/f/a/n/q/d/c0;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object v3, v0

    .line 117
    :goto_1f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 118
    iget-object v0, v4, Le/f/a/n/q/d/n;->a:Le/f/a/n/o/b0/d;

    invoke-interface {v0, v1}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    :cond_2d
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
