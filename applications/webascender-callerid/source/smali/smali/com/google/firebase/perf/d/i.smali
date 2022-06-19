.class public final Lcom/google/firebase/perf/d/i;
.super Lcom/google/firebase/perf/d/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/d/t<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/firebase/perf/d/i;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/d/t;-><init>()V

    return-void
.end method

.method protected static declared-synchronized e()Lcom/google/firebase/perf/d/i;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/d/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/d/i;->a:Lcom/google/firebase/perf/d/i;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/firebase/perf/d/i;

    invoke-direct {v1}, Lcom/google/firebase/perf/d/i;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/d/i;->a:Lcom/google/firebase/perf/d/i;

    .line 3
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/d/i;->a:Lcom/google/firebase/perf/d/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.SdkDisabledVersions"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_disabled_android_versions"

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
