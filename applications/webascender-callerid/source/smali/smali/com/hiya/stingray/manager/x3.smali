.class public Lcom/hiya/stingray/manager/x3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/x3$b;,
        Lcom/hiya/stingray/manager/x3$a;,
        Lcom/hiya/stingray/manager/x3$c;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z

.field private static i:Z


# instance fields
.field private final a:Li/c/b0/c/a;

.field private b:Lcom/google/firebase/remoteconfig/g;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/hiya/stingray/q/d/a;

.field private final e:Lcom/hiya/stingray/util/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/x3;->f:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/x3;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/x3;->d:Lcom/hiya/stingray/q/d/a;

    iput-object p3, p0, Lcom/hiya/stingray/manager/x3;->e:Lcom/hiya/stingray/util/a0;

    .line 2
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/x3;->a:Li/c/b0/c/a;

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/manager/x3;->D()V

    return-void
.end method

.method private final A(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1103f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.ttl_normal_hrs)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ttl_normal_hrs"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1103fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.ttl_spam_fraud_hrs)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ttl_spam_fraud_hrs"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1103f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026.ttl_local_overrides_hrs)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ttl_local_overrides_hrs"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/x3;->t()V

    return-void
.end method

.method private final D()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/x3;->f:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->s(Ljava/util/Map;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->y(Ljava/util/Map;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->r(Ljava/util/Map;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->w(Ljava/util/Map;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->A(Ljava/util/Map;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->x(Ljava/util/Map;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->z(Ljava/util/Map;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->v(Ljava/util/Map;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/x3;->u(Ljava/util/Map;)V

    return-void
.end method

.method private final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/g;->b()Lcom/google/android/gms/tasks/g;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/hiya/stingray/manager/x3;->h:Z

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/manager/x3;->d:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/q/d/a;->W(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->e:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/manager/x3$b;

    invoke-direct {v1}, Lcom/hiya/stingray/manager/x3$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "firebaseRemoteConfig"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final F()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->d:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->x()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/hiya/stingray/manager/x3$a;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/p;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/hiya/stingray/manager/x3$a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/hiya/stingray/manager/x3$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/x3$a;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->d:Lcom/hiya/stingray/q/d/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->k0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final H()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->d:Lcom/hiya/stingray/q/d/a;

    new-instance v1, Lcom/hiya/stingray/manager/x3$a;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hiya/stingray/manager/x3$a;-><init>(Ljava/util/HashMap;)V

    invoke-static {v1}, Lcom/hiya/stingray/util/p;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->k0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    const-class v1, Lcom/hiya/stingray/manager/x3;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr/a/a$c;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;)Lcom/google/android/gms/tasks/g;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/x3;->h(Ljava/lang/Long;)Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/x3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/x3;->E()V

    return-void
.end method

.method public static final synthetic c(Z)V
    .locals 0

    return-void
.end method

.method public static synthetic g(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;ILjava/lang/Object;)Li/c/b0/b/e;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/x3;->f(Ljava/lang/Long;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fetchAsCompletable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final h(Ljava/lang/Long;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/x3;->o()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/g;->d(J)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    const-string v0, "this.firebaseRemoteConfi\u2026rval ?: minFetchInterval)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string p1, "firebaseRemoteConfig"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final o()J
    .locals 2

    const-wide/16 v0, 0x4b0

    return-wide v0
.end method

.method private final r(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110072

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ll_screener_text_message)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "call_screener_blocked_text_message"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110071

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ms_received_confirmation)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "call_screener_call_again_text_message"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026screener_allowed_message)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "call_screener_whitelisted_text_message"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.call_screener_details)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "call_screener_details"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final s(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x1adb1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "force_update_min_valid_required_version"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "force_update_min_valid_recommended_version"

    .line 2
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11011a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.force_update_store_url)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "force_update_store_url"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1101bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.manage_data_url)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "manage_data_url"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hiya/stingray/manager/x3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/g;->t(Ljava/util/Map;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/x3$f;->a:Lcom/hiya/stingray/manager/x3$f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->h(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    return-void

    :cond_0
    const-string v0, "firebaseRemoteConfig"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final u(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "blocked_call_stats_min_count"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1101b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.local_overrides)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "local_overrides"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final v(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.feedback_dialog_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_dialog_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ck_dialog_positive_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_dialog_positive_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110103

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026dialog_positive_subtitle)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_dialog_positive_subtitle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110100

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ck_dialog_negative_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_dialog_negative_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1100ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026dialog_negative_subtitle)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_dialog_negative_subtitle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110101

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026.feedback_dialog_not_now)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_dialog_not_now"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110102

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.feedback_dialog_ok)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_dialog_ok"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1100fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026.feedback_dialog_dismiss)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_dialog_dismiss"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1103ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.survey_link)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_survey_link"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026eedback_enable_share_app)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_enable_share_app"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110109

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.feedback_share_app)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_share_app_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11010a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026.feedback_share_app_desc)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_share_app_desc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110327

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.select_survey_partners)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "select_survey_partners"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final w(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026jitter_request_queue_min)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jitter_request_queue_min"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110260

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026period_request_queue_hrs)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "period_request_queue_hrs"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ssion_warning_period_hrs)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "permission_warning_period_hrs"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final x(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1101ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026earch_min_req_length_def)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "local_search_min_req_length"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1101bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026earch_time_in_millis_def)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "local_throttle_search_time_in_millis"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11031d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026earch_bar_hint_in_search)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "search_bar_hint_in_search"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final y(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11041c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.why_modal_desc)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "why_modal_desc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11041d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.why_modal_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "why_modal_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1101c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.marketing_button_text)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "marketing_button_text"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1101c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.marketing_text)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "marketing_text"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1103c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ettings_terms_of_use_url)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settings_terms_of_use_url"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1103f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.terms_and_conditions)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "terms_and_conditions"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1103c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ettings_warning_dot_days)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settings_warning_dot_days"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026arding_get_started_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_get_started_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026oarding_get_started_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_get_started_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026arding_recommended_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_recommended_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026oarding_recommended_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_recommended_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026g_calls_permission_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_calls_permission_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ng_calls_permission_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_calls_permission_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110240

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026.onboarding_button_allow)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_button_allow"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026nboarding_button_allowed)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_button_allowed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110248

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026all_log_permission_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_call_log_permission_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110247

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026call_log_permission_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_call_log_permission_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026phone_verification_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_phone_verification_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026_phone_verification_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_phone_verification_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110246

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026arding_button_verify_now)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_button_verify_now"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110245

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026boarding_button_verified)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_button_verified"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026er_apps_permission_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_display_over_apps_permission_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ver_apps_permission_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_display_over_apps_permission_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11023f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ttery_optimization_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_battery_optimization_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11023e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026attery_optimization_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_battery_optimization_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ault_caller_id_app_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_default_caller_id_app_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026fault_caller_id_app_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_default_caller_id_app_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110244

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.onboarding_button_set)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onboarding_button_set"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final z(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026dentify_names_of_callers)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_identify"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026_automatic_spam_blocking)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_autoblock"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026sell_phone_number_lookup)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_lookup"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ll_phone_number_comments)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_comments"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026remium_upsell_block_list)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_blocklist"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026.premium_upsell_subtitle)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_subtitle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026_upsell_subtitle_expired)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_subtitle_expired"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026emium_upsell_monthly_top)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_monthly_button_top"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026um_upsell_monthly_bottom)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_monthly_button_bottom"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026l_monthly_bottom_expired)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_monthly_button_bottom_expired"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026remium_upsell_annual_top)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_annual_button_top"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ium_upsell_annual_bottom)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_annual_button_bottom"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ll_annual_bottom_expired)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upsell_annual_button_bottom_expired"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.premium_upgrade_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upgrade_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026m_upgrade_try_button_top)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upgrade_try_button_top"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026pgrade_try_button_bottom)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upgrade_try_button_bottom"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026premium_upgrade_subtitle)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upgrade_subtitle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.premium_upgrade_footer)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upgrade_footer"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026_upgrade_continue_button)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_upgrade_continue_button"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026mium_upsell_lookup_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_details_upsell_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026emium_upsell_lookup_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_details_upsell_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ium_upsell_lookup_button)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_details_upsell_button"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026.premium_postcall_upsell)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_postcall_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11028b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026.premium_callerid_upsell)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_overlay_id_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11028e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026fault_monthly_price_text)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_monthly_price"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11028d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026efault_annual_price_text)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_annual_price"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11028f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026premium_group_price_text)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_group_price"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11028a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026rice_per_year_price_text)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_annual_price_per_year"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.premium_paywall)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_paywall"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1102a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.premium_soft_paywall)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "premium_soft_paywall"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f1103dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ll_trial_button_subtitle)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "soft_paywall_trail_button_subtitle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ewsletter_calls_detected)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_calls_detected"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11020a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026_calls_detected_subtitle)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_calls_detected_subtitle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11020f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026letter_reports_processed)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_reports_processed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110210

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ports_processed_subtitle)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_reports_processed_subtitle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110213

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026wsletter_users_protected)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_users_protected"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110214

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026users_protected_subtitle)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_users_protected_subtitle"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11020c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.newsletter_headline)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_headline"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110211

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.newsletter_subheadline)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_subheadline"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11020b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.newsletter_content)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_content"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110208

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.newsletter_bold)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_bold"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11020e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.newsletter_push_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_push_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f11020d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.newsletter_push_body)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_push_body"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->c:Landroid/content/Context;

    const v1, 0x7f110212

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.newsletter_title)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newsletter_title"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/remoteconfig/g;->h()Lcom/google/firebase/remoteconfig/g;

    move-result-object v0

    const-string v1, "FirebaseRemoteConfig.getInstance()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/hiya/stingray/manager/x3;->i:Z

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/manager/x3;->C()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/manager/x3;->F()V

    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/x3;->H()V

    return-void
.end method

.method public final d()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/g;->f()Ljava/util/Map;

    move-result-object v1

    const-string v2, "this.firebaseRemoteConfig.all"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "it.key"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/remoteconfig/j;

    invoke-interface {v2}, Lcom/google/firebase/remoteconfig/j;->c()Ljava/lang/String;

    move-result-object v2

    const-string v4, "it.value.asString()"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "firebaseRemoteConfig"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e()Li/c/b0/b/e;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/hiya/stingray/manager/x3;->g(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;ILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Long;)Li/c/b0/b/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/x3$d;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/x3$d;-><init>(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.create { emi\u2026er.onError(e) }\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final i(Lcom/hiya/stingray/manager/x3$c;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/y3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-boolean p1, Lcom/hiya/stingray/manager/x3;->h:Z

    if-eqz p1, :cond_2

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/manager/x3;->d:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/d/a;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1, v0, p1}, Lcom/hiya/stingray/manager/x3;->g(Lcom/hiya/stingray/manager/x3;Ljava/lang/Long;ILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object p1

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/hiya/stingray/manager/x3$e;->f:Lcom/hiya/stingray/manager/x3$e;

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->A(Li/c/b0/d/p;)Li/c/b0/b/e;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Li/c/b0/b/e;->D()Li/c/b0/c/c;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->a:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public j(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "overrides[key]!!"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 2
    :cond_1
    sget-boolean v0, Lcom/hiya/stingray/manager/x3;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    const-string v2, "firebaseRemoteConfig"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->l(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/j;

    move-result-object v0

    const-string v3, "this.firebaseRemoteConfig.getValue(key)"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/j;->e()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this.firebaseRemoteConfig.getString(key)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_4
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_5
    :goto_0
    sget-object v0, Lcom/hiya/stingray/manager/x3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, p1

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, ""

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->d:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->j()Z

    move-result v0

    return v0
.end method

.method public l(Ljava/lang/String;)J
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "overrides[key]!!"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 2
    :cond_1
    sget-boolean v0, Lcom/hiya/stingray/manager/x3;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    const-string v2, "firebaseRemoteConfig"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->l(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/j;

    move-result-object v0

    const-string v3, "this.firebaseRemoteConfig.getValue(key)"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/j;->e()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->j(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_4
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_5
    :goto_0
    sget-object v0, Lcom/hiya/stingray/manager/x3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_6

    move-object v2, v1

    :cond_6
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 6
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    move-object v1, p1

    :goto_1
    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_9

    .line 7
    invoke-static {v1}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_9
    return-wide v2
.end method

.method public m(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "arrayKey"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, ","

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "overrides[arrayKey]!!"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/c0/m;->r0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 6
    :cond_2
    sget-boolean v0, Lcom/hiya/stingray/manager/x3;->i:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    const-string v4, "firebaseRemoteConfig"

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->l(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/j;

    move-result-object v0

    const-string v5, "this.firebaseRemoteConfig.getValue(arrayKey)"

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/j;->e()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "firebaseRemoteConfig.getString(arrayKey)"

    invoke-static {v5, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/c0/m;->r0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v3, v0

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v3

    :catch_0
    :goto_2
    return-object v3

    .line 12
    :cond_6
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_7
    :goto_3
    sget-object v0, Lcom/hiya/stingray/manager/x3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_8

    move-object p1, v3

    :cond_8
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/c0/m;->r0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-static {v1}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_5

    :cond_9
    const-wide/16 v1, 0x0

    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    return-object v0

    :cond_b
    return-object v3
.end method

.method public n(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 9

    const-string v0, "arrayKey"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ","

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "overrides[arrayKey]!!"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/c0/m;->r0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 2
    :cond_1
    sget-boolean v0, Lcom/hiya/stingray/manager/x3;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->l(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/j;

    move-result-object v0

    const-string v3, "this.firebaseRemoteConfig.getValue(arrayKey)"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/j;->e()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/x3;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    :cond_3
    return-object v2

    :cond_4
    const-string p1, "firebaseRemoteConfig"

    .line 4
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_5
    :goto_0
    sget-object v0, Lcom/hiya/stingray/manager/x3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    move-object p1, v2

    :cond_6
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/c0/m;->r0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_7

    return-object v2

    .line 8
    :cond_7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v2
.end method

.method public final p()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/x3;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/x3;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 2
    :cond_1
    sget-boolean v0, Lcom/hiya/stingray/manager/x3;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    const-string v2, "firebaseRemoteConfig"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->l(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/j;

    move-result-object v0

    const-string v3, "this.firebaseRemoteConfig.getValue(key)"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/j;->e()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/manager/x3;->b:Lcom/google/firebase/remoteconfig/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/g;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this.firebaseRemoteConfig.getString(key)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/c0/j;

    const-string v1, "\\\\n"

    invoke-direct {v0, v1}, Lkotlin/c0/j;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, p1, v1}, Lkotlin/c0/j;->d(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_4
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    sget-object v0, Lcom/hiya/stingray/manager/x3;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, p1

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, ""

    :goto_2
    return-object v1
.end method
