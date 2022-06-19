.class public final Lcom/hiya/client/callerid/ui/a0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/g;

.field private final b:Lkotlin/g;

.field private final c:Lkotlin/g;

.field private final d:Lkotlin/g;

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private final h:Lcom/hiya/client/callerid/ui/a0/m$f;

.field private final i:Landroid/content/Context;

.field private final j:Lcom/hiya/client/callerid/ui/a0/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/r;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiStateManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/m;->j:Lcom/hiya/client/callerid/ui/a0/r;

    .line 2
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/m$l;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/a0/m$l;-><init>(Lcom/hiya/client/callerid/ui/a0/m;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->a:Lkotlin/g;

    .line 3
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/m$h;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/a0/m$h;-><init>(Lcom/hiya/client/callerid/ui/a0/m;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->b:Lkotlin/g;

    .line 4
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/m$b;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/a0/m$b;-><init>(Lcom/hiya/client/callerid/ui/a0/m;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->c:Lkotlin/g;

    .line 5
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/m$g;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/a0/m$g;-><init>(Lcom/hiya/client/callerid/ui/a0/m;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->d:Lkotlin/g;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->f:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/m$f;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/a0/m$f;-><init>(Lcom/hiya/client/callerid/ui/a0/m;)V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->h:Lcom/hiya/client/callerid/ui/a0/m$f;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/m;->i:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/m;->e:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/client/callerid/ui/a0/m;)Lcom/hiya/client/callerid/ui/a0/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/m;->j:Lcom/hiya/client/callerid/ui/a0/r;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/client/callerid/ui/a0/m;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->n()Z

    move-result p0

    return p0
.end method

.method public static final synthetic f(Lcom/hiya/client/callerid/ui/a0/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->s()V

    return-void
.end method

.method public static final synthetic g(Lcom/hiya/client/callerid/ui/a0/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->v()V

    return-void
.end method

.method private final i()Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m;->c:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private final j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m;->d:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final k()Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m;->b:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method

.method private final l()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m;->a:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private final m()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final n()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->i()Landroid/app/KeyguardManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->k()Landroid/os/PowerManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private final p(Landroid/view/WindowManager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m;->j:Lcom/hiya/client/callerid/ui/a0/r;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/m;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/a0/r;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/hiya/client/callerid/ui/a0/m$c;->f:Lcom/hiya/client/callerid/ui/a0/m$c;

    .line 3
    new-instance v2, Lcom/hiya/client/callerid/ui/a0/m$d;

    invoke-direct {v2, p0, p1}, Lcom/hiya/client/callerid/ui/a0/m$d;-><init>(Lcom/hiya/client/callerid/ui/a0/m;Landroid/view/WindowManager;)V

    .line 4
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/m;->j:Lcom/hiya/client/callerid/ui/a0/r;

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->n()Z

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/hiya/client/callerid/ui/a0/r;->b(ZLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 5
    invoke-virtual {v1, p1}, Lcom/hiya/client/callerid/ui/a0/m$c;->a(Landroid/view/WindowManager;)F

    move-result p1

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/hiya/client/callerid/ui/a0/m;->q(IF)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->e:Landroid/view/WindowManager$LayoutParams;

    .line 7
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m;->f:Landroid/os/Handler;

    new-instance v0, Lcom/hiya/client/callerid/ui/a0/m$e;

    invoke-direct {v0, v2}, Lcom/hiya/client/callerid/ui/a0/m$e;-><init>(Lcom/hiya/client/callerid/ui/a0/m$d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final q(IF)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p2

    .line 2
    invoke-static {}, Lcom/hiya/client/callerid/ui/e0/c;->h()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x7f6

    const/16 v3, 0x7f6

    goto :goto_0

    :cond_0
    const/16 p2, 0x7da

    const/16 v3, 0x7da

    :goto_0
    const/4 v5, 0x1

    const/4 v2, -0x2

    const v4, 0x14c0028

    move-object v0, v6

    .line 3
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 4
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p1, 0x31

    .line 5
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v6
.end method

.method private final s()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->l()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/hiya/client/callerid/ui/a0/n;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unable to remove overlay."

    invoke-static {v1, v0, v3, v2}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final t()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/hiya/client/callerid/ui/p;->K:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/client/callerid/ui/a0/m$k;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/a0/m$k;-><init>(Lcom/hiya/client/callerid/ui/a0/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final u()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/client/callerid/ui/overlay/b;

    .line 3
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/m;->h:Lcom/hiya/client/callerid/ui/a0/m$f;

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/m;->e:Landroid/view/WindowManager$LayoutParams;

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/hiya/client/callerid/ui/overlay/b;-><init>(Lcom/hiya/client/callerid/ui/overlay/a;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final v()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->l()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->l()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/m;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final h(Z)Landroid/view/View;
    .locals 4

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/a0/n;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "create overlay"

    invoke-static {v0, v3, v2}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lcom/hiya/client/callerid/ui/a0/m;->g:Z

    .line 3
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->l()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->l()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/hiya/client/callerid/ui/a0/m;->p(Landroid/view/WindowManager;)V

    .line 5
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->u()V

    .line 6
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->t()V

    .line 7
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/hiya/client/callerid/ui/a0/m$a;

    invoke-direct {v2, p0, p1}, Lcom/hiya/client/callerid/ui/a0/m$a;-><init>(Lcom/hiya/client/callerid/ui/a0/m;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    .line 10
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final o()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->m()Z

    move-result v0

    return v0
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/a0/n;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "remove overlay"

    invoke-static {v0, v3, v2}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/m;->g:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/m$i;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/a0/m$i;-><init>(Lcom/hiya/client/callerid/ui/a0/m;)V

    .line 4
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->l()Landroid/view/WindowManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Lcom/hiya/client/callerid/ui/a0/n;->a()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove overlay: WindowManager is null and isAttachedToWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/m;->j()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/hiya/client/callerid/ui/a0/m;->g:Z

    .line 9
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/m;->f:Landroid/os/Handler;

    new-instance v2, Lcom/hiya/client/callerid/ui/a0/m$j;

    invoke-direct {v2, v0}, Lcom/hiya/client/callerid/ui/a0/m$j;-><init>(Lcom/hiya/client/callerid/ui/a0/m$i;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
