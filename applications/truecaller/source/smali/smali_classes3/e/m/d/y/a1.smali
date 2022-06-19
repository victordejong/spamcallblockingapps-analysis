.class public Le/m/d/y/a1;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/y/a1$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/d/y/a1$a;


# direct methods
.method public constructor <init>(Le/m/d/y/a1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Le/m/d/y/a1;->a:Le/m/d/y/a1$a;

    return-void
.end method


# virtual methods
.method public a(Le/m/d/y/d1$a;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 3
    iget-object v0, p0, Le/m/d/y/a1;->a:Le/m/d/y/a1$a;

    .line 4
    iget-object v1, p1, Le/m/d/y/d1$a;->a:Landroid/content/Intent;

    .line 5
    check-cast v0, Le/m/d/y/g$a;

    .line 6
    iget-object v0, v0, Le/m/d/y/g$a;->a:Le/m/d/y/g;

    invoke-static {v0, v1}, Le/m/d/y/g;->-$$Nest$mprocessIntent(Le/m/d/y/g;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 7
    sget-object v1, Le/m/d/y/z0;->a:Le/m/d/y/z0;

    new-instance v2, Le/m/d/y/y0;

    invoke-direct {v2, p1}, Le/m/d/y/y0;-><init>(Le/m/d/y/d1$a;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
