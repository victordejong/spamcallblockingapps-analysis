.class public final enum Le/m/h/a/d/n/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/h/a/d/n/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/h/a/d/n/d;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum b:Le/m/h/a/d/n/d;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum c:Le/m/h/a/d/n/d;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final synthetic d:[Le/m/h/a/d/n/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/m/h/a/d/n/d;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/h/a/d/n/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/h/a/d/n/d;->a:Le/m/h/a/d/n/d;

    .line 2
    new-instance v1, Le/m/h/a/d/n/d;

    const-string v3, "TFLITE_VERSION_INCOMPATIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/h/a/d/n/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/h/a/d/n/d;->b:Le/m/h/a/d/n/d;

    .line 3
    new-instance v3, Le/m/h/a/d/n/d;

    const-string v5, "MODEL_FORMAT_INVALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/h/a/d/n/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/h/a/d/n/d;->c:Le/m/h/a/d/n/d;

    const/4 v5, 0x3

    new-array v5, v5, [Le/m/h/a/d/n/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/m/h/a/d/n/d;->d:[Le/m/h/a/d/n/d;

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

.method public static values()[Le/m/h/a/d/n/d;
    .locals 1

    .line 1
    sget-object v0, Le/m/h/a/d/n/d;->d:[Le/m/h/a/d/n/d;

    invoke-virtual {v0}, [Le/m/h/a/d/n/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/h/a/d/n/d;

    return-object v0
.end method
