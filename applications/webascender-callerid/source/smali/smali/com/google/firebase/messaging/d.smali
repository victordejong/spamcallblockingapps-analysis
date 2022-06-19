.class final synthetic Lcom/google/firebase/messaging/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/messaging/g;

.field private final g:Landroid/content/Intent;

.field private final h:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/g;Landroid/content/Intent;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/d;->f:Lcom/google/firebase/messaging/g;

    iput-object p2, p0, Lcom/google/firebase/messaging/d;->g:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/messaging/d;->h:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/d;->f:Lcom/google/firebase/messaging/g;

    iget-object v1, p0, Lcom/google/firebase/messaging/d;->g:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/firebase/messaging/d;->h:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/g;->lambda$processIntent$0$EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
