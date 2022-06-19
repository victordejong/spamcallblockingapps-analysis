.class Lzendesk/support/request/ViewToolbarAvatar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final IMAGE_VIEW_IDS:[I


# instance fields
.field private final avatarViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/ZendeskAvatarView;",
            ">;"
        }
    .end annotation
.end field

.field private imageRadius:I

.field private strokeColor:I

.field private strokeWidth:I

.field private userInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/h/k/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    sget v1, Lg/k/c/f;->l1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lg/k/c/f;->m1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lg/k/c/f;->n1:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lg/k/c/f;->o1:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lg/k/c/f;->p1:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lzendesk/support/request/ViewToolbarAvatar;->IMAGE_VIEW_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lzendesk/support/request/ViewToolbarAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->avatarViews:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lg/k/c/d;->v:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->imageRadius:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lg/k/c/d;->w:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lzendesk/support/request/ViewToolbarAvatar;->strokeWidth:I

    .line 7
    sget p1, Lg/k/c/a;->b:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lg/k/c/c;->C:I

    invoke-static {p1, p2, v0}, Lzendesk/support/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lzendesk/support/request/ViewToolbarAvatar;->strokeColor:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewToolbarAvatar;->createAndAddView(I)Lzendesk/support/ZendeskAvatarView;

    move-result-object p2

    const/16 v0, 0x8

    .line 9
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lzendesk/support/request/ViewToolbarAvatar;->avatarViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindData(Lg/i/a/d;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lzendesk/support/request/ViewToolbarAvatar;->avatarViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lzendesk/support/request/ViewToolbarAvatar;->avatarViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/ZendeskAvatarView;

    .line 3
    iget-object v3, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4
    iget-object v3, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/h/k/c;

    .line 5
    iget-object v4, v3, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, v3, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Lf/h/k/c;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lzendesk/support/request/ViewToolbarAvatar;->imageRadius:I

    invoke-virtual {v2, p1, v4, v3, v5}, Lzendesk/support/ZendeskAvatarView;->showUserWithAvatarImage(Lg/i/a/d;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v3, v3, Lf/h/k/c;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lzendesk/support/ZendeskAvatarView;->showUserWithName(Ljava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_1
    const/16 v3, 0x8

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createAndAddView(I)Lzendesk/support/ZendeskAvatarView;
    .locals 4

    .line 1
    new-instance v0, Lzendesk/support/ZendeskAvatarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzendesk/support/ZendeskAvatarView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Lzendesk/support/request/ViewToolbarAvatar;->IMAGE_VIEW_IDS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 3
    iget v1, p0, Lzendesk/support/request/ViewToolbarAvatar;->strokeColor:I

    iget v2, p0, Lzendesk/support/request/ViewToolbarAvatar;->strokeWidth:I

    invoke-virtual {v0, v1, v2}, Lzendesk/support/ZendeskAvatarView;->setStroke(II)V

    .line 4
    iget v1, p0, Lzendesk/support/request/ViewToolbarAvatar;->imageRadius:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 p1, p1, 0x2

    .line 5
    div-int/lit8 v2, v1, 0x3

    mul-int p1, p1, v2

    .line 6
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800005

    .line 7
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    .line 9
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v2, v1, v1, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method setImageUrls(Lg/i/a/d;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/i/a/d;",
            "Ljava/util/List<",
            "Lf/h/k/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    .line 4
    :goto_0
    iget-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 5
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewToolbarAvatar;->bindData(Lg/i/a/d;)V

    return-void
.end method
