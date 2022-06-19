.class public final Le/a/b0/a/c0/b$e;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/c0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/google/android/material/tabs/TabLayout;

.field public final synthetic c:Le/a/b0/a/c0/b;


# direct methods
.method public constructor <init>(Le/a/b0/a/c0/b;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/tabs/TabLayout;",
            ")V"
        }
    .end annotation

    const-string v0, "tabs"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b0/a/c0/b$e;->c:Le/a/b0/a/c0/b;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    iput-object p2, p0, Le/a/b0/a/c0/b$e;->b:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/b0/a/c0/b$e;->a:I

    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/a/c0/b$e;->b:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Le/a/b0/a/c0/b$e;->c:Le/a/b0/a/c0/b;

    .line 2
    iget-object v1, v1, Le/a/b0/a/c0/b;->b:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/a/c0/b$d;

    .line 4
    iget v1, v1, Le/a/b0/a/c0/b$d;->e:I

    .line 5
    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 6
    iget-object v1, p0, Le/a/b0/a/c0/b$e;->b:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 7
    iget-object v0, p0, Le/a/b0/a/c0/b$e;->c:Le/a/b0/a/c0/b;

    .line 8
    iget v1, v0, Le/a/b0/a/c0/b;->g:I

    .line 9
    iput p1, v0, Le/a/b0/a/c0/b;->g:I

    .line 10
    iget-object v0, v0, Le/a/b0/a/c0/b;->a:Le/a/b0/a/c0/b$c;

    .line 11
    iget-object v0, v0, Le/a/b0/a/c0/b$c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/c0/b$a;

    .line 12
    iget-object v0, v0, Le/a/b0/a/c0/b$a;->b:Landroidx/fragment/app/Fragment;

    .line 13
    instance-of v0, v0, Le/a/b0/a/c0/b$b;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Le/a/b0/a/c0/b$e;->c:Le/a/b0/a/c0/b;

    .line 15
    iget-object v1, v0, Le/a/b0/a/c0/b;->a:Le/a/b0/a/c0/b$c;

    .line 16
    iget v0, v0, Le/a/b0/a/c0/b;->g:I

    .line 17
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Le/a/b0/a/c0/b$e;->b:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    check-cast v0, Le/a/b0/a/c0/a;

    if-eqz v0, :cond_3

    .line 21
    iget-object v1, p0, Le/a/b0/a/c0/b$e;->c:Le/a/b0/a/c0/b;

    .line 22
    iget-object v1, v1, Le/a/b0/a/c0/b;->f:Ls1/z/b/p;

    if-eqz v1, :cond_2

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 24
    :cond_2
    iget-object v0, p0, Le/a/b0/a/c0/b$e;->c:Le/a/b0/a/c0/b;

    .line 25
    iget-object v0, v0, Le/a/b0/a/c0/b;->b:Ljava/util/List;

    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/a/c0/b$d;

    .line 27
    iget-object v0, v0, Le/a/b0/a/c0/b$d;->h:Ls1/z/b/l;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Le/a/b0/a/c0/b$e;->c:Le/a/b0/a/c0/b;

    .line 30
    iget-object v0, v0, Le/a/b0/a/c0/b;->a:Le/a/b0/a/c0/b$c;

    .line 31
    iget-object v0, v0, Le/a/b0/a/c0/b$c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/a/c0/b$a;

    .line 32
    iget-object p1, p1, Le/a/b0/a/c0/b$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    return-void
.end method
