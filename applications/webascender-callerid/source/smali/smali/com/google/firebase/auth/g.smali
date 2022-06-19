.class public abstract Lcom/google/firebase/auth/g;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/auth/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A1()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/w;",
            ">;"
        }
    .end annotation
.end method

.method public abstract B1()Ljava/lang/String;
.end method

.method public abstract C1()Ljava/lang/String;
.end method

.method public abstract D1()Z
.end method

.method public abstract E1()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract F1(Ljava/util/List;)Lcom/google/firebase/auth/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/w;",
            ">;)",
            "Lcom/google/firebase/auth/g;"
        }
    .end annotation
.end method

.method public abstract G1()Lcom/google/firebase/auth/g;
.end method

.method public abstract H1()Lcom/google/firebase/c;
.end method

.method public abstract I1()Lcom/google/android/gms/internal/firebase-auth-api/en;
.end method

.method public abstract J1(Lcom/google/android/gms/internal/firebase-auth-api/en;)V
.end method

.method public abstract K1()Ljava/lang/String;
.end method

.method public abstract L1()Ljava/lang/String;
.end method

.method public abstract M1(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/m;",
            ">;)V"
        }
    .end annotation
.end method

.method public y1(Z)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/auth/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/g;->H1()Lcom/google/firebase/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/c;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->z(Lcom/google/firebase/auth/g;Z)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public abstract z1()Lcom/google/firebase/auth/l;
.end method
