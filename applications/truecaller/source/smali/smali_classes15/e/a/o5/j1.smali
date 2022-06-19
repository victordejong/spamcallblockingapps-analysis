.class public Le/a/o5/j1;
.super Ln3/r/a/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/j1$c;,
        Le/a/o5/j1$a;,
        Le/a/o5/j1$b;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Lcom/truecaller/data/entity/Contact;

.field public b:Le/a/o5/j1$a;

.field public c:Le/a/q2/a;

.field public d:Le/a/o5/j1$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/r/a/k;-><init>()V

    return-void
.end method

.method public static OA(Le/a/o5/j1;[B)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/a/z3/a;->b:Le/a/z3/a;

    iget-object v0, p0, Le/a/o5/j1;->a:Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Le/a/z3/a;->a(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Le/a/o5/j1;->a:Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Le/a/z3/a;->a(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Le/a/o5/j1;->PA([B)V

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static QA(Lcom/truecaller/data/entity/Contact;Le/a/o5/j1$a;)Le/a/o5/j1;
    .locals 3

    .line 1
    new-instance v0, Le/a/o5/j1;

    invoke-direct {v0}, Le/a/o5/j1;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_contact"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    iput-object p1, v0, Le/a/o5/j1;->b:Le/a/o5/j1$a;

    return-object v0
.end method


# virtual methods
.method public final PA([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/j1;->b:Le/a/o5/j1$a;

    if-nez v0, :cond_0

    const-string p1, "Callback must always be set"

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/o5/j1;->a:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v0, v1, p1}, Le/a/o5/j1$a;->a(Lcom/truecaller/data/entity/Contact;[B)V

    :catch_0
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/truecaller/TrueApp;

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p1

    iput-object p1, p0, Le/a/o5/j1;->c:Le/a/q2/a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/o5/j1;->b:Le/a/o5/j1$a;

    if-nez p1, :cond_0

    const-string p1, "Callback not set for dialog"

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_contact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iput-object p1, p0, Le/a/o5/j1;->a:Lcom/truecaller/data/entity/Contact;

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/a/o5/j1;->a:Lcom/truecaller/data/entity/Contact;

    if-nez p1, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v0, "$this$toHttpUrl"

    .line 9
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lu3/a0$a;

    invoke-direct {v0}, Lu3/a0$a;-><init>()V

    invoke-virtual {v0, v1, p1}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v0}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_4

    .line 12
    new-instance v0, Le/a/o5/j1$c;

    invoke-direct {v0, p0, p1}, Le/a/o5/j1$c;-><init>(Le/a/o5/j1;Lu3/a0;)V

    iput-object v0, p0, Le/a/o5/j1;->d:Le/a/o5/j1$c;

    .line 13
    iget-object p1, v0, Le/a/o5/j1$c;->a:Lu3/f;

    invoke-interface {p1, v0}, Lu3/f;->M1(Lu3/g;)V

    goto :goto_2

    .line 14
    :cond_4
    invoke-virtual {p0, v1}, Le/a/o5/j1;->PA([B)V

    .line 15
    :try_start_1
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    return-void

    .line 16
    :cond_5
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ln3/r/a/k;->dismissAllowingStateLoss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v0, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/app/AlertController$b;->m:Z

    const v0, 0x7f120719

    .line 3
    invoke-virtual {p1, v0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 4
    invoke-virtual {p1}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Le/a/o5/j1;->d:Le/a/o5/j1$c;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Le/a/o5/j1$c;->a:Lu3/f;

    invoke-interface {v0}, Lu3/f;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Le/a/o5/j1$b;->e:Le/a/o5/j1$b;

    invoke-virtual {p1, v0}, Le/a/o5/j1$c;->a(Le/a/o5/j1$b;)V

    .line 5
    iget-object p1, p1, Le/a/o5/j1$c;->a:Lu3/f;

    invoke-interface {p1}, Lu3/f;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method
