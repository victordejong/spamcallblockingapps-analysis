.class final Lcom/google/firebase/auth/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/auth/internal/d0;


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/o0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/firebase/auth/g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/o0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->t(Lcom/google/firebase/auth/g;Lcom/google/android/gms/internal/firebase-auth-api/en;ZZ)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->y1()I

    move-result p1

    const/16 v0, 0x4273

    if-eq p1, v0, :cond_1

    const/16 v0, 0x427d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x426d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/o0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->j()V

    return-void
.end method
