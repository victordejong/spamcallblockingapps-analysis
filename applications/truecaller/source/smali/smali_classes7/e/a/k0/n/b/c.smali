.class public final synthetic Le/a/k0/n/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/n/b/c;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/k0/n/b/c;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 1
    iget-object v1, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v0, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
