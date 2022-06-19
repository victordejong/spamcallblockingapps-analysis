.class public final synthetic Le/a/k0/n/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

.field public final synthetic b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

.field public final synthetic c:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/n/b/d;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    iput-object p2, p0, Le/a/k0/n/b/d;->b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    iput-object p3, p0, Le/a/k0/n/b/d;->c:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/a/k0/n/b/d;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    iget-object v1, p0, Le/a/k0/n/b/d;->b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    iget-object v2, p0, Le/a/k0/n/b/d;->c:Landroid/view/WindowManager$LayoutParams;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
