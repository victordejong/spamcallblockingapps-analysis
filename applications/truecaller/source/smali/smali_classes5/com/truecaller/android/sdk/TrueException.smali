.class public final Lcom/truecaller/android/sdk/TrueException;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_API:I = 0x2

.field public static final TYPE_APP_SIGNATURE_MISSING:Ljava/lang/String; = "Could not fetch application\'s signature"

.field public static final TYPE_CLIENT_MISSING:Ljava/lang/String; = "No compatible client available. Please change your scope"

.field public static final TYPE_INCOMPLETE_INFO:I = 0x5

.field public static final TYPE_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "internal service error"

.field public static final TYPE_INVALID_NAME_MESSAGE:Ljava/lang/String; = "Please provide a valid name"

.field public static final TYPE_MISSING_API_CALL:I = 0x3

.field public static final TYPE_MISSING_CREATE_CALL_MESSAGE:Ljava/lang/String; = "Please call createInstallation first"

.field public static final TYPE_MISSING_PERMISSION:I = 0x4

.field public static final TYPE_MISSING_PERMISSIONS_MESSAGE:Ljava/lang/String; = "Required permissions missing"

.field public static final TYPE_PARTNER_KEY:Ljava/lang/String; = "Add partner key in your manifest"

.field public static final TYPE_SDK_NOT_INITIALIZED:Ljava/lang/String; = "Please call init() on TruecallerSDK first"

.field public static final TYPE_UNKNOWN:I = 0x1

.field public static final TYPE_UNKNOWN_MESSAGE:Ljava/lang/String; = "Unknown error"


# instance fields
.field private final mExceptionMessage:Ljava/lang/String;

.field private final mExceptionType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/truecaller/android/sdk/TrueException;->mExceptionType:I

    .line 3
    iput-object p2, p0, Lcom/truecaller/android/sdk/TrueException;->mExceptionMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExceptionMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/TrueException;->mExceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/android/sdk/TrueException;->mExceptionType:I

    return v0
.end method
