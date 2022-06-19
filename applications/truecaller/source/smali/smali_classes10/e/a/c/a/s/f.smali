.class public final Le/a/c/a/s/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/g/x/e$b;


# instance fields
.field public final synthetic a:Le/a/c/a/s/d;

.field public final synthetic b:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Le/a/c/a/s/d;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/s/f;->a:Le/a/c/a/s/d;

    iput-object p2, p0, Le/a/c/a/s/f;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 5

    const-string v0, "tab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/a/s/f;->a:Le/a/c/a/s/d;

    .line 2
    iget-object v0, v0, Le/a/c/a/s/d;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/a/s/d$d;

    .line 4
    new-instance v0, Le/a/c/a/s/c;

    iget-object v1, p0, Le/a/c/a/s/f;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pager.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/c/a/s/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    iget-object v1, p2, Le/a/c/a/s/d$d;->a:Le/a/c/a/s/d$c;

    .line 6
    invoke-interface {v1}, Le/a/c/a/s/d$c;->title()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget v2, p2, Le/a/c/a/s/d$d;->b:I

    .line 8
    iget v3, p2, Le/a/c/a/s/d$d;->c:I

    .line 9
    iget-object p2, p2, Le/a/c/a/s/d$d;->a:Le/a/c/a/s/d$c;

    .line 10
    invoke-interface {p2}, Le/a/c/a/s/d$c;->tag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, v3, p2}, Le/a/c/a/s/c;->f1(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    iput-object v0, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->c()V

    return-void
.end method
