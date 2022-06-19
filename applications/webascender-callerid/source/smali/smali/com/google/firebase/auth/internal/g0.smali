.class final Lcom/google/firebase/auth/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/j0;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/auth/internal/g0;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/internal/j0;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failed to get reCAPTCHA token with error [%s]- calling backend without app verification"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/firebase/auth/internal/g0;->a:Lcom/google/android/gms/tasks/h;

    new-instance v0, Lcom/google/firebase/auth/internal/i0;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1, v1}, Lcom/google/firebase/auth/internal/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-void
.end method
