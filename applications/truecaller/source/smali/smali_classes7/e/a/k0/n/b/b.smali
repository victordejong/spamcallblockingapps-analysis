.class public final synthetic Le/a/k0/n/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

.field public final synthetic b:Le/a/k0/n/b/f;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Le/a/k0/n/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/n/b/b;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    iput-object p2, p0, Le/a/k0/n/b/b;->b:Le/a/k0/n/b/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/a/k0/n/b/b;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    iget-object v1, p0, Le/a/k0/n/b/b;->b:Le/a/k0/n/b/f;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {v1}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
