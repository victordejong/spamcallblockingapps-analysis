.class public final Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;",
        "Landroidx/appcompat/widget/Toolbar;",
        "Landroid/view/View$OnClickListener;",
        "",
        "title",
        "Ls1/s;",
        "setText",
        "(Ljava/lang/String;)V",
        "",
        "color",
        "setTextColor",
        "(I)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "Landroid/widget/TextView;",
        "T",
        "Landroid/widget/TextView;",
        "text",
        "Landroid/widget/ImageView;",
        "U",
        "Landroid/widget/ImageView;",
        "button",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;",
        "V",
        "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;",
        "getContactClickListener$flash_release",
        "()Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;",
        "setContactClickListener$flash_release",
        "(Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;)V",
        "contactClickListener",
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

.field public V:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;


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

    sget p2, Lcom/truecaller/flashsdk/R$layout;->flash_add_background_button:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    sget p1, Lcom/truecaller/flashsdk/R$id;->addPhotoButton:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.addPhotoButton)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->U:Landroid/widget/ImageView;

    .line 5
    sget p1, Lcom/truecaller/flashsdk/R$id;->attachText:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.attachText)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->T:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getContactClickListener$flash_release()Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->V:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->V:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;->S0()V

    :cond_0
    return-void
.end method

.method public final setContactClickListener$flash_release(Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->V:Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
