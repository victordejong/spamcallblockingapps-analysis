.class public final synthetic Le/a/e/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/g0;->a:Lcom/truecaller/ui/TruecallerInit;

    iput-object p2, p0, Le/a/e/g0;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/a/e/g0;->a:Lcom/truecaller/ui/TruecallerInit;

    iget-object v1, p0, Le/a/e/g0;->b:Landroid/content/Intent;

    .line 1
    iget-object v2, v0, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    instance-of v2, v2, Le/a/a/r0/j;

    if-nez v2, :cond_0

    const-string v2, "messages"

    .line 2
    invoke-virtual {v0, v2}, Lcom/truecaller/ui/TruecallerInit;->Qa(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/ui/TruecallerInit;->qa()Z

    const/4 v2, 0x0

    const-string v3, "com.truecaller.insights.reminders.notifications.EXTRAS.NOTIFICATION_ID"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "notification"

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 6
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    sget-object v2, Lcom/truecaller/messaging/data/types/InboxTab;->BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v3, "inbox_tab"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    iget-object v0, v0, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    check-cast v0, Le/a/e/n1;

    invoke-interface {v0, v1}, Le/a/e/n1;->Cc(Landroid/content/Intent;)V

    return-void
.end method
