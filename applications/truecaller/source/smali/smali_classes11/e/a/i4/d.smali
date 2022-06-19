.class public final synthetic Le/a/i4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/notifications/NotificationHandlerService;

.field public final synthetic b:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/notifications/NotificationHandlerService;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i4/d;->a:Lcom/truecaller/notifications/NotificationHandlerService;

    iput-object p2, p0, Le/a/i4/d;->b:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/a/i4/d;->a:Lcom/truecaller/notifications/NotificationHandlerService;

    iget-object v1, p0, Le/a/i4/d;->b:Landroid/service/notification/StatusBarNotification;

    .line 1
    iget-object v0, v0, Lcom/truecaller/notifications/NotificationHandlerService;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i4/n;

    .line 2
    invoke-virtual {v2, v1}, Le/a/i4/n;->c(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_0
    return-void
.end method
