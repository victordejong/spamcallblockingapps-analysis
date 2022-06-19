.class public abstract Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final anGridCollectionTemplateRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final anGridCollectionTemplateTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;->anGridCollectionTemplateRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iput-object p5, p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;->anGridCollectionTemplateTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;
    .locals 1

    .line 1
    sget-object v0, Ln3/n/g;->a:Ln3/n/d;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/appnext/suggestedappswider/R$layout;->an_grid_collection_template_layout:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;
    .locals 1

    .line 3
    sget-object v0, Ln3/n/g;->a:Ln3/n/d;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;
    .locals 1

    .line 1
    sget-object v0, Ln3/n/g;->a:Ln3/n/d;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/appnext/suggestedappswider/R$layout;->an_grid_collection_template_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/appnext/suggestedappswider/R$layout;->an_grid_collection_template_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/appnext/suggestedappswider/databinding/AnGridCollectionTemplateLayoutBinding;

    return-object p0
.end method
