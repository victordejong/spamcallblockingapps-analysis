.class public final Lcom/google/android/gms/location/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/common/d;

.field private static final b:Lcom/google/android/gms/common/d;

.field public static final c:Lcom/google/android/gms/common/d;

.field public static final d:Lcom/google/android/gms/common/d;

.field public static final e:[Lcom/google/android/gms/common/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/common/d;

    const-string v1, "name_ulr_private"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/y;->a:Lcom/google/android/gms/common/d;

    .line 2
    new-instance v1, Lcom/google/android/gms/common/d;

    const-string v4, "name_sleep_segment_request"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/location/y;->b:Lcom/google/android/gms/common/d;

    .line 3
    new-instance v4, Lcom/google/android/gms/common/d;

    const-string v5, "support_context_feature_id"

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lcom/google/android/gms/location/y;->c:Lcom/google/android/gms/common/d;

    .line 4
    new-instance v5, Lcom/google/android/gms/common/d;

    const-string v6, "get_current_location"

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lcom/google/android/gms/location/y;->d:Lcom/google/android/gms/common/d;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/android/gms/common/d;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    .line 5
    sput-object v2, Lcom/google/android/gms/location/y;->e:[Lcom/google/android/gms/common/d;

    return-void
.end method
