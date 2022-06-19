.class public Lcom/truecaller/ui/SingleActivity;
.super Le/a/e/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/SingleActivity$FragmentSingle;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public d:Lcom/truecaller/ui/SingleActivity$FragmentSingle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/w0;-><init>()V

    return-void
.end method

.method public static ua(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/truecaller/ui/SingleActivity;->va(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static va(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/ui/SingleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ARG_FRAGMENT"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "ARG_ACTIONBAR_OVERLAY"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ARG_ACTIONBAR_OVERLAY"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v3, "ARG_FRAGMENT"

    .line 3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->valueOf(Ljava/lang/String;)Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    move-result-object v4

    iput-object v4, p0, Lcom/truecaller/ui/SingleActivity;->d:Lcom/truecaller/ui/SingleActivity$FragmentSingle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/truecaller/ui/SingleActivity;->d:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    if-nez v3, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid intent, no fragment type, intent="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    invoke-super {p0, v2}, Le/a/e/w0;->onCreate(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const v3, 0x7f0d04fb

    if-eqz v1, :cond_2

    const v3, 0x7f0d04ff

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/ui/SingleActivity;->wa()Z

    move-result v1

    invoke-static {p0, v1}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 11
    invoke-super {p0, p1}, Le/a/e/w0;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0, v3}, Ln3/b/a/h;->setContentView(I)V

    const v1, 0x7f0a1270

    .line 13
    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0, v1}, Le/a/e/w0;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_3
    const/4 v1, 0x1

    if-nez p1, :cond_a

    .line 15
    iget-object p1, p0, Lcom/truecaller/ui/SingleActivity;->d:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    const/4 v3, 0x3

    if-eq p1, v3, :cond_6

    const/4 v3, 0x4

    if-eq p1, v3, :cond_5

    const/4 v3, 0x5

    if-eq p1, v3, :cond_4

    move-object p1, v2

    goto :goto_1

    .line 17
    :cond_4
    new-instance p1, Le/a/e/o1;

    invoke-direct {p1}, Le/a/e/o1;-><init>()V

    goto :goto_1

    .line 18
    :cond_5
    new-instance p1, Le/a/h/c/g;

    invoke-direct {p1}, Le/a/h/c/g;-><init>()V

    goto :goto_1

    .line 19
    :cond_6
    new-instance p1, Le/a/e/c/l1;

    invoke-direct {p1}, Le/a/e/c/l1;-><init>()V

    goto :goto_1

    .line 20
    :cond_7
    new-instance p1, Le/a/i4/y/d;

    invoke-direct {p1}, Le/a/i4/y/d;-><init>()V

    goto :goto_1

    .line 21
    :cond_8
    new-instance p1, Le/a/e/v0;

    invoke-direct {p1}, Le/a/e/v0;-><init>()V

    goto :goto_1

    .line 22
    :cond_9
    new-instance p1, Le/a/e/j1;

    invoke-direct {p1}, Le/a/e/j1;-><init>()V

    .line 23
    :goto_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0, p1, v2}, Le/a/e/w0;->sa(Le/a/e/x0;Ljava/lang/String;)V

    .line 25
    :cond_a
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 26
    invoke-virtual {p1, v1}, Ln3/b/a/a;->n(Z)V

    :cond_b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/e/w0;->onBackPressed()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    return-void
.end method

.method public onSupportActionModeStarted(Ln3/b/e/a;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Le/a/e/w0;->onSupportActionModeStarted(Ln3/b/e/a;)V

    .line 2
    invoke-virtual {p1}, Ln3/b/e/a;->e()Landroid/view/Menu;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0606cc

    .line 5
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {p0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 7
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 8
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pa()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/SingleActivity;->wa()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f04068f

    goto :goto_0

    :cond_0
    const v0, 0x7f040729

    :goto_0
    return v0
.end method

.method public final wa()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/SingleActivity;->d:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    sget-object v1, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->NOTIFICATION_MESSAGES:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->NOTIFICATIONS:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->FEEDBACK_FORM:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->SPEED_DIAL:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
