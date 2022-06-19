.class final Lcom/google/firebase/auth/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/e<",
        "Lg/f/a/d/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;

.field final synthetic b:Lcom/google/firebase/auth/FirebaseAuth;

.field final synthetic c:Lcom/google/firebase/auth/internal/f0;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/google/firebase/auth/internal/j0;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/j0;Lcom/google/android/gms/tasks/h;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/f0;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/s;->e:Lcom/google/firebase/auth/internal/j0;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/s;->a:Lcom/google/android/gms/tasks/h;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/s;->b:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/s;->c:Lcom/google/firebase/auth/internal/f0;

    iput-object p5, p0, Lcom/google/firebase/auth/internal/s;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lg/f/a/d/d/d;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/y;->a(Lg/f/a/d/d/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/internal/s;->a:Lcom/google/android/gms/tasks/h;

    new-instance v1, Lcom/google/firebase/auth/internal/i0;

    invoke-virtual {p1}, Lg/f/a/d/d/d;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/auth/internal/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/s;->e:Lcom/google/firebase/auth/internal/j0;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/s;->b:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/s;->c:Lcom/google/firebase/auth/internal/f0;

    iget-object v2, p0, Lcom/google/firebase/auth/internal/s;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/firebase/auth/internal/s;->a:Lcom/google/android/gms/tasks/h;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/firebase/auth/internal/j0;->d(Lcom/google/firebase/auth/internal/j0;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/f0;Landroid/app/Activity;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
