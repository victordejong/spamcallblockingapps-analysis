.class public final Le/a/d5/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Z

.field public final b:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final c:Le/a/z4/d;

.field public final d:Le/a/c3/a;

.field public final e:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/z4/d;Le/a/c3/a;Le/a/p5/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "generalSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deveInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/k;->c:Le/a/z4/d;

    iput-object p2, p0, Le/a/d5/h/k;->d:Le/a/c3/a;

    iput-object p3, p0, Le/a/d5/h/k;->e:Le/a/p5/g;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/d5/h/k;->a:Z

    .line 3
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->PIN_SHORTCUTS_REQUEST_DIALOG:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/k;->b:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    const-string v0, "fromActivity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/l4/k;->o(Landroid/app/Activity;)Landroid/content/Intent;

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/k;->b:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d5/h/k;->c:Le/a/z4/d;

    const-string v1, "general_requestPinDialerShortcutShown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/d5/h/k;->e:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->q()I

    move-result p1

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Le/a/d5/h/k;->d:Le/a/c3/a;

    invoke-interface {p1}, Le/a/c3/a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/d5/h/k;->d:Le/a/c3/a;

    invoke-interface {p1}, Le/a/c3/a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/d5/h/k;->c:Le/a/z4/d;

    const-string v0, "general_requestPinDialerShortcutShown"

    invoke-interface {p1, v0}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance v0, Le/a/d5/g/k;

    invoke-direct {v0}, Le/a/d5/g/k;-><init>()V

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d5/h/k;->a:Z

    return v0
.end method

.method public h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
