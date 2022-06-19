.class public final Le/a/v/a/r0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/r0/h;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/i5/d;

.field public final c:I


# direct methods
.method public constructor <init>(Le/a/i5/d;I)V
    .locals 1

    const-string v0, "appTheme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/a/r0/g;->b:Le/a/i5/d;

    iput p2, p0, Le/a/v/a/r0/g;->c:I

    .line 2
    new-instance p1, Le/a/v/a/r0/g$a;

    invoke-direct {p1, p0}, Le/a/v/a/r0/g$a;-><init>(Le/a/v/a/r0/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/v/a/r0/g;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/r0/g;->b:Le/a/i5/d;

    invoke-virtual {p0, v0}, Le/a/v/a/r0/g;->d(Le/a/i5/d;)Z

    move-result v0

    check-cast p1, Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/v/a/r0/g;->c:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->setColorInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->h()V

    :goto_0
    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/r0/g;->b:Le/a/i5/d;

    invoke-virtual {p0, v0}, Le/a/v/a/r0/g;->d(Le/a/i5/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/v/a/r0/g;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    invoke-virtual {p1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->l()V

    :goto_0
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
    iget-object v0, p0, Le/a/v/a/r0/g;->b:Le/a/i5/d;

    invoke-virtual {p0, v0}, Le/a/v/a/r0/g;->d(Le/a/i5/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Le/a/v/a/r0/g;->c:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/tag/TagXView;->setIconTint(I)V

    .line 5
    iget v0, p0, Le/a/v/a/r0/g;->c:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/tag/TagXView;->setTitleColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/common/ui/tag/TagXView;->a()V

    :goto_0
    return-void
.end method

.method public final d(Le/a/i5/d;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/i5/d$a;

    if-nez v0, :cond_1

    instance-of p1, p1, Le/a/i5/d$c;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
