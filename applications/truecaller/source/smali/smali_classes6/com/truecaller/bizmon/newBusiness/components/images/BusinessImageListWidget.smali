.class public final Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001fJ-\u0010\n\u001a\u00020\t2\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0015\u001a\u00020\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u001a\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "",
        "imageUrls",
        "Le/f/a/i;",
        "requestManager",
        "Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;",
        "listener",
        "Ls1/s;",
        "f1",
        "(Ljava/util/List;Le/f/a/i;Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;)V",
        "Le/a/b/a/b/j/c;",
        "v",
        "Le/a/b/a/b/j/c;",
        "businessImageListAdapter",
        "Le/a/b/m/f1;",
        "w",
        "Ls1/g;",
        "getBinding",
        "()Le/a/b/m/f1;",
        "binding",
        "",
        "t",
        "getMaxImageCount",
        "()I",
        "maxImageCount",
        "",
        "u",
        "[Ljava/lang/String;",
        "imageUrlsArray",
        "a",
        "bizmon_release"
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

.field public final u:[Ljava/lang/String;

.field public v:Le/a/b/a/b/j/c;

.field public final w:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Le/a/b/a/b/j/e;

    invoke-direct {p2, p1}, Le/a/b/a/b/j/e;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->t:Ls1/g;

    .line 4
    invoke-direct {p0}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->getMaxImageCount()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->u:[Ljava/lang/String;

    .line 5
    new-instance p2, Le/a/b/a/b/j/d;

    invoke-direct {p2, p0}, Le/a/b/a/b/j/d;-><init>(Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->w:Ls1/g;

    const/4 p2, 0x1

    .line 6
    invoke-static {p1, p2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p2

    sget v1, Lcom/truecaller/bizmon/R$layout;->layout_image_list_widget:I

    invoke-static {p2, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    invoke-direct {p0}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->getBinding()Le/a/b/m/f1;

    move-result-object p2

    iget-object p2, p2, Le/a/b/m/f1;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.imageList"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-void
.end method

.method private final getBinding()Le/a/b/m/f1;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/m/f1;

    return-object v0
.end method

.method private final getMaxImageCount()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final f1(Ljava/util/List;Le/f/a/i;Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/f/a/i;",
            "Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;",
            ")V"
        }
    .end annotation

    const-string v0, "requestManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->v:Le/a/b/a/b/j/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->getMaxImageCount()I

    move-result v0

    invoke-static {p1, v0}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    if-ltz v2, :cond_0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->u:[Ljava/lang/String;

    aput-object v0, v4, v2

    move v2, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ls1/u/i;->N0()V

    throw v1

    .line 6
    :cond_1
    new-instance p1, Le/a/b/a/b/j/c;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->u:[Ljava/lang/String;

    new-instance v1, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$b;

    invoke-direct {v1, p3}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$b;-><init>(Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;)V

    new-instance v2, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$c;

    invoke-direct {v2, p3}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$c;-><init>(Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;)V

    invoke-direct {p1, v0, p2, v1, v2}, Le/a/b/a/b/j/c;-><init>([Ljava/lang/String;Le/f/a/i;Ls1/z/b/l;Ls1/z/b/l;)V

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->v:Le/a/b/a/b/j/c;

    .line 7
    invoke-direct {p0}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->getBinding()Le/a/b/m/f1;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/f1;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "binding.imageList"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->v:Le/a/b/a/b/j/c;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->getMaxImageCount()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 9
    invoke-direct {p0}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->getMaxImageCount()I

    move-result p3

    invoke-static {p1, p3}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p3

    .line 10
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v0, v2

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_3

    check-cast v3, Ljava/lang/String;

    .line 11
    aput-object v3, p2, v0

    move v0, v4

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Ls1/u/i;->N0()V

    throw v1

    .line 13
    :cond_4
    iget-object p3, p0, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->v:Le/a/b/a/b/j/c;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p2}, Le/a/b/a/b/j/c;->g([Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;->getBinding()Le/a/b/m/f1;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/f1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_6
    :goto_2
    return-void
.end method
