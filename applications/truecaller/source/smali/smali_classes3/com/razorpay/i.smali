.class public Lcom/razorpay/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/razorpay/i;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/razorpay/SmsAgentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/razorpay/SmsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/razorpay/i;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/razorpay/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/i;->c:Lcom/razorpay/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/razorpay/i;

    invoke-direct {v0}, Lcom/razorpay/i;-><init>()V

    sput-object v0, Lcom/razorpay/i;->c:Lcom/razorpay/i;

    .line 3
    :cond_0
    sget-object v0, Lcom/razorpay/i;->c:Lcom/razorpay/i;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/razorpay/SmsAgentInterface;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/razorpay/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/razorpay/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/razorpay/SmsAgentInterface;

    .line 11
    invoke-interface {v1, p1}, Lcom/razorpay/SmsAgentInterface;->setSmsPermission(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "android.permission.RECEIVE_SMS"

    .line 5
    invoke-static {p1, v0}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/razorpay/i;->a(Z)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/razorpay/i;->b(Landroid/app/Activity;)V

    .line 8
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->SMS_PERMISSION_ALREADY_GRANTED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return v0

    .line 9
    :cond_0
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->SMS_PERMISSION_ALREADY_NOT_GRANTED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/razorpay/i;->b:Lcom/razorpay/SmsReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 5
    new-instance v1, Lcom/razorpay/SmsReceiver;

    invoke-direct {v1, p0}, Lcom/razorpay/SmsReceiver;-><init>(Lcom/razorpay/i;)V

    iput-object v1, p0, Lcom/razorpay/i;->b:Lcom/razorpay/SmsReceiver;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/razorpay/i;->b:Lcom/razorpay/SmsReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final b(Lcom/razorpay/SmsAgentInterface;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/razorpay/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/razorpay/i;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/razorpay/i;->b:Lcom/razorpay/SmsReceiver;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "critical"

    invoke-static {p1, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/razorpay/i;->b:Lcom/razorpay/SmsReceiver;

    return-void
.end method
