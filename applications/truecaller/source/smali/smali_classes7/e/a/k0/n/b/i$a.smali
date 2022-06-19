.class public Le/a/k0/n/b/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k0/n/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/n/b/i;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k0/n/b/i$a;->a:Le/a/k0/n/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    :try_start_0
    check-cast p2, Lcom/truecaller/callrecording/ui/bubble/BubblesService$a;

    .line 2
    iget-object p1, p0, Le/a/k0/n/b/i$a;->a:Le/a/k0/n/b/i;

    .line 3
    iget-object p2, p2, Lcom/truecaller/callrecording/ui/bubble/BubblesService$a;->a:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 4
    iput-object p2, p1, Le/a/k0/n/b/i;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 5
    invoke-virtual {p1}, Le/a/k0/n/b/i;->a()V

    .line 6
    iget-object p1, p0, Le/a/k0/n/b/i$a;->a:Le/a/k0/n/b/i;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p1, Le/a/k0/n/b/i;->b:Z

    .line 8
    iget-object p1, p1, Le/a/k0/n/b/i;->e:Le/a/k0/n/b/p;

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Le/a/k0/n/b/p;->a()V

    .line 10
    :cond_0
    iget-object p1, p0, Le/a/k0/n/b/i$a;->a:Le/a/k0/n/b/i;

    .line 11
    iget-object p2, p1, Le/a/k0/n/b/i;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 12
    iget-object p1, p1, Le/a/k0/n/b/i;->f:Le/a/k0/n/b/h$b;

    .line 13
    iput-object p1, p2, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->g:Le/a/k0/n/b/h$b;

    .line 14
    iget-object p2, p2, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->f:Le/a/k0/n/b/h;

    if-eqz p2, :cond_1

    .line 15
    iput-object p1, p2, Le/a/k0/n/b/h;->d:Le/a/k0/n/b/h$b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/k0/n/b/i$a;->a:Le/a/k0/n/b/i;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Le/a/k0/n/b/i;->b:Z

    return-void
.end method
