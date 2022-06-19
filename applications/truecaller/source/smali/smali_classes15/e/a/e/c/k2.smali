.class public Le/a/e/c/k2;
.super Le/a/e/c2/h0;
.source "SourceFile"

# interfaces
.implements Le/a/e/c/h1;


# instance fields
.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/ViewGroup;

.field public h:Landroid/view/ViewGroup;

.field public i:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/widget/ImageButton;

.field public m:Landroid/widget/TextView;

.field public n:Lcom/truecaller/ui/view/TintedImageView;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Le/a/j2;

.field public s:Le/a/e/c/y1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Le/a/e/c2/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    new-instance v0, Lcom/truecaller/common/tag/TagView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/common/tag/TagView;-><init>(Landroid/content/Context;ZZ)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Le/a/e/c/k2;->q:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v1, p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p2, p0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 7
    iget-object p2, p2, Le/a/e/c/y1;->e:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :cond_0
    iget-object p2, p0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 10
    iget-object p2, p2, Le/a/e/c/y1;->f:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/truecaller/common/tag/TagView;->setBackgroundColor(I)V

    .line 12
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setAppearance(Le/a/e/c/y1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget p1, p1, Le/a/e/c/y1;->d:I

    const v1, 0x7f080360

    .line 4
    invoke-static {v0, v1, p1}, Le/a/b0/q/o;->g(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c/k2;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnAddNameClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/k2;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnSuggestNameButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/k2;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTagClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/k2;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
