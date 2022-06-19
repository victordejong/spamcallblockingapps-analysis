.class public final Le/a/r/b/e;
.super Le/a/r/b/o;
.source "SourceFile"

# interfaces
.implements Le/a/r/b/g;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008-\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J-\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0005R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006."
    }
    d2 = {
        "Le/a/r/b/e;",
        "Le/a/r/t/e;",
        "Le/a/r/b/g;",
        "Ls1/s;",
        "K0",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "v",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "a0",
        "b0",
        "Le/a/r/b/i;",
        "i",
        "Le/a/r/b/i;",
        "getView",
        "()Le/a/r/b/i;",
        "setView",
        "(Le/a/r/b/i;)V",
        "view",
        "Le/a/p5/a0;",
        "k",
        "Le/a/p5/a0;",
        "getPermissionUtils",
        "()Le/a/p5/a0;",
        "setPermissionUtils",
        "(Le/a/p5/a0;)V",
        "permissionUtils",
        "Le/a/r/g$a;",
        "j",
        "Le/a/r/g$a;",
        "getContactsAccessHelper",
        "()Le/a/r/g$a;",
        "setContactsAccessHelper",
        "(Le/a/r/g$a;)V",
        "contactsAccessHelper",
        "<init>",
        "wizard-tc_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public i:Le/a/r/b/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Le/a/r/g$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Le/a/p5/a0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r/b/e;->j:Le/a/r/g$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Le/a/r/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    const-string v2, "Page_AccessContacts"

    .line 3
    invoke-virtual {v0, v2, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    .line 5
    iget-object v0, v0, Le/a/r/t/c;->e:Ljava/util/Map;

    const-string v2, "Page_DrawPermission"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Le/a/r/b/e;->k:Le/a/p5/a0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/p5/a0;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v0, "permissionUtils"

    .line 9
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r/t/c;->ra()V

    :goto_0
    return-void

    :cond_3
    const-string v0, "contactsAccessHelper"

    .line 11
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public a0()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/a/r/t/e;->a0()V

    return-void
.end method

.method public b0()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/a/r/t/e;->b0()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Le/a/r/b/e;->i:Le/a/r/b/i;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Le/a/r/b/i;->getAdapter()Le/a/r/b/j;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p3, p1, p2, v0, v1}, Le/a/r/b/j;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "view"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/r/t/e;->onDestroyView()V

    .line 2
    iget-object v0, p0, Le/a/r/b/e;->i:Le/a/r/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r/b/i;->getAdapter()Le/a/r/b/j;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/b/j;->d()V

    return-void

    :cond_0
    const-string v0, "view"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/r/b/e;->i:Le/a/r/b/i;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/r/b/i;->getAdapter()Le/a/r/b/j;

    move-result-object p1

    invoke-interface {p1}, Le/a/r/b/j;->e()V

    return-void

    :cond_0
    const-string p1, "view"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
