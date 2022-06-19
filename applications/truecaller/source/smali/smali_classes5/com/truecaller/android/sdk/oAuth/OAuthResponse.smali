.class public abstract Lcom/truecaller/android/sdk/oAuth/OAuthResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;,
        Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;,
        Lcom/truecaller/android/sdk/oAuth/OAuthResponse$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00082\u00020\u0001:\u0003\t\n\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005\u0082\u0001\u0002\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/oAuth/OAuthResponse;",
        "Landroid/os/Parcelable;",
        "",
        "isSuccessful",
        "Z",
        "()Z",
        "<init>",
        "(Z)V",
        "Companion",
        "a",
        "FailureResponse",
        "SuccessResponse",
        "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;",
        "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;",
        "sdk-external_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/android/sdk/oAuth/OAuthResponse$a;

.field public static final OAUTH_RESPONSE_EXTRA:Ljava/lang/String; = "OAUTH_SDK_RESPONSE_EXTRA"


# instance fields
.field private final isSuccessful:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->Companion:Lcom/truecaller/android/sdk/oAuth/OAuthResponse$a;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->isSuccessful:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final isSuccessful()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->isSuccessful:Z

    return v0
.end method
