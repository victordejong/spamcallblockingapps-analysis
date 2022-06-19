.class public final Le/f/a/n/q/d/s;
.super Le/f/a/n/q/d/f;
.source "SourceFile"


# static fields
.field public static final f:[B


# instance fields
.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/f/a/n/f;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/s;->f:[B

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/a/n/q/d/f;-><init>()V

    .line 2
    iput p1, p0, Le/f/a/n/q/d/s;->b:F

    .line 3
    iput p2, p0, Le/f/a/n/q/d/s;->c:F

    .line 4
    iput p3, p0, Le/f/a/n/q/d/s;->d:F

    .line 5
    iput p4, p0, Le/f/a/n/q/d/s;->e:F

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    sget-object v0, Le/f/a/n/q/d/s;->f:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Le/f/a/n/q/d/s;->b:F

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Le/f/a/n/q/d/s;->c:F

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Le/f/a/n/q/d/s;->d:F

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Le/f/a/n/q/d/s;->e:F

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public c(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget p3, p0, Le/f/a/n/q/d/s;->b:F

    iget p4, p0, Le/f/a/n/q/d/s;->c:F

    iget v0, p0, Le/f/a/n/q/d/s;->d:F

    iget v1, p0, Le/f/a/n/q/d/s;->e:F

    .line 2
    new-instance v2, Le/f/a/n/q/d/b0;

    invoke-direct {v2, p3, p4, v0, v1}, Le/f/a/n/q/d/b0;-><init>(FFFF)V

    invoke-static {p1, p2, v2}, Le/f/a/n/q/d/c0;->f(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;Le/f/a/n/q/d/c0$a;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/f/a/n/q/d/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/f/a/n/q/d/s;

    .line 3
    iget v0, p0, Le/f/a/n/q/d/s;->b:F

    iget v2, p1, Le/f/a/n/q/d/s;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Le/f/a/n/q/d/s;->c:F

    iget v2, p1, Le/f/a/n/q/d/s;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Le/f/a/n/q/d/s;->d:F

    iget v2, p1, Le/f/a/n/q/d/s;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Le/f/a/n/q/d/s;->e:F

    iget p1, p1, Le/f/a/n/q/d/s;->e:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Le/f/a/n/q/d/s;->b:F

    const/16 v1, 0x11

    .line 2
    invoke-static {v0, v1}, Le/f/a/t/j;->f(FI)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const v1, -0x78051026

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Le/f/a/n/q/d/s;->c:F

    invoke-static {v1, v0}, Le/f/a/t/j;->f(FI)I

    move-result v0

    .line 4
    iget v1, p0, Le/f/a/n/q/d/s;->d:F

    invoke-static {v1, v0}, Le/f/a/t/j;->f(FI)I

    move-result v0

    .line 5
    iget v1, p0, Le/f/a/n/q/d/s;->e:F

    invoke-static {v1, v0}, Le/f/a/t/j;->f(FI)I

    move-result v0

    return v0
.end method
