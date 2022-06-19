.class public Lcom/truecaller/callrecording/ui/bubble/BubblesService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/callrecording/ui/bubble/BubblesService$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/callrecording/ui/bubble/BubblesService$a;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/os/Handler;

.field public d:Le/a/k0/n/b/g;

.field public e:Landroid/view/WindowManager;

.field public f:Le/a/k0/n/b/h;

.field public g:Le/a/k0/n/b/h$b;

.field public h:Le/a/k0/a/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService$a;

    invoke-direct {v0, p0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService$a;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;)V

    iput-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService$a;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(II)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->h:Le/a/k0/a/j;

    .line 2
    invoke-interface {v0}, Le/a/k0/a/j;->g()I

    move-result v3

    const/4 v1, -0x2

    const/4 v2, -0x2

    const v4, 0x80008

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800033

    .line 3
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 5
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v6
.end method

.method public final b()Landroid/view/WindowManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->e:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->e:Landroid/view/WindowManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->e:Landroid/view/WindowManager;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c:Landroid/os/Handler;

    new-instance v1, Le/a/k0/n/b/c;

    invoke-direct {v1, p0}, Le/a/k0/n/b/c;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/n/g0;->t(Landroid/content/Context;)Le/a/k0/k/b;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/k0/k/b;->a(Lcom/truecaller/callrecording/ui/bubble/BubblesService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c:Landroid/os/Handler;

    new-instance v3, Le/a/k0/n/b/e;

    invoke-direct {v3, p0, v1}, Le/a/k0/n/b/e;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
