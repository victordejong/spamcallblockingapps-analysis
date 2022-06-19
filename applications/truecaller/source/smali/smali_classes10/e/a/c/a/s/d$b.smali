.class public final Le/a/c/a/s/d$b;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final c:Lcom/google/android/material/tabs/TabLayout;

.field public final synthetic d:Le/a/c/a/s/d;


# direct methods
.method public constructor <init>(Le/a/c/a/s/d;Lcom/google/android/material/tabs/TabLayout;)V
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
    iput-object p1, p0, Le/a/c/a/s/d$b;->d:Le/a/c/a/s/d;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    iput-object p2, p0, Le/a/c/a/s/d$b;->c:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/c/a/s/d$b;->b:I

    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/s/d$b;->d:Le/a/c/a/s/d;

    .line 2
    iget-object v0, v0, Le/a/c/a/s/d;->b:Ljava/util/List;

    .line 3
    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/c/a/s/d$b;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Le/a/c/a/s/d$b;->d:Le/a/c/a/s/d;

    .line 5
    iget-object v1, v1, Le/a/c/a/s/d;->b:Ljava/util/List;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a/s/d$d;

    .line 7
    iget v1, v1, Le/a/c/a/s/d$d;->c:I

    .line 8
    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 9
    iget-object v1, p0, Le/a/c/a/s/d$b;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 10
    iput p1, p0, Le/a/c/a/s/d$b;->a:I

    .line 11
    iget-object v0, p0, Le/a/c/a/s/d$b;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    check-cast v0, Le/a/c/a/s/c;

    if-eqz v0, :cond_3

    .line 14
    iget-object v1, p0, Le/a/c/a/s/d$b;->d:Le/a/c/a/s/d;

    .line 15
    iget-object v1, v1, Le/a/c/a/s/d;->c:Ls1/z/b/p;

    if-eqz v1, :cond_2

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 17
    :cond_2
    iget-object v0, p0, Le/a/c/a/s/d$b;->d:Le/a/c/a/s/d;

    .line 18
    iget-object v0, v0, Le/a/c/a/s/d;->b:Ljava/util/List;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/s/d$d;

    .line 20
    iget-object v0, v0, Le/a/c/a/s/d$d;->e:Ls1/z/b/l;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Le/a/c/a/s/d$b;->d:Le/a/c/a/s/d;

    .line 23
    iget-object v0, v0, Le/a/c/a/s/d;->b:Ljava/util/List;

    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/s/d$d;

    .line 25
    iget-object p1, p1, Le/a/c/a/s/d$d;->d:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    return-void
.end method
