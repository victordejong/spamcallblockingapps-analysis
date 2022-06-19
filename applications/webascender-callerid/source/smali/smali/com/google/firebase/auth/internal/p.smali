.class public final Lcom/google/firebase/auth/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/google/firebase/auth/internal/p;


# instance fields
.field private a:Z

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/p;->a:Z

    return-void
.end method

.method public static a()Lcom/google/firebase/auth/internal/p;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/p;->c:Lcom/google/firebase/auth/internal/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/auth/internal/p;

    .line 1
    invoke-direct {v0}, Lcom/google/firebase/auth/internal/p;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/p;->c:Lcom/google/firebase/auth/internal/p;

    :cond_0
    sget-object v0, Lcom/google/firebase/auth/internal/p;->c:Lcom/google/firebase/auth/internal/p;

    return-object v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/auth/internal/p;->c:Lcom/google/firebase/auth/internal/p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/firebase/auth/internal/p;->a:Z

    .line 1
    iget-object v0, v0, Lcom/google/firebase/auth/internal/p;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lf/q/a/a;->b(Landroid/content/Context;)Lf/q/a/a;

    move-result-object p0

    sget-object v0, Lcom/google/firebase/auth/internal/p;->c:Lcom/google/firebase/auth/internal/p;

    iget-object v0, v0, Lcom/google/firebase/auth/internal/p;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lf/q/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget-object p0, Lcom/google/firebase/auth/internal/p;->c:Lcom/google/firebase/auth/internal/p;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/p;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private final d(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V
    .locals 2

    iput-object p2, p0, Lcom/google/firebase/auth/internal/p;->b:Landroid/content/BroadcastReceiver;

    .line 1
    invoke-static {p1}, Lf/q/a/a;->b(Landroid/content/Context;)Lf/q/a/a;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2, v0}, Lf/q/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;Lcom/google/android/gms/tasks/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/p;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/auth/internal/o;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/internal/o;-><init>(Lcom/google/firebase/auth/internal/p;Landroid/app/Activity;Lcom/google/android/gms/tasks/h;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/internal/p;->d(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/p;->a:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
