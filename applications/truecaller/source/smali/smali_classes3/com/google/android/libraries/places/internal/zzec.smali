.class public final enum Lcom/google/android/libraries/places/internal/zzec;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/internal/zzec;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/zzec;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzec;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzec;

.field private static final synthetic zzc:[Lcom/google/android/libraries/places/internal/zzec;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzec;

    const-string v1, "FRAGMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzec;->zza:Lcom/google/android/libraries/places/internal/zzec;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzec;

    const-string v3, "INTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzec;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzec;->zzb:Lcom/google/android/libraries/places/internal/zzec;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/libraries/places/internal/zzec;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/android/libraries/places/internal/zzec;->zzc:[Lcom/google/android/libraries/places/internal/zzec;

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/zzeb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzeb;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzec;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzec;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzec;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzec;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzec;->zzc:[Lcom/google/android/libraries/places/internal/zzec;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzec;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
