.class public final Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;
.super Lcom/truecaller/android/sdk/oAuth/TcOAuthError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/oAuth/TcOAuthError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TruecallerActivityNotFoundError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;

    new-instance v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError$a;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError$a;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xf

    const-string v1, "Truecaller activity not found"

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;-><init>(ILjava/lang/String;Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
