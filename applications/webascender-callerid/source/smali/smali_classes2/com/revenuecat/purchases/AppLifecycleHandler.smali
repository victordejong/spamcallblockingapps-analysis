.class public final Lcom/revenuecat/purchases/AppLifecycleHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m;


# instance fields
.field private final lifecycleDelegate:Lcom/revenuecat/purchases/LifecycleDelegate;


# direct methods
.method public constructor <init>(Lcom/revenuecat/purchases/LifecycleDelegate;)V
    .locals 1

    const-string v0, "lifecycleDelegate"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/AppLifecycleHandler;->lifecycleDelegate:Lcom/revenuecat/purchases/LifecycleDelegate;

    return-void
.end method


# virtual methods
.method public final onMoveToBackground()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/v;
        value = .enum Landroidx/lifecycle/h$b;->ON_STOP:Landroidx/lifecycle/h$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/AppLifecycleHandler;->lifecycleDelegate:Lcom/revenuecat/purchases/LifecycleDelegate;

    invoke-interface {v0}, Lcom/revenuecat/purchases/LifecycleDelegate;->onAppBackgrounded()V

    return-void
.end method

.method public final onMoveToForeground()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/v;
        value = .enum Landroidx/lifecycle/h$b;->ON_START:Landroidx/lifecycle/h$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/AppLifecycleHandler;->lifecycleDelegate:Lcom/revenuecat/purchases/LifecycleDelegate;

    invoke-interface {v0}, Lcom/revenuecat/purchases/LifecycleDelegate;->onAppForegrounded()V

    return-void
.end method
