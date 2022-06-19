.class public final Le/a/a/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Le/a/a/d/b;


# direct methods
.method public constructor <init>(Le/a/a/d/b;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/i;->a:Le/a/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0c37

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/d/i;->a:Le/a/a/d/b;

    .line 3
    iget-object p1, p1, Le/a/a/d/b;->d:Le/a/a/d/p;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Le/a/a/d/p;->Oj()Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    const-string p1, "groupPresenter"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
