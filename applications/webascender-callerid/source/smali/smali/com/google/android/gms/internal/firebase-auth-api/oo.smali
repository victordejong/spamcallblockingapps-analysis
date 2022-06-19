.class public final Lcom/google/android/gms/internal/firebase-auth-api/oo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/wk;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/firebase-auth-api/oo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/oo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/oo;-><init>()V

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->g:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->h:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->k:Z

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/firebase-auth-api/oo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/oo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/oo;-><init>()V

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->f:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->i:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->k:Z

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->j:Ljava/lang/String;

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->i:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->f:Ljava/lang/String;

    const-string v2, "phoneNumber"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->i:Ljava/lang/String;

    const-string v2, "temporaryProof"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->g:Ljava/lang/String;

    const-string v2, "sessionInfo"

    .line 6
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->h:Ljava/lang/String;

    const-string v2, "code"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "idToken"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/oo;->k:Z

    if-nez v1, :cond_2

    const/4 v1, 0x2

    const-string v2, "operation"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
