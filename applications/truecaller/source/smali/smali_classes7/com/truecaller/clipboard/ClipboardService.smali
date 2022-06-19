.class public Lcom/truecaller/clipboard/ClipboardService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Le/a/i0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/clipboard/ClipboardService$a;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Le/a/i0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Landroid/content/res/Configuration;

.field public d:Le/a/e/c2/v;

.field public e:Landroid/os/Handler;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/truecaller/clipboard/ClipboardService;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-boolean v1, p0, Lcom/truecaller/clipboard/ClipboardService;->f:Z

    return-void
.end method


# virtual methods
.method public a()Le/a/e/c2/v;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/clipboard/ClipboardService;->d:Le/a/e/c2/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/a/e/c2/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/e/c2/v;-><init>(Landroid/content/Context;Lcom/truecaller/ui/components/FloatingWindow$c;)V

    iput-object v0, p0, Lcom/truecaller/clipboard/ClipboardService;->d:Le/a/e/c2/v;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/clipboard/ClipboardService;->d:Le/a/e/c2/v;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/clipboard/ClipboardService;->c:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 v0, 0x4

    .line 3
    invoke-static {p1, v0}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/truecaller/clipboard/ClipboardService;->d:Le/a/e/c2/v;

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p1, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 8
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Lcom/truecaller/ui/components/FloatingWindow;->h:I

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    iget-object v1, p1, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Le/a/o5/j0;->l(Landroid/content/res/Resources;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/truecaller/ui/components/FloatingWindow;->i:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 14

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/truecaller/clipboard/ClipboardService;->c:Landroid/content/res/Configuration;

    .line 3
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/truecaller/clipboard/ClipboardService$a;

    invoke-direct {v1, p0}, Lcom/truecaller/clipboard/ClipboardService$a;-><init>(Lcom/truecaller/clipboard/ClipboardService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    .line 4
    sget-object v0, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v0}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v0

    invoke-interface {v0}, Le/a/l2;->q()Le/a/h3/a;

    move-result-object v0

    check-cast v0, Le/a/t1$i;

    .line 5
    new-instance v13, Le/a/i0;

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 6
    iget-object v2, v1, Le/a/t1;->n:Ljavax/inject/Provider;

    .line 7
    iget-object v1, v1, Le/a/t1;->o:Ljavax/inject/Provider;

    .line 8
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 9
    iget-object v1, v1, Le/a/t1;->p:Ljavax/inject/Provider;

    .line 10
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 11
    iget-object v1, v1, Le/a/t1;->q:Ljavax/inject/Provider;

    .line 12
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 13
    iget-object v1, v1, Le/a/t1;->r:Ljavax/inject/Provider;

    .line 14
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 15
    iget-object v1, v1, Le/a/t1;->s:Ljavax/inject/Provider;

    .line 16
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 17
    iget-object v1, v1, Le/a/t1;->i:Ljavax/inject/Provider;

    .line 18
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 19
    iget-object v1, v1, Le/a/t1;->t:Ljavax/inject/Provider;

    .line 20
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 21
    iget-object v1, v1, Le/a/t1;->u:Ljavax/inject/Provider;

    .line 22
    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v1, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 23
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 24
    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v11

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 25
    invoke-static {v11, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v0, v0, Le/a/t1$i;->a:Le/a/t1;

    .line 27
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 28
    invoke-interface {v0}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v12

    .line 29
    invoke-static {v12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v13

    .line 30
    invoke-direct/range {v1 .. v12}, Le/a/i0;-><init>(Ljavax/inject/Provider;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Ls1/w/f;Ls1/w/f;)V

    .line 31
    iput-object v13, p0, Lcom/truecaller/clipboard/ClipboardService;->b:Le/a/i0;

    .line 32
    iget-object v0, v13, Le/a/i0;->a:Le/a/i0$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 34
    iput-boolean v1, p0, Lcom/truecaller/clipboard/ClipboardService;->f:Z

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v13, p0}, Le/a/i0;->b(Le/a/i0$b;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-boolean v0, p0, Lcom/truecaller/clipboard/ClipboardService;->f:Z

    .line 3
    iget-object v1, p0, Lcom/truecaller/clipboard/ClipboardService;->b:Le/a/i0;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0}, Le/a/i0;->b(Le/a/i0$b;)V

    .line 5
    iput-object v0, p0, Lcom/truecaller/clipboard/ClipboardService;->b:Le/a/i0;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
