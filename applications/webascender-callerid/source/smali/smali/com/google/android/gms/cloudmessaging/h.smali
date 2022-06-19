.class final synthetic Lcom/google/android/gms/cloudmessaging/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/android/gms/cloudmessaging/b;

.field private final g:Landroid/content/Intent;

.field private final h:Landroid/content/Context;

.field private final i:Z

.field private final j:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/b;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/h;->f:Lcom/google/android/gms/cloudmessaging/b;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/h;->g:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/gms/cloudmessaging/h;->h:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/google/android/gms/cloudmessaging/h;->i:Z

    iput-object p5, p0, Lcom/google/android/gms/cloudmessaging/h;->j:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/h;->f:Lcom/google/android/gms/cloudmessaging/b;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/h;->g:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/cloudmessaging/h;->h:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/android/gms/cloudmessaging/h;->i:Z

    iget-object v4, p0, Lcom/google/android/gms/cloudmessaging/h;->j:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/cloudmessaging/b;->f(Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
