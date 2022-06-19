.class public final Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010&\u001a\u00020%\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0010\u001a\u00020\u00042\u0016\u0008\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R%\u0010\u0017\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R%\u0010\u001c\u001a\n \u0013*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u001bR%\u0010!\u001a\n \u0013*\u0004\u0018\u00010\u001d0\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0014\u001a\u0004\u0008\u001f\u0010 R%\u0010$\u001a\n \u0013*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0014\u001a\u0004\u0008#\u0010\u001b\u00a8\u0006+"
    }
    d2 = {
        "Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;",
        "Landroid/widget/FrameLayout;",
        "",
        "icon",
        "Ls1/s;",
        "setTitleIcon",
        "(I)V",
        "Landroid/text/SpannableString;",
        "text",
        "setSubtitleWithLink",
        "(Landroid/text/SpannableString;)V",
        "a",
        "()V",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "listener",
        "setEnableButtonClickListener",
        "(Ls1/z/b/l;)V",
        "Landroid/widget/Button;",
        "kotlin.jvm.PlatformType",
        "Ls1/g;",
        "getEnableButton",
        "()Landroid/widget/Button;",
        "enableButton",
        "Landroid/widget/TextView;",
        "d",
        "getTitle",
        "()Landroid/widget/TextView;",
        "title",
        "Landroid/widget/ImageView;",
        "b",
        "getImage",
        "()Landroid/widget/ImageView;",
        "image",
        "c",
        "getSubtitle",
        "subtitle",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0a02bf

    .line 3
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->a:Ls1/g;

    const p2, 0x7f0a0991

    .line 4
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->b:Ls1/g;

    const p2, 0x7f0a10de

    .line 5
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->c:Ls1/g;

    const p2, 0x7f0a1245

    .line 6
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->d:Ls1/g;

    const p2, 0x7f0d02ef

    .line 7
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private final getEnableButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private final getImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getSubtitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->getImage()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final setEnableButtonClickListener(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Landroid/view/View;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->getEnableButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Le/a/e/b/p/a;

    invoke-direct {v1, p1}, Le/a/e/b/p/a;-><init>(Ls1/z/b/l;)V

    move-object p1, v1

    :cond_0
    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSubtitleWithLink(Landroid/text/SpannableString;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->getSubtitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "subtitle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->getSubtitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public final setTitleIcon(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {v1}, Le/a/p5/s0/g;->O(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method
