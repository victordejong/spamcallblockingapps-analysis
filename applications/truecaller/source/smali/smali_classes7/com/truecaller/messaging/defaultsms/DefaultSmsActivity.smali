.class public Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/a/s0/i;


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Le/a/a/s0/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method

.method public static pa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->qa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static qa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "AppUserInteraction.Context"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "DEFAULT_SMS_APP_URI_CONTEXT"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "PREP_MESSAGE"

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public I8()V
    .locals 2

    const v0, 0x7f12023e

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public S9(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Le/a/p5/s0/g;->c1(Landroid/app/Activity;Ljava/lang/String;I)Z

    return-void
.end method

.method public b2()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b9()V
    .locals 2

    :try_start_0
    const-string v0, "role"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_0

    const-string v1, "android.app.role.SMS"

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->a:Le/a/a/s0/f;

    invoke-virtual {v0}, Le/a/a/s0/f;->Kj()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d2(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    const p1, 0x7f120251

    .line 4
    new-instance v1, Le/a/a/s0/b;

    invoke-direct {v1, p0}, Le/a/a/s0/b;-><init>(Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const p1, 0x7f120963

    new-instance v1, Le/a/a/s0/c;

    invoke-direct {v1, p0}, Le/a/a/s0/c;-><init>(Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;)V

    .line 6
    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 7
    invoke-virtual {v0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public e2(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f12026f

    goto :goto_0

    :cond_0
    const p1, 0x7f12026e

    .line 1
    :goto_0
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    const/4 p1, 0x0

    .line 3
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean p1, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    const p1, 0x7f12026d

    .line 4
    new-instance v1, Le/a/a/s0/a;

    invoke-direct {v1, p0}, Le/a/a/s0/a;-><init>(Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public n2()V
    .locals 2

    const v0, 0x7f12023d

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public na(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "com.miui.securitycenter"

    .line 1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    .line 2
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_pkgname"

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v3, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    .line 5
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move v0, v1

    goto :goto_1

    .line 7
    :catch_1
    :try_start_2
    invoke-static {p0}, Le/a/p5/s0/g;->v(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 10
    :cond_0
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.coloros.safecenter"

    const-string v3, "com.coloros.safecenter.permission.PermissionManagerActivity"

    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    :goto_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->a:Le/a/a/s0/f;

    invoke-virtual {p2, p1}, Le/a/a/s0/f;->q(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "AppUserInteraction.Context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "DEFAULT_SMS_APP_URI_CONTEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 7
    invoke-static {v4, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PREP_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v2, Le/a/j2;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    invoke-interface {v1}, Le/a/j2;->n4()Le/a/a/r0/a;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 13
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-interface {v1}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v5

    .line 15
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-interface {v1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v6

    .line 17
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-interface {v1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v7

    .line 19
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v8

    .line 21
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    invoke-interface {v1}, Le/a/j2;->i1()Le/a/a/p;

    move-result-object v9

    .line 23
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-interface {v1}, Le/a/j2;->v7()Le/a/a/s0/d;

    move-result-object v10

    .line 25
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-interface {v1}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v11

    .line 27
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 29
    invoke-interface {v7}, Le/a/a/i0;->E0()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xiaomi"

    .line 30
    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v1, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 31
    new-instance v0, Le/a/a/s0/g;

    move-object v1, v0

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v12

    move-object v12, p1

    invoke-direct/range {v1 .. v13}, Le/a/a/s0/g;-><init>(Le/a/a/r0/a;Le/a/p5/g;Ljava/lang/String;Le/a/r2/f;Le/a/a/i0;Ljava/lang/String;Le/a/p5/a0;Le/a/a/p;Le/a/a/s0/d;Le/a/q2/i0;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    new-instance v0, Le/a/a/s0/h;

    move-object v1, v0

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, p1

    move-object v12, v13

    invoke-direct/range {v1 .. v12}, Le/a/a/s0/h;-><init>(Le/a/a/r0/a;Le/a/p5/g;Ljava/lang/String;Le/a/r2/f;Le/a/a/i0;Le/a/p5/a0;Le/a/a/p;Le/a/a/s0/d;Le/a/q2/i0;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    iput-object v0, p0, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->a:Le/a/a/s0/f;

    .line 34
    invoke-virtual {v0, p0}, Le/a/u2/a/b;->Y0(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->a:Le/a/a/s0/f;

    invoke-virtual {v0}, Le/a/u2/a/b;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->a:Le/a/a/s0/f;

    invoke-virtual {p1, p2, p3}, Le/a/a/s0/f;->Lj([Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->a:Le/a/a/s0/f;

    invoke-virtual {v0}, Le/a/a/s0/f;->onResume()V

    return-void
.end method

.method public w2()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    const-string v2, "com.truecaller"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->a:Le/a/a/s0/f;

    invoke-virtual {v0}, Le/a/a/s0/f;->Kj()V

    :goto_0
    return-void
.end method

.method public z8()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
