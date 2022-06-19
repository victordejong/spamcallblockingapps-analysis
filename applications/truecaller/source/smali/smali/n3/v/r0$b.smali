.class public Ln3/v/r0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/v/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerIn(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ln3/v/r0$b;

    invoke-direct {v0}, Ln3/v/r0$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p2, Ln3/v/u$a;->ON_CREATE:Ln3/v/u$a;

    invoke-static {p1, p2}, Ln3/v/r0;->a(Landroid/app/Activity;Ln3/v/u$a;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;

    invoke-static {p1, v0}, Ln3/v/r0;->a(Landroid/app/Activity;Ln3/v/u$a;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    invoke-static {p1, v0}, Ln3/v/r0;->a(Landroid/app/Activity;Ln3/v/u$a;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    invoke-static {p1, v0}, Ln3/v/r0;->a(Landroid/app/Activity;Ln3/v/u$a;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;

    invoke-static {p1, v0}, Ln3/v/r0;->a(Landroid/app/Activity;Ln3/v/u$a;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    invoke-static {p1, v0}, Ln3/v/r0;->a(Landroid/app/Activity;Ln3/v/u$a;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
