.class public final enum Lcom/google/android/libraries/places/api/model/DayOfWeek;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/libraries/places/api/model/DayOfWeek;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/api/model/DayOfWeek;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FRIDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field public static final enum MONDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field public static final enum SATURDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field public static final enum SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field public static final enum THURSDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field public static final enum TUESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field public static final enum WEDNESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field private static final synthetic zza:[Lcom/google/android/libraries/places/api/model/DayOfWeek;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const-string v1, "SUNDAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/api/model/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const-string v3, "MONDAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/api/model/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/libraries/places/api/model/DayOfWeek;->MONDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 3
    new-instance v3, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const-string v5, "TUESDAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/api/model/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/libraries/places/api/model/DayOfWeek;->TUESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 4
    new-instance v5, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const-string v7, "WEDNESDAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/libraries/places/api/model/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/libraries/places/api/model/DayOfWeek;->WEDNESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 5
    new-instance v7, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const-string v9, "THURSDAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/android/libraries/places/api/model/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/android/libraries/places/api/model/DayOfWeek;->THURSDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 6
    new-instance v9, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const-string v11, "FRIDAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/android/libraries/places/api/model/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/android/libraries/places/api/model/DayOfWeek;->FRIDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 7
    new-instance v11, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const-string v13, "SATURDAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/android/libraries/places/api/model/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SATURDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/libraries/places/api/model/DayOfWeek;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/google/android/libraries/places/api/model/DayOfWeek;->zza:[Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 9
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzbb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/DayOfWeek;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    return-object p0
.end method

.method public static values()[Lcom/google/android/libraries/places/api/model/DayOfWeek;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->zza:[Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/api/model/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/api/model/DayOfWeek;

    return-object v0
.end method

.method public static zza(Landroid/os/Parcel;)Lcom/google/android/libraries/places/api/model/DayOfWeek;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/api/model/DayOfWeek;->valueOf(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object p0

    return-object p0
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
