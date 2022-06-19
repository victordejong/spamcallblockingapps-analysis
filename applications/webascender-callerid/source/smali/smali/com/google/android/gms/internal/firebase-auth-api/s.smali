.class abstract Lcom/google/android/gms/internal/firebase-auth-api/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/firebase-auth-api/s;

.field private static final b:Lcom/google/android/gms/internal/firebase-auth-api/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/p;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/s;->a:Lcom/google/android/gms/internal/firebase-auth-api/s;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/r;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/p;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/s;->b:Lcom/google/android/gms/internal/firebase-auth-api/s;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d()Lcom/google/android/gms/internal/firebase-auth-api/s;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/s;->a:Lcom/google/android/gms/internal/firebase-auth-api/s;

    return-object v0
.end method

.method static e()Lcom/google/android/gms/internal/firebase-auth-api/s;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/s;->b:Lcom/google/android/gms/internal/firebase-auth-api/s;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;J)V
.end method

.method abstract c(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
