.class public final Le/a/b0/a/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/a/c0/b$c;,
        Le/a/b0/a/c0/b$e;,
        Le/a/b0/a/c0/b$d;,
        Le/a/b0/a/c0/b$a;,
        Le/a/b0/a/c0/b$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/b0/a/c0/b$c;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/a/c0/b$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/viewpager2/widget/ViewPager2;

.field public d:Lcom/google/android/material/tabs/TabLayout;

.field public e:Le/a/b0/a/c0/b$e;

.field public f:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "-",
            "Le/a/b0/a/c0/a;",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    const-string v0, "hostFragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Le/a/b0/a/c0/b;->h:Z

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Le/a/b0/a/c0/b;->b:Ljava/util/List;

    .line 3
    new-instance p2, Le/a/b0/a/c0/b$c;

    invoke-direct {p2, p0, p1}, Le/a/b0/a/c0/b$c;-><init>(Le/a/b0/a/c0/b;Landroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Le/a/b0/a/c0/b;->a:Le/a/b0/a/c0/b$c;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;ZI)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Le/a/b0/a/c0/b;-><init>(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method


# virtual methods
.method public final a(Le/a/b0/a/c0/b$d;)Le/a/b0/a/c0/b;
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/a/c0/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/b0/a/c0/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Le/a/b0/a/c0/b;->a:Le/a/b0/a/c0/b$c;

    .line 4
    iget-object p1, p1, Le/a/b0/a/c0/b$d;->g:Ls1/z/b/a;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fragmentBuilder"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Le/a/b0/a/c0/b$c;->i:Ljava/util/List;

    new-instance v2, Le/a/b0/a/c0/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Le/a/b0/a/c0/b$a;-><init>(Ls1/z/b/a;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Our Custom TabLayout doesn\'t support more than 4 tabs :)\nif you really want to add more than 3 tabs you will need to do some effort\nto support that and make sure that the animation\nis working as expected check onPageScrolled()"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 3

    const-string v0, "pager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabs"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Le/a/b0/a/c0/b;->d:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    iget-object v0, p0, Le/a/b0/a/c0/b;->a:Le/a/b0/a/c0/b$c;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iput-object p1, p0, Le/a/b0/a/c0/b;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 3
    new-instance v0, Le/a/b0/a/c0/b$e;

    invoke-direct {v0, p0, p2}, Le/a/b0/a/c0/b$e;-><init>(Le/a/b0/a/c0/b;Lcom/google/android/material/tabs/TabLayout;)V

    .line 4
    iget-object v1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:Ln3/l0/b/c;

    .line 5
    iget-object v1, v1, Ln3/l0/b/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, p0, Le/a/b0/a/c0/b;->e:Le/a/b0/a/c0/b$e;

    .line 7
    new-instance v0, Le/m/a/g/x/e;

    new-instance v1, Le/a/b0/a/c0/b$f;

    invoke-direct {v1, p0, p1}, Le/a/b0/a/c0/b$f;-><init>(Le/a/b0/a/c0/b;Landroidx/viewpager2/widget/ViewPager2;)V

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, v2, v1}, Le/m/a/g/x/e;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLe/m/a/g/x/e$b;)V

    .line 8
    invoke-virtual {v0}, Le/m/a/g/x/e;->a()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/a/c0/b;->e:Le/a/b0/a/c0/b$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/b0/a/c0/b;->c:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Landroidx/viewpager2/widget/ViewPager2;->c:Ln3/l0/b/c;

    .line 4
    iget-object v1, v1, Ln3/l0/b/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d(I)Le/a/b0/a/c0/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/a/c0/b;->d:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 3
    :goto_0
    instance-of v0, p1, Le/a/b0/a/c0/a;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    check-cast v1, Le/a/b0/a/c0/a;

    return-object v1
.end method

.method public final e(Ls1/z/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-",
            "Le/a/b0/a/c0/a;",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTabSelected"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b0/a/c0/b;->f:Ls1/z/b/p;

    return-void
.end method
