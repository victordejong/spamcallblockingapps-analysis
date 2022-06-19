.class public final Le/a/a0/a/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a0/a/a;->Bn(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a0/a/a;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a0/a/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a0/a/a$i;->a:Le/a/a0/a/a;

    iput-object p2, p0, Le/a/a0/a/a$i;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a0/a/a$i;->a:Le/a/a0/a/a;

    .line 2
    iget-object v0, v0, Le/a/a0/a/a;->C:Le/a/a0/a/f;

    if-eqz v0, :cond_1

    const-string v0, "it"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a0/a/a$i;->b:Ljava/util/List;

    iget-object v1, p0, Le/a/a0/a/a$i;->a:Le/a/a0/a/a;

    const-string v2, "anchorView"

    .line 4
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "otherCategories"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "clickListener"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anchorView.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v2

    .line 7
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-direct {v4, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 8
    new-instance p1, Le/a/a0/a/g;

    invoke-direct {p1, v1, v0}, Le/a/a0/a/g;-><init>(Le/a/a0/a/j;Ljava/util/List;)V

    invoke-virtual {v4, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a0/a/m;

    .line 10
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 11
    iget-wide v5, v1, Le/a/a0/a/m;->a:J

    long-to-int v5, v5

    .line 12
    iget-object v1, v1, Le/a/a0/a/m;->b:Ljava/lang/String;

    .line 13
    invoke-interface {v2, v3, v5, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    return-void

    :cond_1
    const-string p1, "popupMenu"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
