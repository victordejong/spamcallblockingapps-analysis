.class public final synthetic Le/a/k0/n/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

.field public final synthetic b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/n/b/e;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    iput-object p2, p0, Le/a/k0/n/b/e;->b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/a/k0/n/b/e;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    iget-object v1, p0, Le/a/k0/n/b/e;->b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v2, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    if-ne v3, v1, :cond_0

    .line 4
    iget-object v2, v1, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->h:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$e;

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v2, v1}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$e;->a(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    .line 6
    :cond_1
    iget-object v0, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
