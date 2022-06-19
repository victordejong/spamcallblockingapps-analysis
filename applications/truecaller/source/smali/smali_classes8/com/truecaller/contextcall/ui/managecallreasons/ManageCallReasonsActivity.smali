.class public final Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;
.super Le/a/o/a/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/MenuItem;",
        "menuItem",
        "",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;",
        "behaviour",
        "pa",
        "(Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;)V",
        "d",
        "Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;",
        "homeButtonBehaviour",
        "Le/a/o/o/a;",
        "e",
        "Ls1/g;",
        "getBinding",
        "()Le/a/o/o/a;",
        "binding",
        "<init>",
        "()V",
        "f",
        "b",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final f:Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$b;


# instance fields
.field public d:Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;

.field public final e:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->f:Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/o/a/c/f;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;->GO_BACK:Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;

    iput-object v0, p0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->d:Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;

    .line 3
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    iget-object v1, p0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o/o/a;

    const-string v2, "binding"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v1, Le/a/o/o/a;->a:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p0, v1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o/o/a;

    .line 8
    iget-object v1, v1, Le/a/o/o/a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 9
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ln3/b/a/a;->n(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 11
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 12
    sget p1, Lcom/truecaller/contextcall/R$id;->container:I

    sget-object v1, Le/a/o/a/c/a;->j:Le/a/o/a/c/a$c;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Le/a/o/a/c/a;

    invoke-direct {v1}, Le/a/o/a/c/a;-><init>()V

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, p1, v1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 16
    invoke-virtual {v0}, Ln3/r/a/a;->g()I

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->d:Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 5
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final pa(Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;)V
    .locals 3

    const-string v0, "behaviour"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/truecaller/contextcall/R$drawable;->ic_action_close:I

    .line 3
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p0, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ln3/b/a/a;->t(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/b/a/a;->t(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/truecaller/contextcall/ui/managecallreasons/ManageCallReasonsActivity;->d:Lcom/truecaller/contextcall/ui/managecallreasons/HomeButtonBehaviour;

    return-void
.end method
