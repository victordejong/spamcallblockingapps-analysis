.class public final Lg/f/a/d/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/d;

.field public static final b:Lcom/google/android/gms/common/d;

.field public static final c:Lcom/google/android/gms/common/d;

.field public static final d:[Lcom/google/android/gms/common/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/d;

    const-string v1, "sms_code_autofill"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lg/f/a/d/c/b/b;->a:Lcom/google/android/gms/common/d;

    .line 2
    new-instance v1, Lcom/google/android/gms/common/d;

    const-string v2, "sms_retrieve"

    const-wide/16 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lg/f/a/d/c/b/b;->b:Lcom/google/android/gms/common/d;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/d;

    const-string v3, "user_consent"

    const-wide/16 v4, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lg/f/a/d/c/b/b;->c:Lcom/google/android/gms/common/d;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/common/d;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 4
    sput-object v3, Lg/f/a/d/c/b/b;->d:[Lcom/google/android/gms/common/d;

    return-void
.end method
