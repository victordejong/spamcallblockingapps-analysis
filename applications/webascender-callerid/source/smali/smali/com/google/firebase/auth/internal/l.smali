.class final Lcom/google/firebase/auth/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Ljava/lang/String;

.field final synthetic g:Lcom/google/firebase/auth/internal/m;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/l;->g:Lcom/google/firebase/auth/internal/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/l;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/auth/internal/l;->f:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/c;->j(Ljava/lang/String;)Lcom/google/firebase/c;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/c;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/g;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->a(Z)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/firebase/auth/internal/m;->d()Lcom/google/android/gms/common/l/a;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Token refreshing started"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/l/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v1, Lcom/google/firebase/auth/internal/k;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/internal/k;-><init>(Lcom/google/firebase/auth/internal/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->f(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    :cond_0
    return-void
.end method
