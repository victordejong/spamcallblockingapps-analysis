.class public final Lcom/google/android/gms/internal/firebase-auth-api/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/wk;


# instance fields
.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/firebase/auth/a;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const-string p1, "REQUEST_TYPE_UNSET_ENUM_VALUE"

    goto :goto_0

    :cond_0
    const-string p1, "VERIFY_AND_CHANGE_EMAIL"

    goto :goto_0

    :cond_1
    const-string p1, "EMAIL_SIGNIN"

    goto :goto_0

    :cond_2
    const-string p1, "VERIFY_EMAIL"

    goto :goto_0

    :cond_3
    const-string p1, "PASSWORD_RESET"

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILcom/google/firebase/auth/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "VERIFY_AND_CHANGE_EMAIL"

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->f:Ljava/lang/String;

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/firebase/auth/a;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->k:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/firebase/auth/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bn;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/bn;

    const/4 v1, 0x7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/bn;-><init>(ILcom/google/firebase/auth/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bn;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bn;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Lcom/google/firebase/auth/a;)Lcom/google/android/gms/internal/firebase-auth-api/bn;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/auth/a;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bn;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Lcom/google/firebase/auth/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "EMAIL_SIGNIN"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "VERIFY_AND_CHANGE_EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "VERIFY_EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "PASSWORD_RESET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x7

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :goto_2
    const-string v1, "requestType"

    .line 3
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "email"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->h:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "newEmail"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->i:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, "idToken"

    .line 6
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    if-eqz v1, :cond_d

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->z1()Z

    move-result v1

    const-string v2, "androidInstallApp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->y1()Z

    move-result v1

    const-string v2, "canHandleCodeInApp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->D1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->D1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continueUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->C1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->C1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iosBundleId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 13
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->E1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 14
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->E1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iosAppStoreId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->B1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 16
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->B1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 17
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->A1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 18
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->A1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidMinimumVersion"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 19
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->H1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->j:Lcom/google/firebase/auth/a;

    .line 20
    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->H1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynamicLinkDomain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/bn;->k:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v2, "tenantId"

    .line 21
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x56916d75 -> :sswitch_3
        -0x4ffacbca -> :sswitch_2
        -0x4183d145 -> :sswitch_1
        0x33e669c5 -> :sswitch_0
    .end sparse-switch
.end method
