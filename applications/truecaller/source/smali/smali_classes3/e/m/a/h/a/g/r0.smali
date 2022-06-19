.class public final Le/m/a/h/a/g/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/d0;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/d;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Le/m/a/h/a/g/t0;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/t0;Le/m/a/h/a/g/d;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/g/r0;->d:Le/m/a/h/a/g/t0;

    iput-object p2, p0, Le/m/a/h/a/g/r0;->a:Le/m/a/h/a/g/d;

    iput-object p3, p0, Le/m/a/h/a/g/r0;->b:Landroid/content/Intent;

    iput-object p4, p0, Le/m/a/h/a/g/r0;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 6

    iget-object v0, p0, Le/m/a/h/a/g/r0;->d:Le/m/a/h/a/g/t0;

    iget-object v1, p0, Le/m/a/h/a/g/r0;->a:Le/m/a/h/a/g/d;

    .line 1
    iget-object v2, v0, Le/m/a/h/a/g/t0;->g:Landroid/os/Handler;

    new-instance v3, Le/m/a/h/a/g/s0;

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 2
    invoke-direct {v3, v0, v1, v4, v5}, Le/m/a/h/a/g/s0;-><init>(Le/m/a/h/a/g/t0;Le/m/a/h/a/g/d;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(I)V
    .locals 5

    iget-object v0, p0, Le/m/a/h/a/g/r0;->d:Le/m/a/h/a/g/t0;

    iget-object v1, p0, Le/m/a/h/a/g/r0;->a:Le/m/a/h/a/g/d;

    .line 1
    iget-object v2, v0, Le/m/a/h/a/g/t0;->g:Landroid/os/Handler;

    new-instance v3, Le/m/a/h/a/g/s0;

    const/4 v4, 0x6

    .line 2
    invoke-direct {v3, v0, v1, v4, p1}, Le/m/a/h/a/g/s0;-><init>(Le/m/a/h/a/g/t0;Le/m/a/h/a/g/d;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/g/r0;->b:Landroid/content/Intent;

    const-string v1, "triggered_from_app_after_verification"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/h/a/g/r0;->b:Landroid/content/Intent;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Le/m/a/h/a/g/r0;->c:Landroid/content/Context;

    iget-object v1, p0, Le/m/a/h/a/g/r0;->b:Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v0, p0, Le/m/a/h/a/g/r0;->d:Le/m/a/h/a/g/t0;

    .line 4
    iget-object v0, v0, Le/m/a/h/a/e/c;->a:Le/m/a/h/a/d/g;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Splits copied and verified more than once."

    .line 5
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
