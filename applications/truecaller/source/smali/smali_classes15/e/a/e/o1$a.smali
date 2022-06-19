.class public Le/a/e/o1$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/o1;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic b:Le/a/e/o1;


# direct methods
.method public constructor <init>(Le/a/e/o1;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/o1$a;->b:Le/a/e/o1;

    iput-object p2, p0, Le/a/e/o1$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/o1$a;->b:Le/a/e/o1;

    .line 2
    iget-object v0, v0, Le/a/e/o1;->g:Le/a/e/o1$b;

    .line 3
    invoke-virtual {v0, p1}, Le/a/e/o1$b;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/e/o1$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
