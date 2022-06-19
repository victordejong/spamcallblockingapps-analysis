.class public Lcom/google/firebase/perf/session/PerfSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/firebase/perf/util/Timer;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/perf/session/PerfSession$a;

    invoke-direct {v0}, Lcom/google/firebase/perf/session/PerfSession$a;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/session/PerfSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/session/PerfSession$a;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/session/PerfSession;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    .line 10
    const-class p2, Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/util/Timer;

    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->b:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le/m/d/z/n/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    .line 3
    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->a:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {p1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/session/PerfSession;->b:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method public static b(Ljava/util/List;)[Lcom/google/firebase/perf/v1/PerfSession;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/session/PerfSession;",
            ">;)[",
            "Lcom/google/firebase/perf/v1/PerfSession;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/firebase/perf/v1/PerfSession;

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v2}, Lcom/google/firebase/perf/session/PerfSession;->a()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v2

    const/4 v3, 0x1

    move v5, v1

    move v4, v3

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 5
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/perf/session/PerfSession;

    invoke-virtual {v6}, Lcom/google/firebase/perf/session/PerfSession;->a()Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v6

    if-nez v5, :cond_1

    .line 6
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/perf/session/PerfSession;

    .line 7
    iget-boolean v7, v7, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    if-eqz v7, :cond_1

    .line 8
    aput-object v6, v0, v1

    .line 9
    aput-object v2, v0, v4

    move v5, v3

    goto :goto_1

    .line 10
    :cond_1
    aput-object v6, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 11
    aput-object v2, v0, v1

    :cond_3
    return-object v0
.end method

.method public static c()Lcom/google/firebase/perf/session/PerfSession;
    .locals 11

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/firebase/perf/session/PerfSession;

    new-instance v2, Le/m/d/z/n/a;

    invoke-direct {v2}, Le/m/d/z/n/a;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/perf/session/PerfSession;-><init>(Ljava/lang/String;Le/m/d/z/n/a;)V

    .line 3
    invoke-static {}, Le/m/d/z/g/d;->e()Le/m/d/z/g/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Le/m/d/z/g/d;->o()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    .line 6
    const-class v2, Le/m/d/z/g/s;

    monitor-enter v2

    .line 7
    :try_start_0
    sget-object v7, Le/m/d/z/g/s;->a:Le/m/d/z/g/s;

    if-nez v7, :cond_0

    .line 8
    new-instance v7, Le/m/d/z/g/s;

    invoke-direct {v7}, Le/m/d/z/g/s;-><init>()V

    sput-object v7, Le/m/d/z/g/s;->a:Le/m/d/z/g/s;

    .line 9
    :cond_0
    sget-object v7, Le/m/d/z/g/s;->a:Le/m/d/z/g/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 10
    iget-object v2, v0, Le/m/d/z/g/d;->b:Le/m/d/z/n/d;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "sessions_sampling_percentage"

    .line 11
    invoke-virtual {v2, v8}, Le/m/d/z/n/d;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 12
    new-instance v2, Le/m/d/z/n/e;

    invoke-direct {v2}, Le/m/d/z/n/e;-><init>()V

    goto :goto_0

    .line 13
    :cond_1
    :try_start_1
    iget-object v2, v2, Le/m/d/z/n/d;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/Float;

    invoke-static {v2}, Le/m/d/z/n/e;->a(Ljava/lang/Object;)Le/m/d/z/n/e;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 15
    sget-object v9, Le/m/d/z/n/d;->b:Le/m/d/z/i/a;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v4

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v3

    .line 16
    iget-boolean v2, v9, Le/m/d/z/i/a;->b:Z

    if-eqz v2, :cond_2

    .line 17
    iget-object v2, v9, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "Metadata key %s contains type other than float: %s"

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    new-instance v2, Le/m/d/z/n/e;

    invoke-direct {v2}, Le/m/d/z/n/e;-><init>()V

    .line 20
    :goto_0
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 21
    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v2, v8

    .line 22
    invoke-virtual {v0, v2}, Le/m/d/z/g/d;->p(F)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    iget-object v2, v0, Le/m/d/z/g/d;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v8, "fpr_vc_session_sampling_rate"

    invoke-virtual {v2, v8}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getFloat(Ljava/lang/String;)Le/m/d/z/n/e;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0, v8}, Le/m/d/z/g/d;->p(F)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 25
    iget-object v0, v0, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    const-string v7, "com.google.firebase.perf.SessionSamplingRate"

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Le/m/d/z/g/x;->c(Ljava/lang/String;F)Z

    .line 26
    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {v0, v7}, Le/m/d/z/g/d;->b(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Le/m/d/z/n/e;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v0, v7}, Le/m/d/z/g/d;->p(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    invoke-virtual {v2}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_5
    const v0, 0x3c23d70a    # 0.01f

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    float-to-double v7, v2

    cmpg-double v0, v5, v7

    if-gez v0, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 32
    monitor-exit v2

    throw v0

    :cond_6
    move v3, v4

    .line 33
    :goto_2
    iput-boolean v3, v1, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    return-object v1
.end method


# virtual methods
.method public a()Lcom/google/firebase/perf/v1/PerfSession;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/v1/PerfSession;->newBuilder()Lcom/google/firebase/perf/v1/PerfSession$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/PerfSession;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v2, v1}, Lcom/google/firebase/perf/v1/PerfSession;->access$100(Lcom/google/firebase/perf/v1/PerfSession;Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Le/m/d/z/o/f;->c:Le/m/d/z/o/f;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v2, v1}, Lcom/google/firebase/perf/v1/PerfSession;->access$500(Lcom/google/firebase/perf/v1/PerfSession;Le/m/d/z/o/f;)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/PerfSession;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/firebase/perf/session/PerfSession;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Lcom/google/firebase/perf/session/PerfSession;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object p2, p0, Lcom/google/firebase/perf/session/PerfSession;->b:Lcom/google/firebase/perf/util/Timer;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
