.class public Lcom/truecaller/ui/TruecallerInit$e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/TruecallerInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/TruecallerInit$e;->a:Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "KEY_BIZ_NAME"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "KEY_BIZ_DELETED"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$e;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 5
    iget-object v1, v0, Lcom/truecaller/ui/TruecallerInit;->o:Lcom/truecaller/ui/components/DrawerHeaderView;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/truecaller/ui/TruecallerInit;->z0:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->x()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, v0, Lcom/truecaller/ui/TruecallerInit;->o:Lcom/truecaller/ui/components/DrawerHeaderView;

    invoke-virtual {p1}, Lcom/truecaller/ui/components/DrawerHeaderView;->f1()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, v0, Lcom/truecaller/ui/TruecallerInit;->o:Lcom/truecaller/ui/components/DrawerHeaderView;

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/DrawerHeaderView;->h1(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
