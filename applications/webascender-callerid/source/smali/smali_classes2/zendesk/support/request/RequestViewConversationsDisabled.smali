.class public Lzendesk/support/request/RequestViewConversationsDisabled;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/RequestView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;
    }
.end annotation


# instance fields
.field private activity:Landroidx/appcompat/app/c;

.field af:Lzendesk/support/request/ActionFactory;

.field private attachmentHelper:Lzendesk/support/request/AttachmentHelper;

.field private imageStream:Lzendesk/belvedere/e;

.field private inputFormComponent:Lzendesk/support/request/ComponentInputForm;

.field private menuItemsDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;",
            ">;"
        }
    .end annotation
.end field

.field picasso:Lg/i/a/d;

.field store:Lt/a/q;

.field private subscription:Lt/a/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    .line 3
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestViewConversationsDisabled;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method private bindAttachmentCarousel(Lt/a/q;Lzendesk/support/request/ActionFactory;)Lt/a/t;
    .locals 10

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/c;

    sget v1, Lg/k/c/f;->X:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    new-instance v8, Lzendesk/support/request/AdapterAttachmentCarousel;

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    iget-object v2, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->picasso:Lg/i/a/d;

    invoke-direct {v8, v1, v2, p2, p1}, Lzendesk/support/request/AdapterAttachmentCarousel;-><init>(Lzendesk/support/request/AttachmentHelper;Lg/i/a/d;Lzendesk/support/request/ActionFactory;Lt/a/f;)V

    .line 3
    new-instance v9, Lzendesk/support/request/ComponentAttachmentCarousel;

    iget-object v4, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->imageStream:Lzendesk/belvedere/e;

    iget-object v5, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/c;

    iget-object v6, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lzendesk/support/request/ComponentAttachmentCarousel;-><init>(Lt/a/f;Lzendesk/support/request/ActionFactory;Lzendesk/belvedere/e;Landroidx/appcompat/app/c;Lzendesk/support/request/AttachmentHelper;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/c;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 6
    iget-object p2, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v9}, Lzendesk/support/request/ComponentAttachmentCarousel;->getSelector()Lt/a/p;

    move-result-object p2

    invoke-interface {p1, p2, v9}, Lt/a/q;->e(Lt/a/p;Lt/a/k;)Lt/a/t;

    move-result-object p1

    return-object p1
.end method

.method private bindComponents(Lt/a/q;Lzendesk/support/request/ActionFactory;)Lt/a/t;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lt/a/t;

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestViewConversationsDisabled;->bindInput(Lt/a/q;)Lt/a/t;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/RequestViewConversationsDisabled;->bindAttachmentCarousel(Lt/a/q;Lzendesk/support/request/ActionFactory;)Lt/a/t;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 3
    invoke-static {v0}, Lt/a/d;->d([Lt/a/t;)Lt/a/t;

    move-result-object p1

    return-object p1
.end method

.method private bindInput(Lt/a/q;)Lt/a/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->af:Lzendesk/support/request/ActionFactory;

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    .line 2
    invoke-static {p0, p1, v0, v1}, Lzendesk/support/request/ComponentInputForm;->create(Landroid/view/View;Lt/a/f;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentHelper;)Lzendesk/support/request/ComponentInputForm;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    .line 3
    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->imageStream:Lzendesk/belvedere/e;

    invoke-virtual {v0}, Lzendesk/belvedere/e;->d1()Lzendesk/belvedere/o;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    invoke-virtual {v0, v1}, Lzendesk/belvedere/o;->i(Lzendesk/belvedere/o$c;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentInputForm;->getSelector()Lt/a/p;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    invoke-interface {p1, v0, v1}, Lt/a/q;->e(Lt/a/p;Lt/a/k;)Lt/a/t;

    move-result-object p1

    return-object p1
.end method

.method private viewInit(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lg/k/c/h;->F:I

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    check-cast p1, Landroidx/appcompat/app/c;

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/c;

    return-void
.end method


# virtual methods
.method public hasUnsavedInput()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/request/ComponentInputForm;->hasUnsavedInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    sget v0, Lg/k/c/i;->b:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    sget p1, Lg/k/c/f;->g0:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 3
    sget v0, Lg/k/c/f;->f0:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;

    .line 5
    invoke-interface {v1, p1, p2}, Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;->onMenuItemsInflated(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public init(Lzendesk/support/request/RequestComponent;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lzendesk/support/request/RequestComponent;->inject(Lzendesk/support/request/RequestViewConversationsDisabled;)V

    .line 2
    iget-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/c;

    invoke-static {p1}, Lzendesk/belvedere/b;->b(Landroidx/appcompat/app/c;)Lzendesk/belvedere/e;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->imageStream:Lzendesk/belvedere/e;

    .line 3
    new-instance p1, Lzendesk/support/request/AttachmentHelper;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p1, v0}, Lzendesk/support/request/AttachmentHelper;-><init>([I)V

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    .line 4
    iget-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->store:Lt/a/q;

    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->af:Lzendesk/support/request/ActionFactory;

    invoke-direct {p0, p1, v0}, Lzendesk/support/request/RequestViewConversationsDisabled;->bindComponents(Lt/a/q;Lzendesk/support/request/ActionFactory;)Lt/a/t;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->subscription:Lt/a/t;

    .line 5
    invoke-interface {p1}, Lt/a/t;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->subscription:Lt/a/t;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lt/a/t;->c()V

    :cond_0
    return-void
.end method

.method public onOptionsItemClicked(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;

    .line 2
    invoke-interface {v1, p1}, Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;->onMenuItemsClicked(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
