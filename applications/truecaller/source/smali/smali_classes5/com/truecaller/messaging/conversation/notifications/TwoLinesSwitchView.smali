.class public final Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u000e\u001a\u00020\u00042\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ)\u0010\u0012\u001a\u00020\u00042\u001a\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u001e\u001a\u00020\u001a8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u001dR\u001d\u0010#\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0016\u001a\u0004\u0008!\u0010\"R\u001d\u0010&\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0016\u001a\u0004\u0008%\u0010\"\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "text",
        "Ls1/s;",
        "setSubtitle",
        "(Ljava/lang/String;)V",
        "",
        "isChecked",
        "setIsChecked",
        "(Z)V",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "listener",
        "setOnViewClickListener",
        "(Ls1/z/b/l;)V",
        "Lkotlin/Function2;",
        "Landroid/widget/CompoundButton;",
        "setOnCheckedChangeListener",
        "(Ls1/z/b/p;)V",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "v",
        "Ls1/g;",
        "getSwitch",
        "()Landroidx/appcompat/widget/SwitchCompat;",
        "switch",
        "Landroid/widget/ImageView;",
        "w",
        "getIcon",
        "()Landroid/widget/ImageView;",
        "icon",
        "Landroid/widget/TextView;",
        "t",
        "getTitle",
        "()Landroid/widget/TextView;",
        "title",
        "u",
        "getSubtitle",
        "subtitle",
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
.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v1, 0x7f0a1245

    .line 3
    invoke-static {p0, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->t:Ls1/g;

    const v1, 0x7f0a10de

    .line 4
    invoke-static {p0, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->u:Ls1/g;

    const v1, 0x7f0a111b

    .line 5
    invoke-static {p0, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->v:Ls1/g;

    const v1, 0x7f0a096b

    .line 6
    invoke-static {p0, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->w:Ls1/g;

    const v1, 0x7f0d037b

    const/4 v2, 0x1

    .line 7
    invoke-static {p0, v1, v2}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/truecaller/R$styleable;->TwoLinesSwitchView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->getIcon()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->getTitle()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final getIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getSubtitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSwitch()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final setIsChecked(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final setOnCheckedChangeListener(Ls1/z/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-",
            "Landroid/widget/CompoundButton;",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Le/a/a/c/o/l;

    invoke-direct {v1, p1}, Le/a/a/c/o/l;-><init>(Ls1/z/b/p;)V

    move-object p1, v1

    :cond_0
    check-cast p1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final setOnViewClickListener(Ls1/z/b/l;)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Le/a/a/c/o/k;

    invoke-direct {v0, p1}, Le/a/a/c/o/k;-><init>(Ls1/z/b/l;)V

    move-object p1, v0

    :cond_0
    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->getSubtitle()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;->getSubtitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
