.class final Lcom/hiya/stingray/ui/setting/DebugActivity$t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$t0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$t0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    .line 2
    sget-object v0, Lcom/hiya/stingray/notification/NotificationReceiver;->d:Lcom/hiya/stingray/notification/NotificationReceiver$a;

    .line 3
    sget-object v1, Lcom/hiya/stingray/notification/v;->SUBSCRIPTION_EXPIRE:Lcom/hiya/stingray/notification/v;

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/l;

    const-string v3, "subscriptionEventType"

    const-string v4, "SubscriptionInGracePeriod"

    .line 4
    invoke-static {v3, v4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "subscriptionId"

    const-string v4, "1234"

    invoke-static {v3, v4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object v2

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lcom/hiya/stingray/notification/NotificationReceiver$a;->b(Landroid/content/Context;Lcom/hiya/stingray/notification/v;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
