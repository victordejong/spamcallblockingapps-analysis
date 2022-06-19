.class public final Le/m/a/g/x/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/g/x/e$a;,
        Le/m/a/g/x/e$d;,
        Le/m/a/g/x/e$c;,
        Le/m/a/g/x/e$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/tabs/TabLayout;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:Z

.field public final d:Le/m/a/g/x/e$b;

.field public e:Landroidx/recyclerview/widget/RecyclerView$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Le/m/a/g/x/e$c;

.field public h:Lcom/google/android/material/tabs/TabLayout$d;

.field public i:Landroidx/recyclerview/widget/RecyclerView$i;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Le/m/a/g/x/e$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 3
    iput-object p2, p0, Le/m/a/g/x/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le/m/a/g/x/e;->c:Z

    .line 5
    iput-object p3, p0, Le/m/a/g/x/e;->d:Le/m/a/g/x/e$b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLe/m/a/g/x/e$b;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    iput-object p2, p0, Le/m/a/g/x/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    iput-boolean p3, p0, Le/m/a/g/x/e;->c:Z

    .line 10
    iput-object p4, p0, Le/m/a/g/x/e;->d:Le/m/a/g/x/e$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/g/x/e;->f:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/m/a/g/x/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    iput-object v0, p0, Le/m/a/g/x/e;->e:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/m/a/g/x/e;->f:Z

    .line 4
    new-instance v1, Le/m/a/g/x/e$c;

    iget-object v2, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {v1, v2}, Le/m/a/g/x/e$c;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v1, p0, Le/m/a/g/x/e;->g:Le/m/a/g/x/e$c;

    .line 5
    iget-object v2, p0, Le/m/a/g/x/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    iget-object v2, v2, Landroidx/viewpager2/widget/ViewPager2;->c:Ln3/l0/b/c;

    .line 7
    iget-object v2, v2, Ln3/l0/b/c;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Le/m/a/g/x/e$d;

    iget-object v2, p0, Le/m/a/g/x/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v1, v2, v0}, Le/m/a/g/x/e$d;-><init>(Landroidx/viewpager2/widget/ViewPager2;Z)V

    iput-object v1, p0, Le/m/a/g/x/e;->h:Lcom/google/android/material/tabs/TabLayout$d;

    .line 9
    iget-object v2, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    iget-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget-boolean v1, p0, Le/m/a/g/x/e;->c:Z

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Le/m/a/g/x/e$a;

    invoke-direct {v1, p0}, Le/m/a/g/x/e$a;-><init>(Le/m/a/g/x/e;)V

    iput-object v1, p0, Le/m/a/g/x/e;->i:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 14
    iget-object v2, p0, Le/m/a/g/x/e;->e:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Le/m/a/g/x/e;->b()V

    .line 16
    iget-object v1, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Le/m/a/g/x/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v2, v3, v0, v0}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZ)V

    return-void

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator is already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->k()V

    .line 2
    iget-object v0, p0, Le/m/a/g/x/e;->e:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    iget-object v3, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->i()Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v3

    .line 5
    iget-object v4, p0, Le/m/a/g/x/e;->d:Le/m/a/g/x/e$b;

    invoke-interface {v4, v3, v2}, Le/m/a/g/x/e$b;->a(Lcom/google/android/material/tabs/TabLayout$g;I)V

    .line 6
    iget-object v4, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 8
    iget-object v2, p0, Le/m/a/g/x/e;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9
    iget-object v2, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 10
    iget-object v2, p0, Le/m/a/g/x/e;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    .line 11
    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->l(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    :cond_1
    return-void
.end method
