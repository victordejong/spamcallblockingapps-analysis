.class public final Ln3/y/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ln3/y/e/a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Ln3/y/e/a;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    const/16 v5, 0xff

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ln3/y/e/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Ln3/y/e/a;->k:Ln3/y/e/a;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Ln3/y/e/a;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Ln3/y/e/a;->e:Z

    .line 7
    invoke-static {p2}, Ln3/y/e/a;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Ln3/y/e/a;->f:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 8
    :goto_0
    iput-boolean v4, p0, Ln3/y/e/a;->g:Z

    .line 9
    invoke-static {p4}, Ln3/y/e/a;->a(I)Z

    move-result v5

    iput-boolean v5, p0, Ln3/y/e/a;->h:Z

    .line 10
    invoke-static {p5}, Ln3/y/e/a;->a(I)Z

    move-result p5

    iput-boolean p5, p0, Ln3/y/e/a;->i:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, v3

    .line 11
    :goto_1
    iput p1, p0, Ln3/y/e/a;->a:I

    const/high16 p1, -0x1000000

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move p2, p1

    .line 12
    :goto_2
    iput p2, p0, Ln3/y/e/a;->b:I

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move p3, v2

    .line 13
    :goto_3
    iput p3, p0, Ln3/y/e/a;->c:I

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move p4, p1

    .line 14
    :goto_4
    iput p4, p0, Ln3/y/e/a;->d:I

    .line 15
    iput-object p6, p0, Ln3/y/e/a;->j:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 7

    .line 1
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget v3, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v4, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 2
    iget v5, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v6}, Ln3/y/e/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    const v0, 0xffff00

    and-int/2addr p0, v0

    if-nez p0, :cond_0

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
