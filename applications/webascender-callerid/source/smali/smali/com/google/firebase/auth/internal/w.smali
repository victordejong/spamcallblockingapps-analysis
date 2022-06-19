.class public final Lcom/google/firebase/auth/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:J = 0x36ee80L

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/firebase/auth/internal/w;


# instance fields
.field private a:Lcom/google/android/gms/tasks/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "firebaseAppName"

    const-string v2, "firebaseUserUid"

    const-string v3, "operation"

    const-string v4, "tenantId"

    const-string v5, "verifyAssertionRequest"

    const-string v6, "statusCode"

    const-string v7, "statusMessage"

    const-string v8, "timestamp"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/firebase/auth/internal/w;->d:Ljava/util/List;

    new-instance v0, Lcom/google/firebase/auth/internal/w;

    .line 2
    invoke-direct {v0}, Lcom/google/firebase/auth/internal/w;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/w;->e:Lcom/google/firebase/auth/internal/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/w;->b:J

    return-void
.end method

.method public static a()Lcom/google/firebase/auth/internal/w;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/w;->e:Lcom/google/firebase/auth/internal/w;

    return-object v0
.end method

.method private static final e(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/google/firebase/auth/internal/w;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firebaseAppName"

    const-string v3, ""

    .line 4
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "verifyAssertionRequest"

    .line 6
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, "operation"

    const-wide/16 v8, 0x0

    const-string v10, "timestamp"

    if-eqz v4, :cond_a

    .line 7
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/fo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/d;->c(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/c;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/fo;

    .line 9
    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "tenantId"

    .line 10
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "firebaseUserUid"

    .line 11
    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {v0, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/firebase/auth/internal/w;->b:J

    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {p1, v6}, Lcom/google/firebase/auth/FirebaseAuth;->h(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/firebase-auth-api/fo;->A1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    .line 15
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x5df2262

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_4

    const v7, 0xa6e6490

    if-eq v6, v7, :cond_3

    const v7, 0x56745691

    if-eq v6, v7, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_3
    const-string v2, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_8

    if-eq v2, v9, :cond_7

    if-eq v2, v8, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/g;

    move-result-object v2

    .line 18
    invoke-static {v1}, Lcom/google/firebase/auth/i0;->B1(Lcom/google/android/gms/internal/firebase-auth-api/fo;)Lcom/google/firebase/auth/i0;

    move-result-object v1

    .line 19
    invoke-virtual {p1, v2, v1}, Lcom/google/firebase/auth/FirebaseAuth;->A(Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/c;)Lcom/google/android/gms/tasks/g;

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/g;

    move-result-object v2

    .line 22
    invoke-static {v1}, Lcom/google/firebase/auth/i0;->B1(Lcom/google/android/gms/internal/firebase-auth-api/fo;)Lcom/google/firebase/auth/i0;

    move-result-object v1

    .line 23
    invoke-virtual {p1, v2, v1}, Lcom/google/firebase/auth/FirebaseAuth;->D(Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/c;)Lcom/google/android/gms/tasks/g;

    goto :goto_2

    .line 24
    :cond_8
    invoke-static {v1}, Lcom/google/firebase/auth/i0;->B1(Lcom/google/android/gms/internal/firebase-auth-api/fo;)Lcom/google/firebase/auth/i0;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->i(Lcom/google/firebase/auth/c;)Lcom/google/android/gms/tasks/g;

    .line 26
    :cond_9
    :goto_2
    invoke-static {v0}, Lcom/google/firebase/auth/internal/w;->e(Landroid/content/SharedPreferences;)V

    return-void

    :cond_a
    const-string p1, "recaptchaToken"

    .line 27
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 28
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-interface {v0, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/firebase/auth/internal/w;->b:J

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xccd86fc

    if-eq v3, v4, :cond_b

    goto :goto_3

    :cond_b
    const-string v3, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v2, -0x1

    :goto_4
    if-eqz v2, :cond_d

    iput-object v6, p0, Lcom/google/firebase/auth/internal/w;->a:Lcom/google/android/gms/tasks/g;

    goto :goto_5

    .line 32
    :cond_d
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/w;->a:Lcom/google/android/gms/tasks/g;

    .line 33
    :goto_5
    invoke-static {v0}, Lcom/google/firebase/auth/internal/w;->e(Landroid/content/SharedPreferences;)V

    return-void

    :cond_e
    const-string p1, "statusCode"

    .line 34
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x42a6

    .line 35
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "statusMessage"

    .line 36
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 38
    invoke-interface {v0, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/firebase/auth/internal/w;->b:J

    .line 39
    invoke-static {v0}, Lcom/google/firebase/auth/internal/w;->e(Landroid/content/SharedPreferences;)V

    .line 40
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    :cond_f
    return-void
.end method

.method public final c()Lcom/google/android/gms/tasks/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/w;->b:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/google/firebase/auth/internal/w;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/internal/w;->a:Lcom/google/android/gms/tasks/g;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/w;->e(Landroid/content/SharedPreferences;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/w;->b:J

    return-void
.end method
