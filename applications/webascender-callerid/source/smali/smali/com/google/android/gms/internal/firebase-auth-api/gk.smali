.class public interface abstract Lcom/google/android/gms/internal/firebase-auth-api/gk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/common/l/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/l/a;

    const-string v1, "GetAuthDomainTaskResponseHandler"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/l/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/gk;->b:Lcom/google/android/gms/common/l/a;

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract c(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract k()Landroid/content/Context;
.end method

.method public abstract m(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract r(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
.end method

.method public abstract v(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V
.end method
