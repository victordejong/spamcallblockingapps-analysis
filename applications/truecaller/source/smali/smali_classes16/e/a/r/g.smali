.class public Le/a/r/g;
.super Le/a/r/t/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/g$a;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r/t/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final RA(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget v1, Le/a/n5/b;->b:I

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Le/a/n5/b;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EntryPointAccessors.from\u2026GCEntryPoint::class.java)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/n5/b;

    .line 5
    invoke-interface {v0}, Le/a/n5/b;->R()Le/a/n5/c;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/n5/c;->b(Z)V

    .line 6
    iget-object p1, p0, Le/a/r/t/e;->f:Le/a/p5/a0;

    invoke-interface {p1}, Le/a/p5/a0;->k()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Page_DrawPermission"

    .line 8
    invoke-virtual {p1, v1, v0}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r/t/c;->ra()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/truecaller/wizard/R$id;->deny_button:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Le/a/r/g;->RA(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/truecaller/wizard/R$id;->allow_button:I

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Le/a/r/t/e;->f:Le/a/p5/a0;

    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Le/a/r/g;->RA(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0, v0, v2, v1}, Le/a/p5/s0/g;->d1(Landroidx/fragment/app/Fragment;Ljava/lang/String;IZ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/truecaller/wizard/R$layout;->wizard_view_access_contacts:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    .line 3
    iget-object p1, p0, Le/a/r/t/e;->f:Le/a/p5/a0;

    const-string p2, "android.permission.READ_CONTACTS"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Le/a/r/g;->RA(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/truecaller/wizard/R$id;->allow_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 3
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p2, Lcom/truecaller/wizard/R$id;->deny_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 5
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p2, Lcom/truecaller/wizard/R$id;->details:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method
