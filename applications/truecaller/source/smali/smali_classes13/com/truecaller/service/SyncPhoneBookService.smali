.class public Lcom/truecaller/service/SyncPhoneBookService;
.super Ln3/k/a/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/service/SyncPhoneBookService$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/a0;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/service/SyncPhoneBookService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "clear_existing"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Lcom/truecaller/service/SyncPhoneBookService;

    const v1, 0x7f0a1128

    invoke-static {p0, p1, v1, v0}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onHandleWork(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    const-string v0, "clear_existing"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "contact_source=2"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/truecaller/TrueApp;

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Le/a/j2;->k1()Le/a/o5/i1;

    move-result-object p1

    invoke-virtual {p1}, Le/a/o5/i1;->e()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error performing phone book sync"

    .line 5
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
