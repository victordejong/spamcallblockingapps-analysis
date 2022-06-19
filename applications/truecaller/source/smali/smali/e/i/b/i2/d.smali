.class public Le/i/b/i2/d;
.super Le/i/b/c3;
.source "SourceFile"


# instance fields
.field public final c:Le/i/b/i2/g;

.field public final d:Le/i/b/u2/r;

.field public final e:Le/i/b/e2;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/i/b/u2/p;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/criteo/publisher/context/ContextData;

.field public final h:Le/i/b/c2;


# direct methods
.method public constructor <init>(Le/i/b/i2/g;Le/i/b/u2/r;Le/i/b/e2;Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Le/i/b/c2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/i2/g;",
            "Le/i/b/u2/r;",
            "Le/i/b/e2;",
            "Ljava/util/List<",
            "Le/i/b/u2/p;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            "Le/i/b/c2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/i2/d;->c:Le/i/b/i2/g;

    .line 3
    iput-object p2, p0, Le/i/b/i2/d;->d:Le/i/b/u2/r;

    .line 4
    iput-object p3, p0, Le/i/b/i2/d;->e:Le/i/b/e2;

    .line 5
    iput-object p4, p0, Le/i/b/i2/d;->f:Ljava/util/List;

    .line 6
    iput-object p5, p0, Le/i/b/i2/d;->g:Lcom/criteo/publisher/context/ContextData;

    .line 7
    iput-object p6, p0, Le/i/b/i2/d;->h:Le/i/b/c2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Le/i/b/i2/d;->d:Le/i/b/u2/r;

    iget-object v3, v1, Le/i/b/i2/d;->f:Ljava/util/List;

    iget-object v0, v1, Le/i/b/i2/d;->g:Lcom/criteo/publisher/context/ContextData;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/util/Map;

    const-string v6, "contextData"

    .line 3
    invoke-static {v0, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/criteo/publisher/context/AbstractContextData;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v7, "contextData.getData()"

    invoke-static {v0, v7}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v0, v5, v8

    .line 5
    invoke-virtual {v2, v5}, Le/i/b/u2/r;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 6
    iget-object v5, v2, Le/i/b/u2/r;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v2, Le/i/b/u2/r;->b:Ljava/lang/String;

    .line 8
    new-instance v12, Le/i/b/u2/l;

    invoke-direct {v12, v5, v9, v0}, Le/i/b/u2/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/util/Map;

    .line 9
    iget-object v10, v2, Le/i/b/u2/r;->i:Le/i/b/v1/b;

    .line 10
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v11, v0, [Ls1/k;

    .line 11
    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v14, "unknown"

    invoke-static {v13, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v15, v4

    if-eqz v15, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 12
    :goto_0
    new-instance v15, Ls1/k;

    const-string v5, "device.make"

    invoke-direct {v15, v5, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v15, v11, v8

    .line 13
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v4

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 14
    :goto_1
    new-instance v13, Ls1/k;

    const-string v14, "device.model"

    invoke-direct {v13, v14, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v11, v4

    .line 15
    iget-object v5, v10, Le/i/b/v1/b;->b:Le/i/b/v1/a;

    .line 16
    sget-object v13, Le/i/b/v1/a$a;->c:Le/i/b/v1/a$a;

    sget-object v14, Le/i/b/v1/a$a;->b:Le/i/b/v1/a$a;

    iget-object v15, v5, Le/i/b/v1/a;->b:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v15, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v15, v8, Landroid/net/ConnectivityManager;

    if-nez v15, :cond_2

    const/4 v8, 0x0

    :cond_2
    check-cast v8, Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_11

    .line 17
    :try_start_0
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 18
    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_2

    :cond_3
    const/16 v20, 0x0

    :goto_2
    if-nez v20, :cond_4

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v0, :cond_5

    move-object/from16 v22, v14

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_3
    if-nez v20, :cond_6

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_7

    move-object/from16 v20, v13

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    :goto_4
    if-nez v20, :cond_8

    goto/16 :goto_9

    .line 21
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-virtual {v5, v0}, Le/i/b/v1/a;->a(I)Le/i/b/v1/a$a;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    .line 22
    iget-object v15, v5, Le/i/b/v1/a;->a:Le/i/b/q2/h;

    .line 23
    new-instance v4, Le/i/b/q2/f;

    move-object/from16 v20, v13

    const-string v13, "Deprecated way to get connection type is not available, fallback on new API"

    move-object/from16 v22, v14

    const/4 v1, 0x0

    const/4 v14, 0x3

    invoke-direct {v4, v14, v13, v0, v1}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 24
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 25
    invoke-virtual {v8, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    const-string v4, "networkCapabilities"

    .line 26
    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v14}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_a

    :goto_5
    move-object/from16 v13, v22

    goto :goto_b

    .line 28
    :cond_a
    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 29
    invoke-virtual {v0, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v13

    if-eqz v13, :cond_b

    :goto_6
    move-object/from16 v13, v20

    goto :goto_b

    .line 30
    :cond_b
    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 31
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 32
    iget-object v0, v5, Le/i/b/v1/a;->b:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_c

    move-object v0, v1

    :cond_c
    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_10

    .line 33
    iget-object v4, v5, Le/i/b/v1/a;->b:Landroid/content/Context;

    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-static {v4, v8}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_e

    goto :goto_8

    .line 34
    :cond_e
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v4, v8, :cond_f

    .line 35
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    invoke-virtual {v5, v0}, Le/i/b/v1/a;->a(I)Le/i/b/v1/a$a;

    move-result-object v13

    goto :goto_b

    .line 36
    :cond_f
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-virtual {v5, v0}, Le/i/b/v1/a;->a(I)Le/i/b/v1/a$a;

    move-result-object v13

    goto :goto_b

    .line 37
    :cond_10
    :goto_8
    sget-object v13, Le/i/b/v1/a$a;->d:Le/i/b/v1/a$a;

    goto :goto_b

    :cond_11
    :goto_9
    const/4 v1, 0x0

    :cond_12
    :goto_a
    move-object v13, v1

    :goto_b
    if-eqz v13, :cond_13

    .line 38
    iget v0, v13, Le/i/b/v1/a$a;->a:I

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_13
    move-object v0, v1

    .line 40
    :goto_c
    new-instance v4, Ls1/k;

    const-string v5, "device.contype"

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v4, v11, v5

    .line 41
    invoke-virtual {v10}, Le/i/b/v1/b;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    new-instance v4, Ls1/k;

    const-string v5, "device.w"

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v4, v11, v5

    .line 43
    invoke-virtual {v10}, Le/i/b/v1/b;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    new-instance v4, Ls1/k;

    const-string v5, "device.h"

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    aput-object v4, v11, v0

    .line 45
    iget-object v0, v10, Le/i/b/v1/b;->c:Le/i/b/s2/c;

    invoke-virtual {v0}, Le/i/b/s2/c;->a()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_15

    const/4 v4, 0x2

    if-eq v0, v4, :cond_14

    move-object v0, v1

    goto :goto_d

    :cond_14
    const-string v0, "Landscape"

    goto :goto_d

    :cond_15
    const-string v0, "Portrait"

    .line 46
    :goto_d
    new-instance v4, Ls1/k;

    const-string v5, "data.orientation"

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    aput-object v4, v11, v0

    .line 47
    invoke-virtual {v10}, Le/i/b/v1/b;->b()Ljava/util/List;

    move-result-object v0

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v8, "it"

    if-eqz v5, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 50
    check-cast v5, Ljava/util/Locale;

    .line 51
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v13, 0x1

    xor-int/2addr v8, v13

    if-eqz v8, :cond_17

    goto :goto_f

    :cond_17
    move-object v5, v1

    :goto_f
    if-eqz v5, :cond_16

    .line 52
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 53
    :cond_18
    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    new-instance v4, Ls1/k;

    const-string v5, "user.geo.country"

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x6

    aput-object v4, v11, v0

    .line 55
    invoke-virtual {v10}, Le/i/b/v1/b;->b()Ljava/util/List;

    move-result-object v0

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 58
    check-cast v5, Ljava/util/Locale;

    .line 59
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x1

    xor-int/2addr v13, v14

    if-eqz v13, :cond_1a

    goto :goto_11

    :cond_1a
    move-object v5, v1

    :goto_11
    if-eqz v5, :cond_19

    .line 60
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1b
    const/4 v14, 0x1

    .line 61
    invoke-static {v4}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v14

    if-eqz v4, :cond_1c

    goto :goto_12

    :cond_1c
    move-object v0, v1

    .line 63
    :goto_12
    new-instance v4, Ls1/k;

    const-string v5, "data.inputLanguage"

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x7

    aput-object v4, v11, v0

    .line 64
    iget-object v0, v10, Le/i/b/v1/b;->d:Le/i/b/e3;

    .line 65
    iget-object v4, v0, Le/i/b/e3;->c:Le/i/b/e2;

    invoke-interface {v4}, Le/i/b/e2;->a()J

    move-result-wide v4

    iget-wide v13, v0, Le/i/b/e3;->a:J

    sub-long/2addr v4, v13

    const/16 v0, 0x3e8

    int-to-long v13, v0

    div-long/2addr v4, v13

    long-to-int v0, v4

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 67
    new-instance v4, Ls1/k;

    const-string v5, "data.sessionDuration"

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x8

    aput-object v4, v11, v0

    .line 68
    invoke-static {v11}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "$this$filterNotNullValues"

    .line 69
    invoke-static {v0, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1e

    const/4 v8, 0x1

    goto :goto_14

    :cond_1e
    const/4 v8, 0x0

    :goto_14
    if-eqz v8, :cond_1d

    .line 73
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_1f
    const/4 v5, 0x0

    aput-object v4, v9, v5

    .line 74
    iget-object v0, v2, Le/i/b/u2/r;->j:Le/i/b/v1/c;

    .line 75
    iget-object v0, v0, Le/i/b/v1/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "valueRef.get()"

    invoke-static {v0, v4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/criteo/publisher/context/UserData;

    .line 76
    invoke-static {v0, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/criteo/publisher/context/AbstractContextData;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v7}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v0, v9, v4

    .line 78
    invoke-virtual {v2, v9}, Le/i/b/u2/r;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    .line 79
    iget-object v0, v2, Le/i/b/u2/r;->d:Le/i/b/s2/b;

    .line 80
    invoke-virtual {v0}, Le/i/b/s2/b;->b()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v2, Le/i/b/u2/r;->e:Le/i/b/l2/b;

    .line 81
    iget-object v0, v0, Le/i/b/l2/b;->b:Le/i/b/s2/n;

    const-string v4, ""

    const-string v5, "MoPubConsent_String"

    invoke-virtual {v0, v5, v4}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Ln3/g0/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v2, Le/i/b/u2/r;->e:Le/i/b/l2/b;

    .line 83
    invoke-virtual {v0}, Le/i/b/l2/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln3/g0/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v0, v2, Le/i/b/u2/r;->e:Le/i/b/l2/b;

    .line 84
    iget-object v0, v0, Le/i/b/l2/b;->b:Le/i/b/s2/n;

    const-string v5, "USPrivacy_Optout"

    invoke-virtual {v0, v5, v4}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ln3/g0/y;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 86
    new-instance v0, Le/i/b/u2/o;

    const-string v15, "gaid"

    const-string v16, "android"

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Le/i/b/u2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    iget-object v4, v2, Le/i/b/u2/r;->f:Le/i/b/s1/d;

    .line 88
    invoke-virtual {v4}, Le/i/b/s1/d;->c()Ljava/lang/String;

    move-result-object v11

    iget-object v4, v2, Le/i/b/u2/r;->g:Le/i/b/s2/f;

    .line 89
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v2, Le/i/b/u2/r;->h:Le/i/b/d2/c;

    .line 90
    invoke-virtual {v4}, Le/i/b/d2/c;->b()I

    move-result v15

    iget-object v4, v2, Le/i/b/u2/r;->e:Le/i/b/l2/b;

    .line 91
    iget-object v4, v4, Le/i/b/l2/b;->d:Le/i/b/l2/c/d;

    invoke-virtual {v4}, Le/i/b/l2/c/d;->a()Le/i/b/l2/c/c;

    move-result-object v16

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/i/b/u2/p;

    .line 94
    iget-object v6, v2, Le/i/b/u2/r;->f:Le/i/b/s1/d;

    .line 95
    invoke-virtual {v6}, Le/i/b/s1/d;->c()Ljava/lang/String;

    move-result-object v18

    .line 96
    iget-object v6, v5, Le/i/b/u2/p;->b:Ljava/lang/String;

    .line 97
    iget-object v7, v5, Le/i/b/u2/p;->c:Le/i/b/s2/a;

    .line 98
    iget-object v5, v5, Le/i/b/u2/p;->a:Lcom/criteo/publisher/model/AdSize;

    .line 99
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lcom/criteo/publisher/model/AdSize;->getFormattedSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    .line 100
    new-instance v5, Le/i/b/u2/k;

    .line 101
    sget-object v9, Le/i/b/s2/a;->c:Le/i/b/s2/a;

    if-ne v7, v9, :cond_20

    move-object/from16 v20, v8

    goto :goto_16

    :cond_20
    move-object/from16 v20, v1

    .line 102
    :goto_16
    sget-object v9, Le/i/b/s2/a;->b:Le/i/b/s2/a;

    if-ne v7, v9, :cond_21

    move-object/from16 v21, v8

    goto :goto_17

    :cond_21
    move-object/from16 v21, v1

    :goto_17
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v22}, Le/i/b/u2/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Collection;)V

    .line 103
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 104
    :cond_22
    new-instance v1, Le/i/b/u2/j;

    const-string v14, "4.4.0"

    move-object v10, v1

    move-object v13, v0

    move-object/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Le/i/b/u2/j;-><init>(Ljava/lang/String;Le/i/b/u2/a0;Le/i/b/u2/e0;Ljava/lang/String;ILe/i/b/l2/c/c;Ljava/util/List;)V

    move-object/from16 v2, p0

    .line 105
    iget-object v0, v2, Le/i/b/i2/d;->d:Le/i/b/u2/r;

    .line 106
    iget-object v0, v0, Le/i/b/u2/r;->c:Le/i/b/u2/y;

    invoke-virtual {v0}, Le/i/b/u2/y;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    iget-object v3, v2, Le/i/b/i2/d;->h:Le/i/b/c2;

    .line 109
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cdbRequest"

    invoke-static {v1, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v3, v3, Le/i/b/c2;->a:Le/i/b/s1/a;

    invoke-interface {v3, v1}, Le/i/b/s1/a;->e(Le/i/b/u2/q;)V

    .line 111
    :try_start_1
    iget-object v3, v2, Le/i/b/i2/d;->c:Le/i/b/i2/g;

    invoke-virtual {v3, v1, v0}, Le/i/b/i2/g;->a(Le/i/b/u2/q;Ljava/lang/String;)Le/i/b/u2/t;

    move-result-object v0

    .line 112
    iget-object v3, v2, Le/i/b/i2/d;->e:Le/i/b/e2;

    invoke-interface {v3}, Le/i/b/e2;->a()J

    move-result-wide v3

    .line 113
    iget-object v5, v0, Le/i/b/u2/t;->a:Ljava/util/List;

    .line 114
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/i/b/u2/w;

    .line 115
    iput-wide v3, v6, Le/i/b/u2/w;->m:J

    goto :goto_18

    .line 116
    :cond_23
    iget-object v3, v2, Le/i/b/i2/d;->h:Le/i/b/c2;

    invoke-virtual {v3, v1, v0}, Le/i/b/c2;->a(Le/i/b/u2/q;Le/i/b/u2/t;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_19

    :catch_1
    move-exception v0

    .line 117
    iget-object v3, v2, Le/i/b/i2/d;->h:Le/i/b/c2;

    invoke-virtual {v3, v1, v0}, Le/i/b/c2;->b(Le/i/b/u2/q;Ljava/lang/Exception;)V

    :goto_19
    return-void
.end method
