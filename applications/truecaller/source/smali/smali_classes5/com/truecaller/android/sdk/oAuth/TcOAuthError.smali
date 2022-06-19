.class public abstract Lcom/truecaller/android/sdk/oAuth/TcOAuthError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$DeviceNotSupported;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$OldSdkError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError;,
        Lcom/truecaller/android/sdk/oAuth/TcOAuthError$ApiError;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;->a:I

    iput-object p2, p0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;->b:Ljava/lang/String;

    return-void
.end method
