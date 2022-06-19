.class public Ln3/y/e/e$a$d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ln3/y/e/e$a$b;

.field public b:Ln3/y/e/e$a$c;

.field public c:Ln3/y/e/a;

.field public d:I

.field public final e:Landroid/text/SpannableStringBuilder;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Ln3/y/e/e$a;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p2, v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput v0, p0, Ln3/y/e/e$a$d;->d:I

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ln3/y/e/e$a$d;->h:I

    .line 6
    new-instance v0, Ln3/y/e/e$a$c;

    invoke-direct {v0, p1, p2}, Ln3/y/e/e$a$c;-><init>(Ln3/y/e/e$a;Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    .line 7
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v0, p0, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "captioning"

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 10
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    iput p2, p0, Ln3/y/e/e$a$d;->i:F

    .line 11
    new-instance p2, Ln3/y/e/a;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    invoke-direct {p2, p1}, Ln3/y/e/a;-><init>(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    invoke-virtual {p0, p2}, Ln3/y/e/e$a$d;->c(Ln3/y/e/a;)V

    .line 12
    iget-object p1, p0, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ln3/y/e/c0;->c(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Ln3/y/e/e$a$d;->f()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 3
    iget-object v1, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    iget-object p1, p0, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/CharacterStyle;

    .line 5
    iget-object v2, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length v1, p1

    iget v2, p0, Ln3/y/e/e$a$d;->d:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 8
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v3, p1

    .line 9
    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 11
    iget-object p1, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move v0, v2

    :goto_1
    const/16 v1, 0x20

    if-gt v0, p1, :cond_1

    .line 12
    iget-object v3, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-gt v3, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_2
    if-lt v3, v0, :cond_2

    .line 13
    iget-object v4, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-gt v4, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    if-ne v3, p1, :cond_3

    .line 14
    iget-object p1, p0, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    iget-object v0, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Ln3/y/e/c0;->c(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 15
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 16
    iget-object v4, p0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-ge v3, p1, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-virtual {v1, v3, p1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    if-lez v0, :cond_5

    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 19
    :cond_5
    iget-object p1, p0, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    invoke-virtual {p1, v1}, Ln3/y/e/c0;->c(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public c(Ln3/y/e/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ln3/y/e/e$a$d;->c:Ln3/y/e/a;

    .line 2
    iget-object v0, p0, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p1, Ln3/y/e/a;->e:Z

    if-eqz v1, :cond_0

    .line 5
    iget v1, p1, Ln3/y/e/a;->a:I

    .line 6
    iput v1, v0, Ln3/y/e/c0;->k:I

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 8
    :cond_0
    iget-boolean v1, p1, Ln3/y/e/a;->f:Z

    if-eqz v1, :cond_1

    .line 9
    iget v1, p1, Ln3/y/e/a;->b:I

    .line 10
    iput v1, v0, Ln3/y/e/c0;->l:I

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 12
    :cond_1
    iget-boolean v1, p1, Ln3/y/e/a;->g:Z

    if-eqz v1, :cond_2

    .line 13
    iget v1, p1, Ln3/y/e/a;->c:I

    .line 14
    iput v1, v0, Ln3/y/e/c0;->n:I

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 16
    :cond_2
    iget-boolean v1, p1, Ln3/y/e/a;->h:Z

    if-eqz v1, :cond_3

    .line 17
    iget v1, p1, Ln3/y/e/a;->d:I

    .line 18
    iput v1, v0, Ln3/y/e/c0;->m:I

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 20
    :cond_3
    iget-object p1, p1, Ln3/y/e/a;->j:Landroid/graphics/Typeface;

    if-eqz p1, :cond_4

    .line 21
    iget-object v1, v0, Ln3/y/e/c0;->i:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 22
    iget-object v1, v0, Ln3/y/e/c0;->i:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, v0, Ln3/y/e/c0;->o:Z

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2a

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget-object v4, p0, Ln3/y/e/e$a$d;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 6
    iget-object v3, p0, Ln3/y/e/e$a$d;->c:Ln3/y/e/a;

    .line 7
    iget-object v3, v3, Ln3/y/e/a;->j:Landroid/graphics/Typeface;

    .line 8
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    :goto_1
    cmpg-float v5, v3, v4

    if-gez v5, :cond_3

    add-float v5, v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 9
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 11
    iget-object v7, p0, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    cmpl-float v6, v7, v6

    const v7, 0x3c23d70a    # 0.01f

    if-lez v6, :cond_2

    add-float/2addr v5, v7

    move v3, v5

    goto :goto_1

    :cond_2
    sub-float/2addr v5, v7

    move v4, v5

    goto :goto_1

    .line 12
    :cond_3
    iget v0, p0, Ln3/y/e/e$a$d;->i:F

    mul-float/2addr v4, v0

    iput v4, p0, Ln3/y/e/e$a$d;->j:F

    .line 13
    iget-object v0, p0, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    .line 14
    iget-object v1, v0, Ln3/y/e/c0;->i:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, v0, Ln3/y/e/c0;->i:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float/2addr v4, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 16
    iput v1, v0, Ln3/y/e/c0;->s:I

    .line 17
    iput-boolean v2, v0, Ln3/y/e/c0;->o:Z

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/y/e/e$a$d;->c:Ln3/y/e/a;

    .line 3
    iget-object v1, v1, Ln3/y/e/a;->j:Landroid/graphics/Typeface;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v1, "ISO-8859-1"

    .line 5
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x100

    if-ge v4, v5, :cond_1

    .line 6
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [B

    int-to-byte v7, v4

    aput-byte v7, v6, v3

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 7
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v7, v2, v6

    if-gez v7, :cond_0

    .line 8
    iput-object v5, p0, Ln3/y/e/e$a$d;->k:Ljava/lang/String;

    move v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ln3/y/e/e$a$d;->e()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    iget p1, p0, Ln3/y/e/e$a$d;->l:I

    if-ne p4, p1, :cond_0

    iget p1, p0, Ln3/y/e/e$a$d;->m:I

    if-eq p5, p1, :cond_1

    .line 2
    :cond_0
    iput p4, p0, Ln3/y/e/e$a$d;->l:I

    .line 3
    iput p5, p0, Ln3/y/e/e$a$d;->m:I

    .line 4
    invoke-virtual {p0}, Ln3/y/e/e$a$d;->e()V

    :cond_1
    return-void
.end method
