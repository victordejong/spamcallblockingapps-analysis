.class public final synthetic Le/m/d/y/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic a:Le/m/d/y/g;

.field public synthetic b:Landroid/content/Intent;

.field public synthetic c:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Le/m/d/y/g;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/e;->a:Le/m/d/y/g;

    iput-object p2, p0, Le/m/d/y/e;->b:Landroid/content/Intent;

    iput-object p3, p0, Le/m/d/y/e;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/d/y/e;->a:Le/m/d/y/g;

    iget-object v1, p0, Le/m/d/y/e;->b:Landroid/content/Intent;

    iget-object v2, p0, Le/m/d/y/e;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2}, Le/m/d/y/g;->lambda$processIntent$0$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
