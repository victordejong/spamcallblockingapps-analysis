.class public final Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;
.super Le/a/o/a/b/i;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/b/f;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\'\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001d\u0010&\u001a\u00020!8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;",
        "Ln3/b/a/h;",
        "Le/a/o/a/b/f;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "Le/a/o/a/b/j;",
        "contacts",
        "g4",
        "(Ljava/util/List;)V",
        "Landroid/view/MenuItem;",
        "menuItem",
        "",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "t",
        "()V",
        "onDestroy",
        "Le/a/o/a/b/a;",
        "f",
        "Le/a/o/a/b/a;",
        "contactsAdapter",
        "Le/a/o/a/b/e;",
        "d",
        "Le/a/o/a/b/e;",
        "getPresenter$context_call_release",
        "()Le/a/o/a/b/e;",
        "setPresenter$context_call_release",
        "(Le/a/o/a/b/e;)V",
        "presenter",
        "Le/a/o/o/c;",
        "e",
        "Ls1/g;",
        "pa",
        "()Le/a/o/o/c;",
        "binding",
        "<init>",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/o/a/b/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Ls1/g;

.field public final f:Le/a/o/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/o/a/b/i;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->e:Ls1/g;

    .line 4
    new-instance v0, Le/a/o/a/b/a;

    invoke-direct {v0}, Le/a/o/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->f:Le/a/o/a/b/a;

    return-void
.end method


# virtual methods
.method public g4(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/o/a/b/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contacts"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->f:Le/a/o/a/b/a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/o/a/b/b;

    .line 4
    iget-object v2, v1, Le/a/o/a/b/a;->c:Ljava/util/List;

    .line 5
    invoke-direct {v0, v2, p1}, Le/a/o/a/b/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object v0

    const-string v2, "DiffUtil.calculateDiff(diffCallback)"

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, v1, Le/a/o/a/b/a;->c:Ljava/util/List;

    .line 9
    new-instance p1, Ln3/b0/a/b;

    invoke-direct {p1, v1}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v0, p1}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->pa()Le/a/o/o/c;

    move-result-object p1

    const-string v1, "binding"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Le/a/o/o/c;->a:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->pa()Le/a/o/o/c;

    move-result-object p1

    iget-object p1, p1, Le/a/o/o/c;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 7
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ln3/b/a/a;->n(Z)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->pa()Le/a/o/o/c;

    move-result-object p1

    iget-object p1, p1, Le/a/o/o/c;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 10
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    iget-object v1, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->f:Le/a/o/a/b/a;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 12
    new-instance v1, Ln3/b0/a/g;

    invoke-direct {v1}, Ln3/b0/a/g;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 13
    iget-object p1, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->f:Le/a/o/a/b/a;

    new-instance v1, Lg2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lg2;-><init>(ILjava/lang/Object;)V

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object v1, p1, Le/a/o/a/b/a;->a:Ls1/z/b/l;

    .line 16
    iget-object p1, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->f:Le/a/o/a/b/a;

    new-instance v1, Lg2;

    invoke-direct {v1, v0, p0}, Lg2;-><init>(ILjava/lang/Object;)V

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object v1, p1, Le/a/o/a/b/a;->b:Ls1/z/b/l;

    .line 19
    iget-object p1, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->d:Le/a/o/a/b/e;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->d:Le/a/o/a/b/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final pa()Le/a/o/o/c;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contextcall/ui/hiddencontacts/HiddenContactsActivity;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/o/c;

    return-object v0
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
