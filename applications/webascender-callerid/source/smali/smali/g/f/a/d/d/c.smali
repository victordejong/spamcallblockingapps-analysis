.class public final Lg/f/a/d/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "Lg/f/a/d/c/l/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "Lg/f/a/d/c/l/m;",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "Lcom/google/android/gms/common/api/a$d$d;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lg/f/a/d/d/c;->a:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lg/f/a/d/d/q;

    invoke-direct {v1}, Lg/f/a/d/d/q;-><init>()V

    sput-object v1, Lg/f/a/d/d/c;->b:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "SafetyNet.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lg/f/a/d/d/c;->c:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lg/f/a/d/c/l/j;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lg/f/a/d/d/f;
    .locals 1

    new-instance v0, Lg/f/a/d/d/f;

    invoke-direct {v0, p0}, Lg/f/a/d/d/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
