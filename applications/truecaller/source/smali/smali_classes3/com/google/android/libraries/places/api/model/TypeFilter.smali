.class public final enum Lcom/google/android/libraries/places/api/model/TypeFilter;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/api/model/TypeFilter;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum ADDRESS:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field public static final enum CITIES:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/api/model/TypeFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ESTABLISHMENT:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field public static final enum GEOCODE:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field public static final enum REGIONS:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field private static final synthetic zza:[Lcom/google/android/libraries/places/api/model/TypeFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/model/TypeFilter;

    const-string v1, "ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/api/model/TypeFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/api/model/TypeFilter;->ADDRESS:Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/api/model/TypeFilter;

    const-string v3, "CITIES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/api/model/TypeFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/api/model/TypeFilter;->CITIES:Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 3
    new-instance v3, Lcom/google/android/libraries/places/api/model/TypeFilter;

    const-string v5, "ESTABLISHMENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/api/model/TypeFilter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/api/model/TypeFilter;->ESTABLISHMENT:Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 4
    new-instance v5, Lcom/google/android/libraries/places/api/model/TypeFilter;

    const-string v7, "GEOCODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/libraries/places/api/model/TypeFilter;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/libraries/places/api/model/TypeFilter;->GEOCODE:Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 5
    new-instance v7, Lcom/google/android/libraries/places/api/model/TypeFilter;

    const-string v9, "REGIONS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/libraries/places/api/model/TypeFilter;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/libraries/places/api/model/TypeFilter;->REGIONS:Lcom/google/android/libraries/places/api/model/TypeFilter;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/libraries/places/api/model/TypeFilter;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/google/android/libraries/places/api/model/TypeFilter;->zza:[Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzbg;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzbg;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/api/model/TypeFilter;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/TypeFilter;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/api/model/TypeFilter;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/api/model/TypeFilter;->zza:[Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/api/model/TypeFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/api/model/TypeFilter;

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
