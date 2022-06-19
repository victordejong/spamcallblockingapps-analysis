.class public final Le/a/o5/n$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o5/n;->d(Landroid/net/Uri;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/o5/n$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/o5/n$a;

    invoke-direct {v0}, Le/a/o5/n$a;-><init>()V

    sput-object v0, Le/a/o5/n$a;->b:Le/a/o5/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v8, v1, v0

    new-array v9, v8, [I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    new-array p1, p1, [B

    const/16 v1, 0x18

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, v10

    :goto_0
    if-ge v10, v8, :cond_0

    .line 7
    aget v1, v9, v10

    const/high16 v2, 0xf80000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    const v3, 0xfc00

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xf8

    shr-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 8
    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 9
    aput-byte v1, p1, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
