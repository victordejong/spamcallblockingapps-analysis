.class public final Le/a/k0/n/b/k$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/n/b/k$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/n/b/k$c;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/k$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/k0/n/b/k$c$b;->a:Le/a/k0/n/b/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/k$c$b;->a:Le/a/k0/n/b/k$c;

    iget-object v1, v0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    iget-object v2, v0, Le/a/k0/n/b/k$c;->f:Ljava/lang/String;

    iget-object v0, v0, Le/a/k0/n/b/k$c;->g:Le/a/k0/n/b/j$a;

    .line 2
    sget v3, Lcom/truecaller/callrecording/R$layout;->floating_call_recording_button:I

    .line 3
    iget-object v4, v1, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const-string v5, "LayoutInflater.from(context)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 4
    invoke-static {v4, v5}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v6, 0x0

    .line 5
    invoke-virtual {v4, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.truecaller.callrecording.ui.bubble.BubbleLayout"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    .line 6
    iput-object v3, v1, Le/a/k0/n/b/k;->b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    .line 7
    sget v4, Lcom/truecaller/callrecording/R$id;->call_recording_control:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type com.truecaller.callrecording.ui.floatingbutton.RecordingFloatingButtonControl"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Le/a/k0/n/c/g;

    .line 8
    invoke-interface {v4, v2}, Le/a/k0/n/c/g;->setPhoneNumber(Ljava/lang/String;)V

    .line 9
    new-instance v6, Le/a/k0/n/b/o;

    invoke-direct {v6, v1, v2}, Le/a/k0/n/b/o;-><init>(Le/a/k0/n/b/k;Ljava/lang/String;)V

    .line 10
    invoke-interface {v4, v6}, Le/a/k0/n/c/g;->setErrorListener(Le/a/k0/b;)V

    .line 11
    iput-object v4, v1, Le/a/k0/n/b/k;->c:Le/a/k0/n/c/g;

    .line 12
    invoke-virtual {v3, v1}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->setOnBubbleClickListener(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;)V

    .line 13
    new-instance v4, Le/a/k0/n/b/m;

    invoke-direct {v4, v1, v2, v0}, Le/a/k0/n/b/m;-><init>(Le/a/k0/n/b/k;Ljava/lang/String;Le/a/k0/n/b/j$a;)V

    invoke-virtual {v3, v4}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->setOnBubbleRemoveListener(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$e;)V

    .line 14
    new-instance v4, Le/a/k0/n/b/n;

    invoke-direct {v4, v1, v2, v0}, Le/a/k0/n/b/n;-><init>(Le/a/k0/n/b/k;Ljava/lang/String;Le/a/k0/n/b/j$a;)V

    invoke-virtual {v3, v4}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->setOnBubbleMovedListener(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$d;)V

    .line 15
    iget-object v2, v1, Le/a/k0/n/b/k;->j:Le/a/k0/a/j;

    invoke-interface {v2}, Le/a/k0/a/j;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Le/a/k0/n/b/k;->d(I)Ls1/k;

    move-result-object v2

    .line 16
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 17
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 18
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 19
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 20
    iget-object v4, v1, Le/a/k0/n/b/k;->a:Le/a/k0/n/b/i;

    if-eqz v4, :cond_0

    iget-object v6, v1, Le/a/k0/n/b/k;->b:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    .line 21
    iget-boolean v7, v4, Le/a/k0/n/b/i;->b:Z

    if-eqz v7, :cond_0

    .line 22
    iget-object v4, v4, Le/a/k0/n/b/i;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 23
    invoke-virtual {v4, v3, v2}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 24
    invoke-virtual {v4}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {v6, v3}, Le/a/k0/n/b/f;->setWindowManager(Landroid/view/WindowManager;)V

    .line 25
    invoke-virtual {v6, v2}, Le/a/k0/n/b/f;->setViewParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 26
    iget-object v2, v4, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->f:Le/a/k0/n/b/h;

    invoke-virtual {v6, v2}, Le/a/k0/n/b/f;->setLayoutCoordinator(Le/a/k0/n/b/h;)V

    .line 27
    iget-object v2, v4, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v2, v4, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c:Landroid/os/Handler;

    new-instance v3, Le/a/k0/n/b/b;

    invoke-direct {v3, v4, v6}, Le/a/k0/n/b/b;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Le/a/k0/n/b/f;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    :cond_0
    iget-object v2, v1, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    invoke-static {v2}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v2

    .line 30
    iget-object v3, v1, Le/a/k0/n/b/k;->e:Le/a/k0/n/b/k$a;

    .line 31
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "BroadcastCallerIdPosY"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v3, v4}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0}, Le/a/k0/n/b/j$a;->a()V

    .line 34
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const-string v2, "SafeRecordingCloser"

    invoke-direct {v0, v2, v5}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 35
    new-instance v8, Le/a/k0/n/b/l;

    invoke-direct {v8, v1}, Le/a/k0/n/b/l;-><init>(Le/a/k0/n/b/k;)V

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x3a98

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 36
    iput-object v0, v1, Le/a/k0/n/b/k;->d:Ljava/util/Timer;

    .line 37
    iget-object v0, p0, Le/a/k0/n/b/k$c$b;->a:Le/a/k0/n/b/k$c;

    iget-object v0, v0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    .line 38
    iget-object v0, v0, Le/a/k0/n/b/k;->i:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 39
    invoke-interface {v0}, Lcom/truecaller/callrecording/CallRecordingManager;->G()V

    return-void
.end method
