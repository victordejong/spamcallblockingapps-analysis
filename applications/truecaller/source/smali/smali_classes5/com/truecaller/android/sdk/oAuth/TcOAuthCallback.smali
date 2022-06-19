.class public interface abstract Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;",
        "",
        "Lcom/truecaller/android/sdk/oAuth/TcOAuthData;",
        "tcOAuthData",
        "Ls1/s;",
        "onSuccess",
        "(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V",
        "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;",
        "tcOAuthError",
        "onFailure",
        "(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V",
        "sdk-external_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V
.end method

.method public abstract onSuccess(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V
.end method
