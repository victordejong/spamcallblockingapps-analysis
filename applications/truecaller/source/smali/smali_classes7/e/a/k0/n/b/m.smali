.class public final Le/a/k0/n/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$e;


# instance fields
.field public final synthetic a:Le/a/k0/n/b/k;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/k;Ljava/lang/String;Le/a/k0/n/b/j$a;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/b/m;->a:Le/a/k0/n/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/k0/n/b/m;->a:Le/a/k0/n/b/k;

    .line 2
    iget-object v0, p1, Le/a/k0/n/b/k;->a:Le/a/k0/n/b/i;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, v0, Le/a/k0/n/b/i;->b:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Le/a/k0/n/b/i;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    invoke-virtual {v0}, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c()V

    goto :goto_0

    .line 5
    :cond_0
    const-class v0, Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p1, Le/a/k0/n/b/k;->a:Le/a/k0/n/b/i;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, v0, Le/a/k0/n/b/i;->a:Landroid/content/Context;

    iget-object v0, v0, Le/a/k0/n/b/i;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, Le/a/k0/n/b/k;->a:Le/a/k0/n/b/i;

    .line 9
    iget-object v1, p1, Le/a/k0/n/b/k;->d:Ljava/util/Timer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 10
    :cond_3
    iput-object v0, p1, Le/a/k0/n/b/k;->d:Ljava/util/Timer;

    return-void
.end method
