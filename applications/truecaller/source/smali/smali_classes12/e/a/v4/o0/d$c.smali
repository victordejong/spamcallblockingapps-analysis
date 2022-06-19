.class public final Le/a/v4/o0/d$c;
.super Le/a/v4/o0/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v4/o0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/v4/o0/d$b;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public N4(Le/a/p5/h0;)V
    .locals 3

    const-string v0, "themedResourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v4/o0/d$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    sget v1, Lcom/truecaller/sdk/R$attr;->tcx_textSecondary:I

    invoke-interface {p1, v1}, Le/a/p5/h0;->l(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    sget v1, Lcom/truecaller/sdk/R$drawable;->ic_tcx_verified_badge:I

    sget v2, Lcom/truecaller/sdk/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {p1, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v1, "themedResourceProvider.g\u2026.tcx_brandBackgroundBlue)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v1, p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/truecaller/sdk/R$dimen;->truesdk_horizontal_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/truecaller/sdk/R$dimen;->info_item_vertical_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, p1, v1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
