.class public Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent;-><init>(Landroid/os/Parcel;Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent$a;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent;

    return-object p1
.end method
