.class public final Le/m/h/b/b/e/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/m/h/b/b/e/e;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/h/b/b/e/g;->a:Le/m/h/b/b/e/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object p1

    .line 2
    iget-object p1, p1, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 3
    iget-object p2, p0, Le/m/h/b/b/e/g;->a:Le/m/h/b/b/e/e;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Le/m/h/b/b/e/i;

    invoke-direct {v0, p2}, Le/m/h/b/b/e/i;-><init>(Le/m/h/b/b/e/e;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
