.class public Le/m/a/g/o/g$h;
.super Ln3/b0/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic f:Le/m/a/g/o/g;


# direct methods
.method public constructor <init>(Le/m/a/g/o/g;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/o/g$h;->f:Le/m/a/g/o/g;

    .line 2
    invoke-direct {p0, p2}, Ln3/b0/a/w;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Ln3/k/i/f0/b;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Ln3/b0/a/w;->d(Landroid/view/View;Ln3/k/i/f0/b;)V

    .line 2
    iget-object p1, p0, Le/m/a/g/o/g$h;->f:Le/m/a/g/o/g;

    iget-object p1, p1, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    .line 3
    iget-object v0, p1, Le/m/a/g/o/g$c;->d:Le/m/a/g/o/g;

    iget-object v0, v0, Le/m/a/g/o/g;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p1, Le/m/a/g/o/g$c;->d:Le/m/a/g/o/g;

    iget-object v3, v3, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    invoke-virtual {v3}, Le/m/a/g/o/g$c;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    iget-object v3, p1, Le/m/a/g/o/g$c;->d:Le/m/a/g/o/g;

    iget-object v3, v3, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    invoke-virtual {v3, v2}, Le/m/a/g/o/g$c;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ln3/k/i/f0/b$b;

    invoke-static {v0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Ln3/k/i/f0/b$b;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p2, p1}, Ln3/k/i/f0/b;->n(Ljava/lang/Object;)V

    return-void
.end method
