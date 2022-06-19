.class public final enum Le/m/h/a/d/n/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/h/a/d/n/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/h/a/d/n/a;

.field public static final enum b:Le/m/h/a/d/n/a;

.field public static final enum c:Le/m/h/a/d/n/a;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final enum d:Le/m/h/a/d/n/a;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final synthetic e:[Le/m/h/a/d/n/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/m/h/a/d/n/a;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/h/a/d/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/h/a/d/n/a;->a:Le/m/h/a/d/n/a;

    .line 2
    new-instance v1, Le/m/h/a/d/n/a;

    const-string v3, "SMART_REPLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/h/a/d/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/h/a/d/n/a;->b:Le/m/h/a/d/n/a;

    .line 3
    new-instance v3, Le/m/h/a/d/n/a;

    const-string v5, "TRANSLATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/h/a/d/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/h/a/d/n/a;->c:Le/m/h/a/d/n/a;

    .line 4
    new-instance v5, Le/m/h/a/d/n/a;

    const-string v7, "ENTITY_EXTRACTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/m/h/a/d/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/m/h/a/d/n/a;->d:Le/m/h/a/d/n/a;

    const/4 v7, 0x4

    new-array v7, v7, [Le/m/h/a/d/n/a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/m/h/a/d/n/a;->e:[Le/m/h/a/d/n/a;

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

.method public static values()[Le/m/h/a/d/n/a;
    .locals 1

    .line 1
    sget-object v0, Le/m/h/a/d/n/a;->e:[Le/m/h/a/d/n/a;

    invoke-virtual {v0}, [Le/m/h/a/d/n/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/h/a/d/n/a;

    return-object v0
.end method
