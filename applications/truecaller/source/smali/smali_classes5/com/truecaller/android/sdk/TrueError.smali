.class public Lcom/truecaller/android/sdk/TrueError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/TrueError;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_PROFILE_NOT_FOUND:I = 0x3

.field public static final ERROR_TYPE:Ljava/lang/String; = "TRUEERROR_ERROR_TYPE"

.field public static final ERROR_TYPE_ACTIVITY_NOT_FOUND:I = 0xf

.field public static final ERROR_TYPE_CONTINUE_WITH_DIFFERENT_NUMBER:I = 0xe

.field public static final ERROR_TYPE_DEVICE_NOT_SUPPORTED:I = 0x10

.field public static final ERROR_TYPE_INTERNAL:I = 0x0

.field public static final ERROR_TYPE_INVALID_ACCOUNT_STATE:I = 0xa

.field public static final ERROR_TYPE_NETWORK:I = 0x1

.field public static final ERROR_TYPE_PARTNER_INFO_NULL:I = 0xc

.field public static final ERROR_TYPE_POSSIBLE_REQ_CODE_COLLISION:I = 0x7

.field public static final ERROR_TYPE_REQUEST_NONCE_MISMATCH:I = 0x9

.field public static final ERROR_TYPE_RESPONSE_SIGNATURE_MISMATCH:I = 0x8

.field public static final ERROR_TYPE_TC_NOT_INSTALLED:I = 0xb

.field public static final ERROR_TYPE_TRUECALLER_CLOSED_UNEXPECTEDLY:I = 0x5

.field public static final ERROR_TYPE_TRUESDK_TOO_OLD:I = 0x6

.field public static final ERROR_TYPE_UNAUTHORIZED_USER:I = 0x4

.field public static final ERROR_TYPE_USER_DENIED:I = 0x2

.field public static final ERROR_TYPE_USER_DENIED_WHILE_LOADING:I = 0xd


# instance fields
.field private final mErrorType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/android/sdk/TrueError$a;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/TrueError$a;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/TrueError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/truecaller/android/sdk/TrueError;->mErrorType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TRUEERROR_ERROR_TYPE"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/truecaller/android/sdk/TrueError;->mErrorType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/android/sdk/TrueError;->mErrorType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/truecaller/android/sdk/TrueError$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/TrueError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/TrueError;->mErrorType:I

    return v0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/TrueError;->mErrorType:I

    const-string v1, "TRUEERROR_ERROR_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/truecaller/android/sdk/TrueError;->mErrorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
