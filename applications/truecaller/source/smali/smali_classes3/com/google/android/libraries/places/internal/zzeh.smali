.class public final enum Lcom/google/android/libraries/places/internal/zzeh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzeh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zzf:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zzg:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zzh:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zzi:Lcom/google/android/libraries/places/internal/zzeh;

.field public static final enum zzj:Lcom/google/android/libraries/places/internal/zzeh;

.field private static final synthetic zzk:[Lcom/google/android/libraries/places/internal/zzeh;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzeh;->zza:Lcom/google/android/libraries/places/internal/zzeh;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v3, "RESET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzeh;->zzb:Lcom/google/android/libraries/places/internal/zzeh;

    .line 3
    new-instance v3, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v5, "LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/internal/zzeh;->zzc:Lcom/google/android/libraries/places/internal/zzeh;

    .line 4
    new-instance v5, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v7, "TRY_AGAIN_PROGRESS_LOADING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzeh;->zzd:Lcom/google/android/libraries/places/internal/zzeh;

    .line 5
    new-instance v7, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v9, "SUCCESS_PREDICTIONS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzeh;->zze:Lcom/google/android/libraries/places/internal/zzeh;

    .line 6
    new-instance v9, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v11, "FAILURE_NO_PREDICTIONS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/libraries/places/internal/zzeh;->zzf:Lcom/google/android/libraries/places/internal/zzeh;

    .line 7
    new-instance v11, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v13, "FAILURE_PREDICTIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/libraries/places/internal/zzeh;->zzg:Lcom/google/android/libraries/places/internal/zzeh;

    .line 8
    new-instance v13, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v15, "SUCCESS_SELECTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/android/libraries/places/internal/zzeh;->zzh:Lcom/google/android/libraries/places/internal/zzeh;

    .line 9
    new-instance v15, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v14, "FAILURE_SELECTION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/android/libraries/places/internal/zzeh;->zzi:Lcom/google/android/libraries/places/internal/zzeh;

    .line 10
    new-instance v14, Lcom/google/android/libraries/places/internal/zzeh;

    const-string v12, "FAILURE_UNRESOLVABLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/android/libraries/places/internal/zzeh;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/android/libraries/places/internal/zzeh;->zzj:Lcom/google/android/libraries/places/internal/zzeh;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/google/android/libraries/places/internal/zzeh;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lcom/google/android/libraries/places/internal/zzeh;->zzk:[Lcom/google/android/libraries/places/internal/zzeh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method private static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzeh;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzeh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzeh;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzeh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzeh;->zzk:[Lcom/google/android/libraries/places/internal/zzeh;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzeh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzeh;

    return-object v0
.end method
