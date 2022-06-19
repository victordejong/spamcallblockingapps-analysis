.class public final Lcom/truecaller/messaging/views/TransportSwitchView;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/messaging/views/TransportSwitchView;",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Ls1/s;",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "selected",
        "dispatchSetSelected",
        "(Z)V",
        "Landroid/graphics/Rect;",
        "w",
        "Landroid/graphics/Rect;",
        "rect",
        "",
        "u",
        "I",
        "textColorSelectedState",
        "",
        "s",
        "Ljava/lang/String;",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "text",
        "Landroid/text/TextPaint;",
        "v",
        "Landroid/text/TextPaint;",
        "paintText",
        "t",
        "textColor",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public final v:Landroid/text/TextPaint;

.field public final w:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->s:Ljava/lang/String;

    .line 4
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->v:Landroid/text/TextPaint;

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->w:Landroid/graphics/Rect;

    const/4 v2, 0x1

    .line 6
    invoke-static {p1, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/truecaller/R$styleable;->TransportSwitchView:[I

    .line 8
    invoke-virtual {v3, p2, v4, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "it"

    .line 10
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->s:Ljava/lang/String;

    :cond_0
    const v3, -0xffff01

    .line 11
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->t:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    .line 12
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt p2, v3, :cond_1

    .line 15
    sget-object v3, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ImageButton;->setForceDarkAllowed(Z)V

    .line 16
    :cond_1
    iget-object v3, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->s:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Locale.US"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->s:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v3, "roboto_condensed_bold.ttf"

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 18
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 19
    iget v2, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->t:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    const/16 v2, 0x1c

    if-lt p2, v2, :cond_2

    const/16 p2, 0x2bc

    .line 20
    invoke-static {p1, p2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 21
    :cond_2
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 p1, 0x41100000    # 9.0f

    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "resources"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->dispatchSetSelected(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->v:Landroid/text/TextPaint;

    iget v0, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->u:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->v:Landroid/text/TextPaint;

    iget v0, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->t:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->v:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->s:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->w:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 4
    iget-object v2, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->w:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->w:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 6
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->w:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 8
    iget-object v5, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->w:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->w:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 9
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v5, v2

    iget-object v2, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->w:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v5, v2

    .line 10
    invoke-virtual {p1, v1, v3, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/views/TransportSwitchView;->s:Ljava/lang/String;

    return-void
.end method
