.class public final Le/f/a/n/q/d/y;
.super Le/f/a/n/q/d/f;
.source "SourceFile"


# static fields
.field public static final c:[B


# instance fields
.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/f/a/n/f;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Le/f/a/n/q/d/y;->c:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/f/a/n/q/d/f;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "roundingRadius must be greater than 0."

    .line 2
    invoke-static {v0, v1}, Ln3/g0/y;->t(ZLjava/lang/String;)V

    .line 3
    iput p1, p0, Le/f/a/n/q/d/y;->b:I

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    sget-object v0, Le/f/a/n/q/d/y;->c:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Le/f/a/n/q/d/y;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public c(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget p3, p0, Le/f/a/n/q/d/y;->b:I

    .line 2
    sget-object p4, Le/f/a/n/q/d/c0;->a:Landroid/graphics/Paint;

    if-lez p3, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string v0, "roundingRadius must be greater than 0."

    .line 3
    invoke-static {p4, v0}, Ln3/g0/y;->t(ZLjava/lang/String;)V

    .line 4
    new-instance p4, Le/f/a/n/q/d/a0;

    invoke-direct {p4, p3}, Le/f/a/n/q/d/a0;-><init>(I)V

    invoke-static {p1, p2, p4}, Le/f/a/n/q/d/c0;->f(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;Le/f/a/n/q/d/c0$a;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Le/f/a/n/q/d/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/f/a/n/q/d/y;

    .line 3
    iget v0, p0, Le/f/a/n/q/d/y;->b:I

    iget p1, p1, Le/f/a/n/q/d/y;->b:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Le/f/a/n/q/d/y;->b:I

    .line 2
    sget-object v1, Le/f/a/t/j;->a:[C

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    const v1, -0x21f3caa6

    add-int/2addr v0, v1

    return v0
.end method
