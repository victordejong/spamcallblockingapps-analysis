.class public final Le/a/k0/n/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$d;


# instance fields
.field public final synthetic a:Le/a/k0/n/b/k;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/k;Ljava/lang/String;Le/a/k0/n/b/j$a;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/b/n;->a:Le/a/k0/n/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/k0/n/b/n;->a:Le/a/k0/n/b/k;

    .line 2
    iget-object v0, p1, Le/a/k0/n/b/k;->h:Landroid/content/Context;

    invoke-static {v0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p1, Le/a/k0/n/b/k;->e:Le/a/k0/n/b/k$a;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object p1, p1, Le/a/k0/n/b/k;->c:Le/a/k0/n/c/g;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/k0/n/c/g;->mc(Z)V

    :cond_0
    return-void
.end method
