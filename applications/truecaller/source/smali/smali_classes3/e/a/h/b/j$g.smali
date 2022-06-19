.class public final Le/a/h/b/j$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/j;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/j;

.field public final synthetic b:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Le/a/h/b/j;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/j$g;->a:Le/a/h/b/j;

    iput-object p2, p0, Le/a/h/b/j$g;->b:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/h/b/j$g;->a:Le/a/h/b/j;

    .line 2
    iget-object v0, p1, Le/a/h/b/j;->b:Le/a/h/b/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Le/a/h/b/j;->h:Le/a/h3/b/a;

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p0, Le/a/h/b/j$g;->b:Landroid/view/MenuItem;

    const-string v2, "item"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const-string v2, "item.actionView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Le/a/h/b/v;->vt(Le/a/h3/b/a;Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "clipboardDataManager"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "dialerView"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
