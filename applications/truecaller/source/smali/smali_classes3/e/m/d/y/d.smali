.class public final synthetic Le/m/d/y/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public synthetic a:Le/m/d/y/g;

.field public synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Le/m/d/y/g;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/d;->a:Le/m/d/y/g;

    iput-object p2, p0, Le/m/d/y/d;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Le/m/d/y/d;->a:Le/m/d/y/g;

    iget-object v1, p0, Le/m/d/y/d;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Le/m/d/y/g;->lambda$onStartCommand$1$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
