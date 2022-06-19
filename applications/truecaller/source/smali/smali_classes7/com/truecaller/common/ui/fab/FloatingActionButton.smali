.class public final Lcom/truecaller/common/ui/fab/FloatingActionButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0017\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u001e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001f\u0010\u000cJ\u0017\u0010 \u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0014\u00a2\u0006\u0004\u0008#\u0010\u0019J\u001d\u0010\'\u001a\u00020\u00062\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010+\u001a\u00020\u00062\u0008\u0010*\u001a\u0004\u0018\u00010)\u00a2\u0006\u0004\u0008+\u0010,J\r\u0010-\u001a\u00020\u0006\u00a2\u0006\u0004\u0008-\u0010.J\r\u0010/\u001a\u00020\u0006\u00a2\u0006\u0004\u0008/\u0010.J\u000f\u00100\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00080\u0010.J\'\u00103\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00142\u0006\u00101\u001a\u00020\u00102\u0006\u00102\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u00083\u00104J\u0017\u00106\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u00086\u0010\u0019R\u0016\u00109\u001a\u0002078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00108R\u0018\u0010;\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010:R\u0016\u0010=\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010<R\u001b\u0010C\u001a\u0004\u0018\u00010>8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\u0016\u0010E\u001a\u00020\t8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010DR\u0016\u0010G\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010<R\u0016\u0010I\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010<R\u0016\u0010L\u001a\u00020J8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u0010KR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010MR\u0016\u0010P\u001a\u00020\t8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010DR\u0016\u0010R\u001a\u00020\t8\u0002@\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008Q\u0010DR\u0016\u0010T\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010SR\u0013\u0010W\u001a\u00020\u00108F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010VR$\u0010Z\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u00148\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008Y\u0010<\u001a\u0004\u0008Z\u0010[\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/truecaller/common/ui/fab/FloatingActionButton;",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "Ls1/s;",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "",
        "color",
        "setBackgroundColor",
        "(I)V",
        "l",
        "setOnClickListener",
        "(Landroid/view/View$OnClickListener;)V",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "",
        "onLongClick",
        "(Landroid/view/View;)Z",
        "openOnClick",
        "setOpenMenuOnClick",
        "(Z)V",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "setDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "itemLayout",
        "setMenuItemLayout",
        "setIconTintColor",
        "(Ljava/lang/Integer;)V",
        "show",
        "e",
        "",
        "Le/a/b0/a/w/d;",
        "items",
        "setMenuItems",
        "([Lcom/truecaller/common/ui/fab/FabMenuItem;)V",
        "Le/a/b0/a/w/a;",
        "listener",
        "setFabActionListener",
        "(Le/a/b0/a/w/a;)V",
        "d",
        "()V",
        "c",
        "f",
        "view",
        "position",
        "b",
        "(ZLandroid/view/View;I)V",
        "visible",
        "a",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "imageView",
        "Le/a/b0/a/w/a;",
        "fabActionListener",
        "Z",
        "isAnimatingMenu",
        "Landroid/util/AttributeSet;",
        "m",
        "Landroid/util/AttributeSet;",
        "getAttrs",
        "()Landroid/util/AttributeSet;",
        "attrs",
        "I",
        "menuItemLayout",
        "j",
        "isLandscape",
        "h",
        "openMenuOnClick",
        "Landroid/widget/LinearLayout;",
        "Landroid/widget/LinearLayout;",
        "menuRoot",
        "[Lcom/truecaller/common/ui/fab/FabMenuItem;",
        "menuItems",
        "g",
        "menuItemHeight",
        "k",
        "animationDuration",
        "Landroid/view/View;",
        "backdrop",
        "getButtonView",
        "()Landroid/view/View;",
        "buttonView",
        "<set-?>",
        "i",
        "isShowingMenu",
        "()Z",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/AppCompatImageView;

.field public final b:Landroid/widget/LinearLayout;

.field public final c:Landroid/view/View;

.field public d:[Le/a/b0/a/w/d;

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:I

.field public l:Le/a/b0/a/w/a;

.field public final m:Landroid/util/AttributeSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->m:Landroid/util/AttributeSet;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->h:Z

    const/16 v2, 0x12c

    .line 4
    iput v2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/truecaller/common/ui/R$layout;->floating_action_button:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->j:Z

    .line 8
    sget v0, Lcom/truecaller/common/ui/R$id;->fab_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.fab_icon)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    sget v1, Lcom/truecaller/common/ui/R$id;->fab_menu:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.fab_menu)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    .line 10
    sget v2, Lcom/truecaller/common/ui/R$id;->fab_backdrop:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.fab_backdrop)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 11
    sget-object v3, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026ble.FloatingActionButton)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    sget v4, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton_fabMarginBottom:I

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 14
    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 15
    :cond_1
    sget v4, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton_fabMarginEnd:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eq v4, v5, :cond_2

    .line 16
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 17
    :cond_2
    sget v4, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton_fabLayoutWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 18
    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 19
    :cond_3
    sget v4, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton_fabLayoutHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eq v4, v5, :cond_4

    .line 20
    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 21
    :cond_4
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    sget v3, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton_fabMenuMarginBottom:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-eq v3, v5, :cond_5

    .line 24
    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 25
    :cond_5
    sget v3, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton_fabMenuMarginEnd:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-eq v3, v5, :cond_6

    .line 26
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 27
    :cond_6
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    sget p2, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton_fabMenuItemLayout:I

    sget v1, Lcom/truecaller/common/ui/R$layout;->fab_submenu_item_mini:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->f:I

    .line 29
    sget p2, Lcom/truecaller/common/ui/R$styleable;->FloatingActionButton_fabMenuItemHeight:I

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/truecaller/common/ui/R$dimen;->floating_action_button_size_mini:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 31
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->g:I

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    :cond_7
    new-instance p1, Le/a/b0/a/w/e;

    invoke-direct {p1, p0}, Le/a/b0/a/w/e;-><init>(Lcom/truecaller/common/ui/fab/FloatingActionButton;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v1, v2, v0, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/truecaller/common/ui/fab/FloatingActionButton$a;

    invoke-direct {p1, p0}, Lcom/truecaller/common/ui/fab/FloatingActionButton$a;-><init>(Lcom/truecaller/common/ui/fab/FloatingActionButton;)V

    .line 7
    iget-object v3, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v1, v2, v4, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public final b(ZLandroid/view/View;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->d:[Le/a/b0/a/w/d;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 3
    array-length v4, v0

    sub-int/2addr v4, v3

    if-ne p3, v4, :cond_1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Lcom/truecaller/common/ui/fab/FloatingActionButton$b;

    invoke-direct {v2, p0}, Lcom/truecaller/common/ui/fab/FloatingActionButton$b;-><init>(Lcom/truecaller/common/ui/fab/FloatingActionButton;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "animator"

    if-eqz p1, :cond_3

    .line 5
    iget p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->g:I

    int-to-float p1, p1

    array-length v0, v0

    sub-int/2addr v0, p3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    sget p1, Lcom/truecaller/common/ui/R$id;->fab_submenu_item_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v5, "view.findViewById<View>(\u2026d.fab_submenu_item_label)"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 7
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    mul-int/2addr v0, p3

    int-to-long v5, v0

    int-to-long v7, v2

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "animator.translationY(0f\u2026rshootInterpolator(1.5f))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    mul-int/2addr v0, p3

    int-to-long v0, v0

    div-long/2addr v0, v7

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string v1, "animator.alpha(1f).setIn\u2026DecelerateInterpolator())"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    int-to-long v5, v2

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 12
    iget-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->j:Z

    if-eqz p1, :cond_4

    .line 13
    sget p1, Lcom/truecaller/common/ui/R$id;->fab_submenu_item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "icon"

    .line 14
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 16
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    mul-int/2addr p3, p2

    int-to-long p2, p3

    div-long/2addr p2, v7

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    .line 18
    :cond_3
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, v0

    add-int/lit8 v5, p3, 0x1

    sub-int/2addr p1, v5

    iget v6, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    mul-int/2addr p1, v6

    int-to-long v6, p1

    int-to-long v8, v2

    div-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 19
    iget p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->g:I

    int-to-float p1, p1

    array-length v2, v0

    sub-int/2addr v2, p3

    int-to-float p3, v2

    mul-float/2addr p1, p3

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 20
    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string p3, "animator.translationY(me\u2026AccelerateInterpolator())"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    int-to-long v1, p3

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 21
    sget p1, Lcom/truecaller/common/ui/R$id;->fab_submenu_item_label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 22
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p3, v0

    sub-int/2addr p3, v5

    iget v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    mul-int/2addr p3, v1

    int-to-long v1, p3

    div-long/2addr v1, v8

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string p3, "animator.alpha(0f).setIn\u2026AccelerateInterpolator())"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    int-to-long v1, p3

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 24
    iget-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->j:Z

    if-eqz p1, :cond_4

    .line 25
    sget p1, Lcom/truecaller/common/ui/R$id;->fab_submenu_item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 26
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, v0

    sub-int/2addr p2, v5

    iget p3, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    mul-int/2addr p2, p3

    int-to-long p2, p2

    div-long/2addr p2, v8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 28
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string p2, "animator.alpha(0f)\n     \u2026AccelerateInterpolator())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->d:[Le/a/b0/a/w/d;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->e:Z

    .line 4
    iget-object v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->l:Le/a/b0/a/w/a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/b0/a/w/a;->bf()V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 6
    iget-object v4, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "view"

    .line 7
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v4, v3}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b(ZLandroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Lcom/truecaller/common/ui/fab/FloatingActionButton$c;

    invoke-direct {v1, p0}, Lcom/truecaller/common/ui/fab/FloatingActionButton$c;-><init>(Lcom/truecaller/common/ui/fab/FloatingActionButton;)V

    iget v3, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    int-to-long v4, v3

    array-length v0, v0

    mul-int/2addr v0, v3

    int-to-long v6, v0

    const/16 v0, 0x8

    int-to-long v8, v0

    div-long/2addr v6, v8

    add-long/2addr v6, v4

    invoke-virtual {p0, v1, v6, v7}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    invoke-virtual {p0, v2}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a(Z)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-string v1, "imageView.animate().rota\u2026(OvershootInterpolator())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->k:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 11
    iput-boolean v2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->d:[Le/a/b0/a/w/d;

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->e:Z

    .line 4
    iget-object v2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->l:Le/a/b0/a/w/a;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Le/a/b0/a/w/a;->v9()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/common/ui/R$attr;->theme_textColorSecondary:I

    invoke-static {v3, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_6

    .line 9
    aget-object v7, v0, v6

    .line 10
    iget v8, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->f:I

    iget-object v9, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 11
    sget v9, Lcom/truecaller/common/ui/R$id;->fab_submenu_item_icon:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 12
    sget v10, Lcom/truecaller/common/ui/R$id;->fab_submenu_item_label:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Landroid/widget/TextView;

    .line 13
    iget v11, v7, Le/a/b0/a/w/d;->c:I

    .line 14
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 15
    iget v10, v7, Le/a/b0/a/w/d;->b:I

    .line 16
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v10, v7, Le/a/b0/a/w/d;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    const-string v11, "icon"

    .line 18
    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_2
    iget v10, v7, Le/a/b0/a/w/d;->f:I

    if-eqz v10, :cond_3

    .line 20
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 21
    sget-object v11, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    :cond_3
    iget v7, v7, Le/a/b0/a/w/d;->d:I

    if-eqz v7, :cond_4

    move v10, v1

    goto :goto_1

    :cond_4
    move v10, v5

    :goto_1
    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    move v7, v3

    .line 24
    :goto_2
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v7, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 25
    new-instance v7, Lcom/truecaller/common/ui/fab/FloatingActionButton$d;

    invoke-direct {v7, p0, v0, v6}, Lcom/truecaller/common/ui/fab/FloatingActionButton$d;-><init>(Lcom/truecaller/common/ui/fab/FloatingActionButton;[Le/a/b0/a/w/d;I)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v7, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v7, "view"

    .line 27
    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v8, v6}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b(ZLandroid/view/View;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->f()V

    .line 29
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a(Z)V

    .line 31
    iput-boolean v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    :cond_7
    return-void
.end method

.method public final e(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->l:Le/a/b0/a/w/a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/b0/a/w/a;->bf()V

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iput-boolean v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->e:Z

    .line 10
    iput-boolean v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    :goto_1
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->d:[Le/a/b0/a/w/d;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iget v2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->g:I

    array-length v0, v0

    mul-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-boolean v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getAttrs()Landroid/util/AttributeSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->m:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public final getButtonView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->h:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->d:[Le/a/b0/a/w/d;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_1

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->c()V

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->d()V

    goto :goto_2

    .line 4
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->l:Le/a/b0/a/w/a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/b0/a/w/a;->No()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->j:Z

    .line 3
    iget-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->f()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->e:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->l:Le/a/b0/a/w/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/b0/a/w/a;->mf()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/common/ui/R$drawable;->floating_action_button:I

    .line 2
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setFabActionListener(Le/a/b0/a/w/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->l:Le/a/b0/a/w/a;

    return-void
.end method

.method public final setIconTintColor(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->a:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setMenuItemLayout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->f:I

    return-void
.end method

.method public final setMenuItems([Le/a/b0/a/w/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->d:[Le/a/b0/a/w/d;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final setOpenMenuOnClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/common/ui/fab/FloatingActionButton;->h:Z

    return-void
.end method
