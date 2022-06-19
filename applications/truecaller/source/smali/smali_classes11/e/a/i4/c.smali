.class public final synthetic Le/a/i4/c;
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

    iput-object p1, p0, Le/a/i4/c;->a:Lcom/truecaller/notifications/NotificationHandlerService;

    iput-object p2, p0, Le/a/i4/c;->b:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/a/i4/c;->a:Lcom/truecaller/notifications/NotificationHandlerService;

    iget-object v1, p0, Le/a/i4/c;->b:Landroid/service/notification/StatusBarNotification;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 3
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

    .line 4
    invoke-virtual {v2, v1}, Le/a/i4/n;->b(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_0
    return-void
.end method
