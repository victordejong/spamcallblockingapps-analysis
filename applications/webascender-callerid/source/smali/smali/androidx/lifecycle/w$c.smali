.class Landroidx/lifecycle/w$c;
.super Landroidx/lifecycle/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/w;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/w;


# direct methods
.method constructor <init>(Landroidx/lifecycle/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

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
    invoke-static {p1}, Landroidx/lifecycle/x;->f(Landroid/app/Activity;)Landroidx/lifecycle/x;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    iget-object p2, p2, Landroidx/lifecycle/w;->m:Landroidx/lifecycle/x$a;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/x;->h(Landroidx/lifecycle/x$a;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    invoke-virtual {p1}, Landroidx/lifecycle/w;->a()V

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/lifecycle/w$c$a;

    invoke-direct {p2, p0}, Landroidx/lifecycle/w$c$a;-><init>(Landroidx/lifecycle/w$c;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/w$c;->this$0:Landroidx/lifecycle/w;

    invoke-virtual {p1}, Landroidx/lifecycle/w;->d()V

    return-void
.end method
