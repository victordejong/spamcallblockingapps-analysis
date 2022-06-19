.class final Lcom/google/firebase/auth/internal/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/e<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/j0;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/auth/internal/h0;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/h0;->a:Lcom/google/android/gms/tasks/h;

    new-instance v1, Lcom/google/firebase/auth/internal/i0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/firebase/auth/internal/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-void
.end method
