.class public Le/a/k0/n/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/k0/n/b/i$b;
    }
.end annotation


# static fields
.field public static h:Le/a/k0/n/b/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

.field public d:I

.field public e:Le/a/k0/n/b/p;

.field public f:Le/a/k0/n/b/h$b;

.field public final g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/k0/n/b/i$a;

    invoke-direct {v0, p0}, Le/a/k0/n/b/i$a;-><init>(Le/a/k0/n/b/i;)V

    iput-object v0, p0, Le/a/k0/n/b/i;->g:Landroid/content/ServiceConnection;

    .line 3
    iput-object p1, p0, Le/a/k0/n/b/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/i;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    iget v1, p0, Le/a/k0/n/b/i;->d:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c()V

    .line 5
    :cond_0
    new-instance v2, Le/a/k0/n/b/g;

    invoke-direct {v2, v0}, Le/a/k0/n/b/g;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    .line 6
    iget-object v3, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->e:Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Le/a/k0/n/b/f;->setWindowManager(Landroid/view/WindowManager;)V

    .line 7
    iget-object v2, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    .line 8
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->h:Le/a/k0/a/j;

    .line 9
    invoke-interface {v3}, Le/a/k0/a/j;->g()I

    move-result v6

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v7, 0x80008

    const/4 v8, -0x3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v3, 0x0

    .line 10
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 11
    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 12
    invoke-virtual {v2, v9}, Le/a/k0/n/b/f;->setViewParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 13
    iget-object v2, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Le/a/k0/n/b/g;->setVisibility(I)V

    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    iget-object v1, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    .line 16
    iget-object v2, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c:Landroid/os/Handler;

    new-instance v3, Le/a/k0/n/b/b;

    invoke-direct {v3, v0, v1}, Le/a/k0/n/b/b;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Le/a/k0/n/b/f;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    new-instance v1, Le/a/k0/n/b/h$a;

    invoke-direct {v1, v0}, Le/a/k0/n/b/h$a;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;)V

    .line 18
    invoke-virtual {v0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->b()Landroid/view/WindowManager;

    move-result-object v2

    .line 19
    iget-object v1, v1, Le/a/k0/n/b/h$a;->a:Le/a/k0/n/b/h;

    iput-object v2, v1, Le/a/k0/n/b/h;->b:Landroid/view/WindowManager;

    .line 20
    iget-object v2, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->g:Le/a/k0/n/b/h$b;

    .line 21
    iput-object v2, v1, Le/a/k0/n/b/h;->d:Le/a/k0/n/b/h$b;

    .line 22
    iget-object v2, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->d:Le/a/k0/n/b/g;

    .line 23
    iput-object v2, v1, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    .line 24
    iput-object v1, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->f:Le/a/k0/n/b/h;

    :cond_1
    return-void
.end method

.method public b(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/k0/n/b/i;->b:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/k0/n/b/i;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c:Landroid/os/Handler;

    new-instance v2, Le/a/k0/n/b/e;

    invoke-direct {v2, v0, p1}, Le/a/k0/n/b/e;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
