.class final Lcom/google/firebase/auth/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/internal/l;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/k;->a:Lcom/google/firebase/auth/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of p1, p1, Lcom/google/firebase/FirebaseNetworkException;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/internal/m;->d()Lcom/google/android/gms/common/l/a;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failure to refresh token; scheduling refresh after failure"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/l/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/firebase/auth/internal/k;->a:Lcom/google/firebase/auth/internal/l;

    iget-object p1, p1, Lcom/google/firebase/auth/internal/l;->g:Lcom/google/firebase/auth/internal/m;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/m;->b()V

    :cond_0
    return-void
.end method
