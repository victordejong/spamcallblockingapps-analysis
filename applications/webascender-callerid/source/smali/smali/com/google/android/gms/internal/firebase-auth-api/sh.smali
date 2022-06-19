.class final Lcom/google/android/gms/internal/firebase-auth-api/sh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/vm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/en;

.field final synthetic c:Lcom/google/android/gms/internal/firebase-auth-api/th;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/th;Lcom/google/android/gms/internal/firebase-auth-api/nl;Lcom/google/android/gms/internal/firebase-auth-api/en;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sh;->c:Lcom/google/android/gms/internal/firebase-auth-api/th;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/sh;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/sh;->b:Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/vm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/vm;->y1()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sh;->c:Lcom/google/android/gms/internal/firebase-auth-api/th;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/th;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sh;->b:Lcom/google/android/gms/internal/firebase-auth-api/en;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/xm;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sh;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    const-string v0, "No users"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sh;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method
