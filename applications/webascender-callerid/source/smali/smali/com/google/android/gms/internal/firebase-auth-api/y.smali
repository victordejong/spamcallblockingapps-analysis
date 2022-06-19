.class final Lcom/google/android/gms/internal/firebase-auth-api/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/z1;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/fj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/y;->a:Lcom/google/android/gms/internal/firebase-auth-api/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/firebase-auth-api/a2;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y;->a:Lcom/google/android/gms/internal/firebase-auth-api/fj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/fj;->a(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase-auth-api/ri;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/b;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/b;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/y;Lcom/google/android/gms/internal/firebase-auth-api/a2;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase-auth-api/ri;)V

    return-object v1
.end method
