.class public final Le/a/b0/a/c0/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/g/x/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/c0/b;->b(Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b0/a/c0/b;

.field public final synthetic b:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Le/a/b0/a/c0/b;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/c0/b$f;->a:Le/a/b0/a/c0/b;

    iput-object p2, p0, Le/a/b0/a/c0/b$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 8

    const-string v0, "tab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/a/c0/b$f;->a:Le/a/b0/a/c0/b;

    .line 2
    iget-object v0, v0, Le/a/b0/a/c0/b;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/b0/a/c0/b$d;

    .line 4
    new-instance v7, Le/a/b0/a/c0/a;

    iget-object v0, p0, Le/a/b0/a/c0/b$f;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pager.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v7, v0, v1, v2, v3}, Le/a/b0/a/c0/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    iget-object v1, p2, Le/a/b0/a/c0/b$d;->a:Ljava/lang/String;

    .line 6
    iget v2, p2, Le/a/b0/a/c0/b$d;->b:I

    .line 7
    iget v3, p2, Le/a/b0/a/c0/b$d;->c:I

    .line 8
    iget v4, p2, Le/a/b0/a/c0/b$d;->d:I

    .line 9
    iget v5, p2, Le/a/b0/a/c0/b$d;->e:I

    .line 10
    iget-object v6, p2, Le/a/b0/a/c0/b$d;->f:Ljava/lang/String;

    move-object v0, v7

    .line 11
    invoke-virtual/range {v0 .. v6}, Le/a/b0/a/c0/a;->h1(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 12
    iput-object v7, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->c()V

    return-void
.end method
