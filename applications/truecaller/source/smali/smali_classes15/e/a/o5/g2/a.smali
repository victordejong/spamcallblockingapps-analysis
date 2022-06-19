.class public final Le/a/o5/g2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 8

    const-string v0, "inputFormat"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "width"

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    .line 2
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x280

    const/16 v2, 0x168

    if-lt v0, p1, :cond_0

    move v3, p1

    move v4, v0

    move v5, v1

    move v6, v2

    goto :goto_0

    :cond_0
    move v4, p1

    move v3, v0

    move v6, v1

    move v5, v2

    :goto_0
    if-gt v3, v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    mul-int/lit8 v2, v4, 0x9

    mul-int/lit8 v7, v3, 0x10

    if-eq v2, v7, :cond_3

    mul-int/2addr v3, v1

    .line 3
    div-int/2addr v3, v4

    if-lt v0, p1, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v5, v3

    :cond_3
    :goto_1
    const-string p1, "video/avc"

    .line 4
    invoke-static {p1, v5, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "MediaFormat.createVideoF\u2026vc\", outWidth, outHeight)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1e8480

    const-string v1, "bitrate"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0x1e

    const-string v1, "frame-rate"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x3

    const-string v1, "i-frame-interval"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v0, 0x7f000789

    const-string v1, "color-format"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method
