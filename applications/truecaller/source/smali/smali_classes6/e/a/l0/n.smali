.class public Le/a/l0/n;
.super Le/a/l0/f;
.source "SourceFile"


# static fields
.field public static final k:J


# instance fields
.field public c:[Ljava/lang/String;

.field public final d:Ljava/lang/Object;

.field public final e:Landroid/content/ContentResolver;

.field public final f:Landroid/telephony/TelephonyManager;

.field public final g:Landroid/telephony/SubscriptionManager;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public volatile i:J

.field public final j:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/l0/n;->k:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Le/a/l0/f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/l0/n;->c:[Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Le/a/l0/n;->d:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Le/a/l0/n;->i:J

    const-string v1, "phone"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Le/a/l0/n;->f:Landroid/telephony/TelephonyManager;

    .line 6
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Le/a/l0/n;->g:Landroid/telephony/SubscriptionManager;

    .line 7
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCallState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Le/a/l0/n;->e:Landroid/content/ContentResolver;

    .line 9
    iput-object v0, p0, Le/a/l0/n;->j:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/l0/n;->c:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/a/l0/n;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/a/l0/n;->c:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 4
    sget-object v1, Le/a/l0/f;->a:[Ljava/lang/String;

    const-string v2, "normalized_number"

    const-string v3, "features"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lw3/c/a/a/a/a;->b([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v2, p0, Le/a/l0/n;->e:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "subscription_component_name"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id ASC LIMIT 1"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 6
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_1

    :catch_1
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    :try_start_3
    const-string v2, "subscription_component_name"

    .line 7
    invoke-static {v1, v2}, Lw3/c/a/a/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 8
    :cond_1
    iput-object v1, p0, Le/a/l0/n;->c:[Ljava/lang/String;

    .line 9
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 10
    :cond_3
    :goto_2
    iget-object v0, p0, Le/a/l0/n;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public d(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/l0/n;->j:Ljava/lang/reflect/Method;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Le/a/l0/n;->i:J

    .line 4
    iget-object v0, p0, Le/a/l0/n;->h:Ljava/util/List;

    sub-long v4, v2, v4

    .line 5
    sget-wide v6, Le/a/l0/n;->k:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    monitor-enter p0

    .line 7
    :try_start_0
    iget-wide v4, p0, Le/a/l0/n;->i:J

    .line 8
    iget-object v0, p0, Le/a/l0/n;->h:Ljava/util/List;

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 9
    monitor-exit p0

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/l0/n;->g:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 11
    iput-object v0, p0, Le/a/l0/n;->h:Ljava/util/List;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Le/a/l0/n;->i:J

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_3

    return v1

    .line 14
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 15
    :try_start_1
    iget-object v3, p0, Le/a/l0/n;->j:Ljava/lang/reflect/Method;

    iget-object v4, p0, Le/a/l0/n;->f:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 16
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :cond_5
    return v1

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
