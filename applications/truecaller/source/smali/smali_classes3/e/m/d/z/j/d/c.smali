.class public final Le/m/d/z/j/d/c;
.super Le/m/d/z/j/d/e;
.source "SourceFile"


# static fields
.field public static final c:Le/m/d/z/i/a;


# instance fields
.field public final a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

.field public final b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/d/z/j/d/e;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/d/z/j/d/c;->b:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "URL is missing:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    :goto_1
    sget-object v4, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 8
    iget-boolean v0, v4, Le/m/d/z/i/a;->b:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, v4, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "getResultUrl throws exception %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    move-object v0, v3

    :goto_3
    if-nez v0, :cond_5

    .line 11
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    .line 12
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_4

    .line 13
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v2

    .line 15
    :cond_5
    iget-object v4, p0, Le/m/d/z/j/d/c;->b:Landroid/content/Context;

    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "firebase_performance_whitelisted_domains"

    const-string v7, "array"

    .line 18
    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    .line 19
    :cond_6
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v6

    .line 20
    iget-boolean v7, v6, Le/m/d/z/i/a;->b:Z

    if-eqz v7, :cond_7

    .line 21
    iget-object v6, v6, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 22
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_7
    sget-object v6, Le/m/d/y/n;->a:[Ljava/lang/String;

    if-nez v6, :cond_8

    .line 24
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Le/m/d/y/n;->a:[Ljava/lang/String;

    .line 25
    :cond_8
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_5

    .line 26
    :cond_9
    sget-object v5, Le/m/d/y/n;->a:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_4
    if-ge v7, v6, :cond_b

    aget-object v8, v5, v7

    .line 27
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    :goto_5
    move v4, v1

    goto :goto_6

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    move v4, v2

    :goto_6
    if-nez v4, :cond_c

    .line 28
    sget-object v1, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL fails allowlist rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 29
    :cond_c
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 30
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xff

    if-gt v4, v5, :cond_d

    move v4, v1

    goto :goto_7

    :cond_d
    move v4, v2

    :goto_7
    if-nez v4, :cond_f

    .line 33
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    .line 34
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_e

    .line 35
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return v2

    .line 37
    :cond_f
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_8

    :cond_10
    const-string v5, "http"

    .line 38
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_9

    :cond_11
    :goto_8
    move v4, v2

    goto :goto_a

    :cond_12
    :goto_9
    move v4, v1

    :goto_a
    if-nez v4, :cond_14

    .line 39
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    .line 40
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_13

    .line 41
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return v2

    .line 43
    :cond_14
    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v1

    goto :goto_b

    :cond_15
    move v4, v2

    :goto_b
    if-nez v4, :cond_17

    .line 44
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    .line 45
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_16

    .line 46
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return v2

    .line 48
    :cond_17
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_19

    if-lez v0, :cond_18

    goto :goto_c

    :cond_18
    move v0, v2

    goto :goto_d

    :cond_19
    :goto_c
    move v0, v1

    :goto_d
    if-nez v0, :cond_1b

    .line 49
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    .line 50
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_1a

    .line 51
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return v2

    .line 53
    :cond_1b
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpMethod()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    move-result-object v3

    :cond_1c
    if-eqz v3, :cond_1d

    .line 54
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;->b:Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    if-eq v3, v0, :cond_1d

    move v0, v1

    goto :goto_e

    :cond_1d
    move v0, v2

    :goto_e
    if-nez v0, :cond_1e

    .line 55
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "HTTP Method is null or invalid: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 56
    :cond_1e
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpResponseCode()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 57
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpResponseCode()I

    move-result v0

    if-lez v0, :cond_1f

    move v0, v1

    goto :goto_f

    :cond_1f
    move v0, v2

    :goto_f
    if-nez v0, :cond_20

    .line 58
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "HTTP ResponseCode is a negative value:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpResponseCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 59
    :cond_20
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasRequestPayloadBytes()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 60
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getRequestPayloadBytes()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_21

    move v0, v1

    goto :goto_10

    :cond_21
    move v0, v2

    :goto_10
    if-nez v0, :cond_22

    .line 61
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "Request Payload is a negative value:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getRequestPayloadBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 62
    :cond_22
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasResponsePayloadBytes()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 63
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponsePayloadBytes()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_23

    move v0, v1

    goto :goto_11

    :cond_23
    move v0, v2

    :goto_11
    if-nez v0, :cond_24

    .line 64
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "Response Payload is a negative value:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 65
    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponsePayloadBytes()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 67
    :cond_24
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasClientStartTimeUs()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getClientStartTimeUs()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_25

    goto/16 :goto_15

    .line 68
    :cond_25
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToRequestCompletedUs()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 69
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToRequestCompletedUs()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_26

    move v0, v1

    goto :goto_12

    :cond_26
    move v0, v2

    :goto_12
    if-nez v0, :cond_27

    .line 70
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "Time to complete the request is a negative value:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 71
    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToRequestCompletedUs()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 73
    :cond_27
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseInitiatedUs()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 74
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseInitiatedUs()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_28

    move v0, v1

    goto :goto_13

    :cond_28
    move v0, v2

    :goto_13
    if-nez v0, :cond_29

    .line 75
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "Time from the start of the request to the start of the response is null or a negative value:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 76
    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseInitiatedUs()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 78
    :cond_29
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseCompletedUs()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 79
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseCompletedUs()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_2a

    goto :goto_14

    .line 80
    :cond_2a
    iget-object v0, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpResponseCode()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 81
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    .line 82
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_2b

    .line 83
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return v2

    :cond_2c
    return v1

    .line 85
    :cond_2d
    :goto_14
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "Time from the start of the request to the end of the response is null, negative or zero:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 86
    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseCompletedUs()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2

    .line 88
    :cond_2e
    :goto_15
    sget-object v0, Le/m/d/z/j/d/c;->c:Le/m/d/z/i/a;

    const-string v1, "Start time of the request is null, or zero, or a negative value:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/m/d/z/j/d/c;->a:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 89
    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getClientStartTimeUs()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Le/m/d/z/i/a;->c(Ljava/lang/String;)V

    return v2
.end method
