.class public final Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;
.super Lcom/truecaller/android/sdk/oAuth/OAuthResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/oAuth/OAuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuccessResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse$a;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse$a;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V
    .locals 2

    const-string v0, "tcOAuthData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;-><init>(ZLs1/z/c/f;)V

    iput-object p1, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;

    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    iget-object p1, p1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/TcOAuthData;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SuccessResponse(tcOAuthData="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
