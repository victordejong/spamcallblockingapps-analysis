.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/kj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/n;


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/lj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/lj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/kj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lj;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/kj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lj;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zj;

    check-cast p2, Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/lj;->m(Lcom/google/android/gms/internal/firebase-auth-api/zj;Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
