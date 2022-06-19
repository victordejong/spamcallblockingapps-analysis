.class public Lcom/truecaller/common/account/TruecallerAccountAuthenticatorService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Le/a/b0/e/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/truecaller/common/account/TruecallerAccountAuthenticatorService;->a:Le/a/b0/e/j;

    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Le/a/b0/e/j;

    invoke-direct {v0, p0}, Le/a/b0/e/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/truecaller/common/account/TruecallerAccountAuthenticatorService;->a:Le/a/b0/e/j;

    return-void
.end method
