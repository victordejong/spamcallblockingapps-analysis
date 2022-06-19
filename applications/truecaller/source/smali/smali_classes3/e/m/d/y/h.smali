.class public final synthetic Le/m/d/y/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public synthetic a:Landroid/content/Context;

.field public synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/h;->a:Landroid/content/Context;

    iput-object p2, p0, Le/m/d/y/h;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/m/d/y/h;->a:Landroid/content/Context;

    iget-object v1, p0, Le/m/d/y/h;->b:Landroid/content/Intent;

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x192

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v1}, Le/m/d/y/m;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Le/m/d/y/l;->a:Le/m/d/y/l;

    sget-object v1, Le/m/d/y/j;->a:Le/m/d/y/j;

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method
