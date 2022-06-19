.class final Lcom/hiya/stingray/ui/local/MainActivity$i;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/MainActivity;->k0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/MainActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Lcom/hiya/stingray/ui/local/MainActivity$c;->a()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/hiya/stingray/ui/local/settings/n;

    invoke-static {v4, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ne p2, v3, :cond_2

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->W(Lcom/hiya/stingray/ui/local/MainActivity;)V

    :cond_2
    if-ne p1, p2, :cond_3

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->P(Lcom/hiya/stingray/ui/local/MainActivity;)Lcom/hiya/stingray/ui/local/MainActivity$b;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    sget v2, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    const-string v2, "pager"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/MainActivity$b;->u(I)Lcom/hiya/stingray/ui/local/common/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/g;->k1()V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->P(Lcom/hiya/stingray/ui/local/MainActivity;)Lcom/hiya/stingray/ui/local/MainActivity$b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/ui/local/MainActivity$b;->v(I)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    sget v1, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    invoke-virtual {v0, p2, v2}, Landroidx/viewpager/widget/ViewPager;->N(IZ)V

    .line 9
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/MainActivity;->Y()Lcom/hiya/stingray/manager/e1;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/local/MainActivity$c;->a()Ljava/lang/Class;

    move-result-object p2

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity$i;->f:Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-static {v1}, Lcom/hiya/stingray/ui/local/MainActivity;->P(Lcom/hiya/stingray/ui/local/MainActivity;)Lcom/hiya/stingray/ui/local/MainActivity$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/ui/local/MainActivity$b;->u(I)Lcom/hiya/stingray/ui/local/common/g;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/common/g;->h1()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v1

    :goto_3
    instance-of v2, p1, Lcom/hiya/stingray/ui/common/i;

    if-nez v2, :cond_6

    move-object p1, v1

    :cond_6
    check-cast p1, Lcom/hiya/stingray/ui/common/i;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/i;->c1()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-static {v0, p2, v1}, Lcom/hiya/stingray/util/g;->d(Lcom/hiya/stingray/manager/e1;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/local/MainActivity$i;->a(II)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
