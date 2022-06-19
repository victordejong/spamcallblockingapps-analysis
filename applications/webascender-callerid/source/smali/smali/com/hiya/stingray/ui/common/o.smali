.class public Lcom/hiya/stingray/ui/common/o;
.super Lcom/hiya/stingray/ui/common/p;
.source "SourceFile"


# instance fields
.field private e:Z

.field private f:Z

.field private g:Lcom/hiya/stingray/ui/common/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/hiya/stingray/ui/common/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/o;->e:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/o;->f:Z

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/common/o;->g:Lcom/hiya/stingray/ui/common/n;

    return-void
.end method


# virtual methods
.method protected d(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/o;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/p;->d(Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/o;->g:Lcom/hiya/stingray/ui/common/n;

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/ui/common/n;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/ui/common/o;->g:Lcom/hiya/stingray/ui/common/n;

    add-int/2addr p2, v1

    .line 4
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/common/n;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected f(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/o;->g:Lcom/hiya/stingray/ui/common/n;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/common/n;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/hiya/stingray/ui/common/o;->e:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/o;->f:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/o;->e:Z

    return-void
.end method
