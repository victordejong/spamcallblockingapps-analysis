.class public Lcom/truecaller/clipboard/ClipboardService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/clipboard/ClipboardService$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/truecaller/clipboard/ClipboardService;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;

.field public c:Z

.field public d:Ln3/k/a/q;


# direct methods
.method public constructor <init>(Lcom/truecaller/clipboard/ClipboardService;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/truecaller/clipboard/ClipboardService$a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    :try_start_0
    move-object v1, v0

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v1

    invoke-interface {v1}, Le/a/h4/n;->d()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    new-instance v2, Ln3/k/a/q;

    invoke-direct {v2, v0, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0816fb

    .line 6
    iget-object v3, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v3, Landroid/app/Notification;->icon:I

    const v1, 0x7f06068b

    .line 7
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 9
    iput v0, v2, Ln3/k/a/q;->D:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v2, v0, v0, v1}, Ln3/k/a/q;->u(IIZ)Ln3/k/a/q;

    .line 11
    iput v1, v2, Ln3/k/a/q;->l:I

    const/4 v0, 0x2

    .line 12
    invoke-virtual {v2, v0, v1}, Ln3/k/a/q;->p(IZ)V

    .line 13
    iput-object v2, p0, Lcom/truecaller/clipboard/ClipboardService$a;->d:Ln3/k/a/q;

    .line 14
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "msg"

    if-nez v0, :cond_0

    const-string v0, "Could not get standard Intent for clipboard search service notification"

    .line 15
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipboard"

    .line 16
    invoke-static {p1, v0}, Lcom/truecaller/ui/TruecallerInit;->wa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000000

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const v3, 0x7f0a0e3d

    const/high16 v4, 0x4000000

    .line 18
    :try_start_2
    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 19
    iget-object v3, p0, Lcom/truecaller/clipboard/ClipboardService$a;->d:Ln3/k/a/q;

    .line 20
    iput-object v0, v3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set PendingIntent for clipboard search service notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/truecaller/clipboard/ClipboardService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 24
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    const v0, 0x7f120711

    .line 25
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 27
    iget-object v0, p0, Lcom/truecaller/clipboard/ClipboardService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 28
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    :catch_2
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 30
    iget-object v0, p0, Lcom/truecaller/clipboard/ClipboardService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 31
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/truecaller/clipboard/ClipboardService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/clipboard/ClipboardService;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2
    iget-object v2, v0, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    .line 3
    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_9

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v3, v1, :cond_7

    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-boolean v2, p0, Lcom/truecaller/clipboard/ClipboardService$a;->c:Z

    if-eqz v2, :cond_a

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/truecaller/clipboard/ClipboardService$a;->b:Ljava/lang/Object;

    if-ne p1, v2, :cond_a

    .line 5
    :cond_1
    iput-object v7, p0, Lcom/truecaller/clipboard/ClipboardService$a;->b:Ljava/lang/Object;

    .line 6
    iput-boolean v6, p0, Lcom/truecaller/clipboard/ClipboardService$a;->c:Z

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2, v7}, Le/a/b0/q/b0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/truecaller/clipboard/ClipboardService$a;->b:Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/truecaller/clipboard/ClipboardService$a;->d:Ln3/k/a/q;

    const v3, 0x7f12018d

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 12
    iget-object p1, p0, Lcom/truecaller/clipboard/ClipboardService$a;->d:Ln3/k/a/q;

    const v3, 0x7f12018c

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 13
    iput-boolean v1, p0, Lcom/truecaller/clipboard/ClipboardService$a;->c:Z

    const p1, 0x7f0a0403

    .line 14
    iget-object v2, p0, Lcom/truecaller/clipboard/ClipboardService$a;->d:Ln3/k/a/q;

    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 15
    :cond_3
    iget-object p1, v0, Lcom/truecaller/clipboard/ClipboardService;->d:Le/a/e/c2/v;

    if-eqz p1, :cond_a

    .line 16
    iget-boolean v3, p1, Lcom/truecaller/ui/components/FloatingWindow;->m:Z

    .line 17
    iget-object v4, p1, Le/a/e/c2/v;->s:Lcom/truecaller/data/entity/Contact;

    .line 18
    iget-object v5, p1, Le/a/e/c2/v;->x:Ljava/lang/String;

    .line 19
    iget-object v6, p1, Le/a/e/c2/v;->y:Lcom/truecaller/blocking/FilterMatch;

    .line 20
    iget-object v8, p1, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_4

    .line 21
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 22
    iget-object v8, p1, Lcom/truecaller/ui/components/FloatingWindow;->d:Landroid/view/WindowManager;

    iget-object v9, p1, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    invoke-interface {v8, v9}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 23
    :cond_4
    iget-object v8, p1, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    if-eqz v8, :cond_5

    .line 24
    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    iget-object v8, p1, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    iput-object v7, p1, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    .line 27
    :cond_5
    iput-object v7, v0, Lcom/truecaller/clipboard/ClipboardService;->d:Le/a/e/c2/v;

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    .line 28
    invoke-virtual {v0}, Lcom/truecaller/clipboard/ClipboardService;->a()Le/a/e/c2/v;

    move-result-object p1

    invoke-virtual {p1, v5, v4, v6}, Le/a/e/c2/v;->f(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)V

    :cond_6
    if-eqz v3, :cond_a

    .line 29
    invoke-virtual {v0}, Lcom/truecaller/clipboard/ClipboardService;->a()Le/a/e/c2/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/ui/components/FloatingWindow;->d()V

    goto :goto_0

    .line 30
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/clipboard/ClipboardService$a$a;

    .line 31
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    iget-object v2, p1, Lcom/truecaller/clipboard/ClipboardService$a$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/clipboard/ClipboardService$a$a;->b:Lcom/truecaller/data/entity/Contact;

    iget-object p1, p1, Lcom/truecaller/clipboard/ClipboardService$a$a;->c:Lcom/truecaller/blocking/FilterMatch;

    .line 33
    invoke-virtual {v0}, Lcom/truecaller/clipboard/ClipboardService;->a()Le/a/e/c2/v;

    move-result-object v5

    .line 34
    iget-boolean v5, v5, Lcom/truecaller/ui/components/FloatingWindow;->m:Z

    if-nez v5, :cond_8

    .line 35
    invoke-virtual {v0}, Lcom/truecaller/clipboard/ClipboardService;->a()Le/a/e/c2/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/truecaller/ui/components/FloatingWindow;->d()V

    .line 36
    :cond_8
    iget-object v5, v0, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    iget-object v5, v0, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    invoke-virtual {v5, v4, v6, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    invoke-virtual {v0}, Lcom/truecaller/clipboard/ClipboardService;->a()Le/a/e/c2/v;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p1}, Le/a/e/c2/v;->f(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)V

    goto :goto_0

    .line 39
    :cond_9
    invoke-virtual {v0}, Lcom/truecaller/clipboard/ClipboardService;->a()Le/a/e/c2/v;

    move-result-object p1

    .line 40
    iget-boolean p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->m:Z

    if-eqz p1, :cond_a

    .line 41
    invoke-virtual {v0}, Lcom/truecaller/clipboard/ClipboardService;->a()Le/a/e/c2/v;

    move-result-object p1

    sget-object v0, Lcom/truecaller/ui/components/FloatingWindow$DismissCause;->UNDEFINED:Lcom/truecaller/ui/components/FloatingWindow$DismissCause;

    invoke-virtual {p1, v0}, Lcom/truecaller/ui/components/FloatingWindow;->b(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V

    :cond_a
    :goto_0
    return v1
.end method
