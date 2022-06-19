.class public Ln3/v/q0;
.super Ln3/v/n;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Ln3/v/p0;


# direct methods
.method public constructor <init>(Ln3/v/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/v/q0;->this$0:Ln3/v/p0;

    invoke-direct {p0}, Ln3/v/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 2
    sget p2, Ln3/v/r0;->b:I

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Ln3/v/r0;

    .line 4
    iget-object p2, p0, Ln3/v/q0;->this$0:Ln3/v/p0;

    iget-object p2, p2, Ln3/v/p0;->h:Ln3/v/r0$a;

    .line 5
    iput-object p2, p1, Ln3/v/r0;->a:Ln3/v/r0$a;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/v/q0;->this$0:Ln3/v/p0;

    .line 2
    iget v0, p1, Ln3/v/p0;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ln3/v/p0;->b:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Ln3/v/p0;->e:Landroid/os/Handler;

    iget-object p1, p1, Ln3/v/p0;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Ln3/v/q0$a;

    invoke-direct {p2, p0}, Ln3/v/q0$a;-><init>(Ln3/v/q0;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/v/q0;->this$0:Ln3/v/p0;

    .line 2
    iget v0, p1, Ln3/v/p0;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Ln3/v/p0;->a:I

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p1, Ln3/v/p0;->c:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Ln3/v/p0;->f:Ln3/v/c0;

    sget-object v2, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    invoke-virtual {v0, v2}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    .line 5
    iput-boolean v1, p1, Ln3/v/p0;->d:Z

    :cond_0
    return-void
.end method
