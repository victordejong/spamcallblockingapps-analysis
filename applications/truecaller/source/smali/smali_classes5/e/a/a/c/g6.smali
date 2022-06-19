.class public final Le/a/a/c/g6;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g6;->b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    iput-object p2, p0, Le/a/a/c/g6;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Le/a/a/c/g6;->b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Le/a/a/c/g6;->c:Landroid/content/Context;

    const/4 v3, 0x0

    .line 3
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iget-object v2, p0, Le/a/a/c/g6;->b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    const v2, 0x7f120cab

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f130185

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 7
    iget-object v2, p0, Le/a/a/c/g6;->b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    invoke-static {v2}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    float-to-int v2, v0

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 9
    invoke-virtual {v1, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 10
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 11
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 12
    iget-object v4, p0, Le/a/a/c/g6;->b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v3, v5

    .line 13
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const-string v6, "paint"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/LinearGradient;

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    move v8, v7

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v3, v0

    :cond_2
    move v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 16
    iget-object v0, p0, Le/a/a/c/g6;->b:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    invoke-static {v0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->f(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;)I

    move-result v13

    .line 17
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v6

    .line 18
    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/PaintDrawable;->setAutoMirrored(Z)V

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
