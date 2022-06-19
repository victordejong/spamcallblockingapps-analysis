.class public final Le/a/p5/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p5/j0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p5/k0;->b:Landroid/content/Context;

    .line 2
    sget-object p1, Le/a/p5/k0$b;->b:Le/a/p5/k0$b;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/p5/k0;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/p5/k0;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Le/a/p5/s0/g;->R1(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/p5/k0;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 4
    new-instance v1, Le/a/p5/k0$a;

    invoke-direct {v1, p0, p1, p2, p3}, Le/a/p5/k0$a;-><init>(Le/a/p5/k0;ILjava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
