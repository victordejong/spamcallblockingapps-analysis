.class public final synthetic Le/m/d/y/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/w;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Le/m/d/y/w;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/m/d/y/w;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Le/m/d/y/w;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v2, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Le/m/d/u/a/a;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Le/m/d/g;

    invoke-static {v0}, Le/m/d/y/g0;->b(Le/m/d/g;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "FCM"

    invoke-interface {v2, v0, v3}, Le/m/d/u/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v2, v0}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
