.class public final Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\nR%\u0010\u0013\u001a\n \u000e*\u0004\u0018\u00010\r0\r8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R%\u0010\u0016\u001a\n \u000e*\u0004\u0018\u00010\r0\r8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0012R%\u0010\u001b\u001a\n \u000e*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0010\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;",
        "Landroid/widget/LinearLayout;",
        "Lkotlin/Function0;",
        "Ls1/s;",
        "dismissClickEvent",
        "setOnDismissClick",
        "(Ls1/z/b/a;)V",
        "",
        "titleString",
        "setTitle",
        "(Ljava/lang/String;)V",
        "descriptionString",
        "setDescription",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "a",
        "Ls1/g;",
        "getTitle",
        "()Landroid/widget/TextView;",
        "title",
        "b",
        "getDescription",
        "description",
        "Landroid/widget/ImageView;",
        "c",
        "getDismissBtn",
        "()Landroid/widget/ImageView;",
        "dismissBtn",
        "d",
        "Ls1/z/b/a;",
        "dismissBtnClick",
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

.field public d:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0a1245

    .line 3
    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->a:Ls1/g;

    const p1, 0x7f0a05cf

    .line 4
    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->b:Ls1/g;

    const p1, 0x7f0a0620

    .line 5
    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->c:Ls1/g;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p2, 0x7f0d0411

    .line 7
    invoke-static {p0, p2, p1, v1, v0}, Le/a/l4/k;->S(Landroid/view/ViewGroup;IZZI)Landroid/view/View;

    .line 8
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->getDismissBtn()Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Le/a/l/v2/i/b/b;

    invoke-direct {p2, p0}, Le/a/l/v2/i/b/b;-><init>(Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final getDescription()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getDismissBtn()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final setDescription(Ljava/lang/String;)V
    .locals 2

    const-string v0, "descriptionString"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "description"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public final setOnDismissClick(Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dismissClickEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->d:Ls1/z/b/a;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "titleString"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
