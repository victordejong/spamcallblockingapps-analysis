.class public final Lcom/google/android/gms/internal/firebase-auth-api/vl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/ul;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/e/a;

    invoke-direct {v0}, Lf/e/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/vl;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/vl;->a:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/vl;->a:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ul;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/ul;->b:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ul;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g(Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ll;

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 6
    :cond_1
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return v2

    .line 7
    :cond_2
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return v2
.end method

.method public static c(Ljava/lang/String;Lcom/google/firebase/auth/s$b;Lcom/google/android/gms/internal/firebase-auth-api/ll;)Lcom/google/firebase/auth/s$b;
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/tl;

    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/tl;-><init>(Lcom/google/firebase/auth/s$b;Ljava/lang/String;)V

    return-object p2
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/vl;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/ll;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/vl;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/ul;

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/ul;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ll;J)V

    .line 2
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
