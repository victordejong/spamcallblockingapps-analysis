.class public final enum Le/m/h/a/d/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/h/a/d/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/h/a/d/k;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum b:Le/m/h/a/d/k;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum c:Le/m/h/a/d/k;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum d:Le/m/h/a/d/k;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum e:Le/m/h/a/d/k;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum f:Le/m/h/a/d/k;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final synthetic g:[Le/m/h/a/d/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Le/m/h/a/d/k;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/h/a/d/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/h/a/d/k;->a:Le/m/h/a/d/k;

    .line 2
    new-instance v1, Le/m/h/a/d/k;

    const-string v3, "BASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/h/a/d/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/h/a/d/k;->b:Le/m/h/a/d/k;

    .line 3
    new-instance v3, Le/m/h/a/d/k;

    const-string v5, "AUTOML"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/h/a/d/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/h/a/d/k;->c:Le/m/h/a/d/k;

    .line 4
    new-instance v5, Le/m/h/a/d/k;

    const-string v7, "TRANSLATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/m/h/a/d/k;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    .line 5
    new-instance v7, Le/m/h/a/d/k;

    const-string v9, "ENTITY_EXTRACTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le/m/h/a/d/k;-><init>(Ljava/lang/String;I)V

    sput-object v7, Le/m/h/a/d/k;->e:Le/m/h/a/d/k;

    .line 6
    new-instance v9, Le/m/h/a/d/k;

    const-string v11, "CUSTOM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Le/m/h/a/d/k;-><init>(Ljava/lang/String;I)V

    sput-object v9, Le/m/h/a/d/k;->f:Le/m/h/a/d/k;

    const/4 v11, 0x6

    new-array v11, v11, [Le/m/h/a/d/k;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Le/m/h/a/d/k;->g:[Le/m/h/a/d/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Le/m/h/a/d/k;
    .locals 1

    .line 1
    sget-object v0, Le/m/h/a/d/k;->g:[Le/m/h/a/d/k;

    invoke-virtual {v0}, [Le/m/h/a/d/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/h/a/d/k;

    return-object v0
.end method
