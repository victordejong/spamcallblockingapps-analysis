.class public final Lcom/google/firebase/auth/internal/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/firebase/auth/internal/f0;


# instance fields
.field private final a:Lcom/google/firebase/auth/internal/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/f0;

    .line 1
    invoke-direct {v0}, Lcom/google/firebase/auth/internal/f0;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/f0;->b:Lcom/google/firebase/auth/internal/f0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/internal/w;->a()Lcom/google/firebase/auth/internal/w;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/auth/internal/p;->a()Lcom/google/firebase/auth/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/f0;->a:Lcom/google/firebase/auth/internal/w;

    return-void
.end method

.method public static a()Lcom/google/firebase/auth/internal/f0;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/f0;->b:Lcom/google/firebase/auth/internal/f0;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/c;->k()Ljava/lang/String;

    move-result-object p2

    const-string v0, "firebaseAppName"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c()Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/f0;->a:Lcom/google/firebase/auth/internal/w;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/w;->c()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/f0;->a:Lcom/google/firebase/auth/internal/w;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/internal/w;->b(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method public final e(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const-string v0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->y1()I

    move-result v0

    const-string v1, "statusCode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->z1()Ljava/lang/String;

    move-result-object p2

    const-string v0, "statusMessage"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    const-string p2, "timestamp"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/f0;->a:Lcom/google/firebase/auth/internal/w;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/internal/w;->d(Landroid/content/Context;)V

    return-void
.end method
