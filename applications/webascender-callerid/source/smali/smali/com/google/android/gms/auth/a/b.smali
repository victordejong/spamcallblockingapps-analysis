.class public final Lcom/google/android/gms/auth/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lg/f/a/d/c/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lg/f/a/d/c/d/b;",
            "Lcom/google/android/gms/auth/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/auth/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/auth/a/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/b;->a:Lcom/google/android/gms/common/api/a$g;

    .line 2
    new-instance v1, Lcom/google/android/gms/auth/a/f;

    invoke-direct {v1}, Lcom/google/android/gms/auth/a/f;-><init>()V

    sput-object v1, Lcom/google/android/gms/auth/a/b;->b:Lcom/google/android/gms/common/api/a$a;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/google/android/gms/auth/a/b;->c:Lcom/google/android/gms/common/api/a;

    .line 4
    new-instance v0, Lg/f/a/d/c/d/e;

    invoke-direct {v0}, Lg/f/a/d/c/d/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/a/b;->d:Lcom/google/android/gms/auth/a/e/a;

    return-void
.end method
