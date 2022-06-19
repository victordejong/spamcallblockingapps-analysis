.class public final Le/a/e/b/d/a;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/d/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008)\u0010\u0019J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001cR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Le/a/e/b/d/a;",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/e/b/d/c;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "",
        "url",
        "b",
        "(Ljava/lang/String;)V",
        "F9",
        "()V",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "helpFaq",
        "helpSendFeedback",
        "c",
        "helpChatWithUs",
        "Le/a/e/b/d/b;",
        "d",
        "Le/a/e/b/d/b;",
        "OA",
        "()Le/a/e/b/d/b;",
        "setPresenter",
        "(Le/a/e/b/d/b;)V",
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
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Le/a/e/b/d/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public F9()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->FEEDBACK_FORM:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    invoke-static {v0, v1}, Lcom/truecaller/ui/SingleActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SingleActivity.buildInte\u2026mentSingle.FEEDBACK_FORM)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final OA()Le/a/e/b/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/d/a;->d:Le/a/e/b/d/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.ui.settings.SettingsActivity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ui/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/truecaller/ui/settings/SettingsActivity;->wa()Le/a/e/b/e;

    move-result-object p1

    check-cast p1, Le/a/t1$s;

    .line 3
    iget-object p1, p1, Le/a/t1$s;->w:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/e/b/d/b;

    .line 4
    iput-object p1, p0, Le/a/e/b/d/a;->d:Le/a/e/b/d/b;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0447

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0f80

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/b/d/a;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v0, 0x7f08063d

    .line 3
    invoke-static {p2, v0}, Le/a/e/a2;->a(Landroid/widget/TextView;I)V

    .line 4
    :cond_0
    iget-object p2, p0, Le/a/e/b/d/a;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    new-instance v0, Le/a/e/b/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/a/e/b/d/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x7f0a0f81

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/e/b/d/a;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const v0, 0x7f08063e

    .line 6
    invoke-static {p2, v0}, Le/a/e/a2;->a(Landroid/widget/TextView;I)V

    .line 7
    :cond_2
    iget-object p2, p0, Le/a/e/b/d/a;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    new-instance v0, Le/a/e/b/d/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/e/b/d/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const p2, 0x7f0a0f7e

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/e/b/d/a;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const p2, 0x7f08063c

    .line 9
    invoke-static {p1, p2}, Le/a/e/a2;->a(Landroid/widget/TextView;I)V

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/e/b/d/a;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    new-instance p2, Le/a/e/b/d/a$a;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Le/a/e/b/d/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method
