.class public final Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001cJ\u0017\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR$\u0010\u0013\u001a\u0004\u0018\u00010\u000c8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;",
        "Landroidx/appcompat/widget/Toolbar;",
        "Landroid/view/View$OnClickListener;",
        "",
        "color",
        "Ls1/s;",
        "setHeaderTextColor",
        "(I)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;",
        "V",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;",
        "getContactClickListener$flash_release",
        "()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;",
        "setContactClickListener$flash_release",
        "(Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;)V",
        "contactClickListener",
        "Landroid/widget/TextView;",
        "T",
        "Landroid/widget/TextView;",
        "headerText",
        "Landroid/widget/ImageView;",
        "U",
        "Landroid/widget/ImageView;",
        "headerImage",
        "a",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final T:Landroid/widget/TextView;

.field public final U:Landroid/widget/ImageView;

.field public V:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/truecaller/flashsdk/R$layout;->flash_contact_header:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    sget p1, Lcom/truecaller/flashsdk/R$id;->contact_logo:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.contact_logo)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->U:Landroid/widget/ImageView;

    .line 5
    sget p2, Lcom/truecaller/flashsdk/R$id;->contact_header_text:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.contact_header_text)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->T:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getContactClickListener$flash_release()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->V:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->V:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;->S0()V

    :cond_0
    return-void
.end method

.method public final setContactClickListener$flash_release(Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->V:Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;

    return-void
.end method

.method public final setHeaderTextColor(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->T:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;->T:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ImageSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    const-string v1, "spans"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    const-string v4, "imageSpan"

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
