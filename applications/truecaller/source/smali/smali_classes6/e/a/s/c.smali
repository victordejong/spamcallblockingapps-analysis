.class public final Le/a/s/c;
.super Le/a/s/j;
.source "SourceFile"

# interfaces
.implements Le/a/s/f;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008!\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR.\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0011\u0010\u0012\u0012\u0004\u0008\u0017\u0010\t\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Le/a/s/c;",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/s/f;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "pv",
        "()V",
        "p2",
        "onResume",
        "onDestroyView",
        "fragment",
        "QA",
        "(Landroidx/fragment/app/Fragment;)V",
        "Ljavax/inject/Provider;",
        "f",
        "Ljavax/inject/Provider;",
        "getCallAssistantCallScreeningFragment",
        "()Ljavax/inject/Provider;",
        "setCallAssistantCallScreeningFragment",
        "(Ljavax/inject/Provider;)V",
        "getCallAssistantCallScreeningFragment$annotations",
        "callAssistantCallScreeningFragment",
        "Le/a/s/g;",
        "e",
        "Le/a/s/g;",
        "getPresenter",
        "()Le/a/s/g;",
        "setPresenter",
        "(Le/a/s/g;)V",
        "presenter",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public e:Le/a/s/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0192

    .line 1
    invoke-direct {p0, v0}, Le/a/s/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final QA(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v1, Ln3/r/a/f0;->p:Z

    const v0, 0x7f0a07e6

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v0, p1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 5
    invoke-virtual {v1}, Ln3/r/a/a;->g()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/s/c;->e:Le/a/s/g;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "presenterView"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Le/a/s/g;->Hj()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/c;->e:Le/a/s/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/s/c;->e:Le/a/s/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/s/g;->Hj()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public p2()V
    .locals 1

    .line 1
    new-instance v0, Le/a/s/a/a;

    invoke-direct {v0}, Le/a/s/a/a;-><init>()V

    invoke-virtual {p0, v0}, Le/a/s/c;->QA(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public pv()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/c;->f:Ljavax/inject/Provider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "callAssistantCallScreeningFragment.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Le/a/s/c;->QA(Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_0
    const-string v0, "callAssistantCallScreeningFragment"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
