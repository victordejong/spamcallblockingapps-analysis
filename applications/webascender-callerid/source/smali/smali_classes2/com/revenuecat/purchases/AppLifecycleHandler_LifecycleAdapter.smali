.class public Lcom/revenuecat/purchases/AppLifecycleHandler_LifecycleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field final mReceiver:Lcom/revenuecat/purchases/AppLifecycleHandler;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/AppLifecycleHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/revenuecat/purchases/AppLifecycleHandler_LifecycleAdapter;->mReceiver:Lcom/revenuecat/purchases/AppLifecycleHandler;

    return-void
.end method


# virtual methods
.method public callMethods(Landroidx/lifecycle/n;Landroidx/lifecycle/h$b;ZLandroidx/lifecycle/s;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-void

    .line 1
    :cond_1
    sget-object p3, Landroidx/lifecycle/h$b;->ON_START:Landroidx/lifecycle/h$b;

    if-ne p2, p3, :cond_4

    if-eqz v0, :cond_2

    const-string p2, "onMoveToForeground"

    .line 2
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/s;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/revenuecat/purchases/AppLifecycleHandler_LifecycleAdapter;->mReceiver:Lcom/revenuecat/purchases/AppLifecycleHandler;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/AppLifecycleHandler;->onMoveToForeground()V

    :cond_3
    return-void

    .line 4
    :cond_4
    sget-object p3, Landroidx/lifecycle/h$b;->ON_STOP:Landroidx/lifecycle/h$b;

    if-ne p2, p3, :cond_6

    if-eqz v0, :cond_5

    const-string p2, "onMoveToBackground"

    .line 5
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/s;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/revenuecat/purchases/AppLifecycleHandler_LifecycleAdapter;->mReceiver:Lcom/revenuecat/purchases/AppLifecycleHandler;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/AppLifecycleHandler;->onMoveToBackground()V

    :cond_6
    return-void
.end method
