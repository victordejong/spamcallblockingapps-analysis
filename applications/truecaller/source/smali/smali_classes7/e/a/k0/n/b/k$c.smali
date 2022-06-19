.class public final Le/a/k0/n/b/k$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/n/b/k;->b(Ljava/lang/String;Le/a/k0/n/b/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callrecording.ui.bubble.CallRecordingFloatingButtonManagerImpl$maybeShowCallRecordingButton$1"
    f = "CallRecordingFloatingButtonManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k0/n/b/k;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Le/a/k0/n/b/j$a;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/k;Ljava/lang/String;Le/a/k0/n/b/j$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    iput-object p2, p0, Le/a/k0/n/b/k$c;->f:Ljava/lang/String;

    iput-object p3, p0, Le/a/k0/n/b/k$c;->g:Le/a/k0/n/b/j$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k0/n/b/k$c;

    iget-object v0, p0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    iget-object v1, p0, Le/a/k0/n/b/k$c;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/k0/n/b/k$c;->g:Le/a/k0/n/b/j$a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k0/n/b/k$c;-><init>(Le/a/k0/n/b/k;Ljava/lang/String;Le/a/k0/n/b/j$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k0/n/b/k$c;

    iget-object v0, p0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    iget-object v1, p0, Le/a/k0/n/b/k$c;->f:Ljava/lang/String;

    iget-object v2, p0, Le/a/k0/n/b/k$c;->g:Le/a/k0/n/b/j$a;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k0/n/b/k$c;-><init>(Le/a/k0/n/b/k;Ljava/lang/String;Le/a/k0/n/b/j$a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k0/n/b/k$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    .line 3
    iget-object p1, p1, Le/a/k0/n/b/k;->i:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 4
    invoke-interface {p1}, Le/a/k0/a/e;->I()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/k0/n/b/k$c;->f:Ljava/lang/String;

    iget-object v1, p0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    .line 5
    iget-object v1, v1, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Le/a/b0/q/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/b0/q/c0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Le/a/k0/n/b/k$c$b;

    invoke-direct {p1, p0}, Le/a/k0/n/b/k$c$b;-><init>(Le/a/k0/n/b/k$c;)V

    .line 8
    iget-object v1, p0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    .line 9
    new-instance v2, Le/a/k0/n/b/i$b;

    .line 10
    iget-object v3, v1, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    .line 11
    invoke-direct {v2, v3}, Le/a/k0/n/b/i$b;-><init>(Landroid/content/Context;)V

    .line 12
    sget v3, Lcom/truecaller/callrecording/R$layout;->bubble_trash_layout:I

    .line 13
    iget-object v2, v2, Le/a/k0/n/b/i$b;->a:Le/a/k0/n/b/i;

    .line 14
    iput v3, v2, Le/a/k0/n/b/i;->d:I

    .line 15
    iput-object p1, v2, Le/a/k0/n/b/i;->e:Le/a/k0/n/b/p;

    .line 16
    new-instance p1, Le/a/k0/n/b/k$c$a;

    invoke-direct {p1, p0}, Le/a/k0/n/b/k$c$a;-><init>(Le/a/k0/n/b/k$c;)V

    .line 17
    iput-object p1, v2, Le/a/k0/n/b/i;->f:Le/a/k0/n/b/h$b;

    .line 18
    iget-object p1, v2, Le/a/k0/n/b/i;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, v2, Le/a/k0/n/b/i;->a:Landroid/content/Context;

    const-class v5, Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, v2, Le/a/k0/n/b/i;->g:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 19
    iput-object v2, v1, Le/a/k0/n/b/k;->a:Le/a/k0/n/b/i;

    return-object v0

    .line 20
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/k0/n/b/k$c;->g:Le/a/k0/n/b/j$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/k0/n/b/j$a;->a()V

    :cond_2
    return-object v0
.end method
