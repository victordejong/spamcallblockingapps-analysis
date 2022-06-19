.class public final Le/a/a/c/q8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/c/q8/a;->a:I

    iput p2, p0, Le/a/a/c/q8/a;->b:I

    iput p3, p0, Le/a/a/c/q8/a;->c:I

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 9

    move-object v0, p0

    move-object v1, p2

    const-string v2, "c"

    move-object v3, p1

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "text"

    move-object/from16 v4, p8

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "layout"

    move-object/from16 v4, p12

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    .line 3
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget v5, v0, Le/a/a/c/q8/a;->a:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    move v5, p3

    int-to-float v5, v5

    move v6, p5

    int-to-float v6, v6

    move v7, p4

    int-to-float v7, v7

    .line 5
    iget v8, v0, Le/a/a/c/q8/a;->b:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    move/from16 v8, p7

    int-to-float v8, v8

    move-object p3, p1

    move p4, v5

    move p5, v6

    move p6, v7

    move/from16 p7, v8

    move-object/from16 p8, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    .line 1
    iget p1, p0, Le/a/a/c/q8/a;->b:I

    iget v0, p0, Le/a/a/c/q8/a;->c:I

    add-int/2addr p1, v0

    return p1
.end method
