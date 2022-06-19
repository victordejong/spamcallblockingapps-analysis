.class public final Lcom/google/android/gms/internal/firebase-auth-api/uk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zj;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zj;",
            "Lcom/google/android/gms/internal/firebase-auth-api/tk;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/internal/firebase-auth-api/tk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/uk;->a:Lcom/google/android/gms/common/api/a$g;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/rk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/rk;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/uk;->b:Lcom/google/android/gms/common/api/a$a;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "InternalFirebaseAuth.FIREBASE_AUTH_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/uk;->c:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/tk;)Lcom/google/android/gms/internal/firebase-auth-api/vj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/vj;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/vj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/tk;)V

    return-object v0
.end method
