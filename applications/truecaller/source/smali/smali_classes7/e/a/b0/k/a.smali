.class public Le/a/b0/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[C


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const v2, 0xfddf

    aput-char v2, v0, v1

    .line 1
    sput-object v0, Le/a/b0/k/a;->c:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Le/a/b0/k/a;->a:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Le/a/b0/k/a;->b:Landroid/graphics/Rect;

    .line 5
    sget-object v2, Le/a/b0/k/a;->c:[C

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final a([CLandroid/graphics/Bitmap;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    array-length v4, p1

    iget-object v7, p0, Le/a/b0/k/a;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method
