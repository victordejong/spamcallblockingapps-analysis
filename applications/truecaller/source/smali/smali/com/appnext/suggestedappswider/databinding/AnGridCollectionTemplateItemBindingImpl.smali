.class public Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;
.super Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;
.source "SourceFile"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$j;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 2
    sput-object v0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    sget v1, Lcom/appnext/suggestedappswider/R$id;->app_icon_frame:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Ln3/n/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$j;

    sget-object v1, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Ln3/n/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;-><init>(Ln3/n/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ln3/n/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v8, p3

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->mDirtyFlags:J

    .line 4
    iget-object p1, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;->anGridCollectionAppContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;->appTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v4, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;->mCollectionAd:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v4}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    move-object v6, v1

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v5, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;->appIcon:Landroid/widget/ImageView;

    const-string v0, "imageView"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_1
    invoke-static {}, Lcom/appnext/core/j;->ax()Lcom/appnext/core/j;

    move-result-object v3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/appnext/core/j;->b(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/appnext/core/j$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, "BindingAdapter$loadImage"

    .line 10
    invoke-static {v2, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;->appTitle:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u1(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    .line 12
    monitor-exit p0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->mDirtyFlags:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCollectionAd(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBinding;->mCollectionAd:Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget p1, Lcom/appnext/suggestedappswider/BR;->collectionAd:I

    invoke-virtual {p0, p1}, Ln3/n/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    sget v0, Lcom/appnext/suggestedappswider/BR;->collectionAd:I

    if-ne v0, p1, :cond_0

    .line 2
    check-cast p2, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    invoke-virtual {p0, p2}, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateItemBindingImpl;->setCollectionAd(Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
