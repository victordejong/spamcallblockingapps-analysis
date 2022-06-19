.class public final Le/a/v/a/r0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/r0/h;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/v/a/r0/i;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    iget v0, p0, Le/a/v/a/r0/i;->a:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->setColorInt(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Le/a/v/a/r0/i;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/v/a/r0/i;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public c(Lcom/truecaller/common/ui/tag/TagXView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/details_view/R$style;->StyleX_Text_Overline:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/tag/TagXView;->setTitleTextAppearance(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3
    iget v0, p0, Le/a/v/a/r0/i;->a:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/tag/TagXView;->setIconTint(I)V

    .line 4
    iget v0, p0, Le/a/v/a/r0/i;->a:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/tag/TagXView;->setTitleColor(I)V

    return-void
.end method
