.class public final Le/a/d5/g/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d5/g/h;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d5/g/h;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/d5/g/h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/d5/g/h$a;->b:Le/a/d5/g/h;

    iput-object p2, p0, Le/a/d5/g/h$a;->c:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/d5/g/h$a;->b:Le/a/d5/g/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    const-string v1, "TrueApp.getApp()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/c;->Y()Le/a/b0/e/r/a;

    move-result-object v0

    const-string v1, "region_c_accepted"

    invoke-interface {v0, v1, p1}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/truecaller/consentrefresh/ConsentRefreshActivity;->d:Lcom/truecaller/consentrefresh/ConsentRefreshActivity$a;

    iget-object v0, p0, Le/a/d5/g/h$a;->c:Landroid/content/Context;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/truecaller/consentrefresh/ConsentRefreshActivity$a;->a(Landroid/content/Context;Z)V

    .line 6
    iget-object p1, p0, Le/a/d5/g/h$a;->b:Le/a/d5/g/h;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    :goto_0
    sget-object v1, Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;->USER_IS_IN_REGION2:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartupDialogDismissReason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/d5/g/h$a;->b:Le/a/d5/g/h;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    .line 10
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
