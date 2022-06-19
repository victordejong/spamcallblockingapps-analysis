.class public abstract Lcom/appnext/core/ra/database/RecentAppsDatabase;
.super Ln3/c0/q;
.source "SourceFile"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "RecentAppsDatabase_Impl.db"

.field private static volatile instance:Lcom/appnext/core/ra/database/RecentAppsDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/c0/q;-><init>()V

    return-void
.end method

.method private static create(Landroid/content/Context;)Lcom/appnext/core/ra/database/RecentAppsDatabase;
    .locals 2

    .line 1
    const-class v0, Lcom/appnext/core/ra/database/RecentAppsDatabase;

    const-string v1, "RecentAppsDatabase_Impl.db"

    invoke-static {p0, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object p0

    check-cast p0, Lcom/appnext/core/ra/database/RecentAppsDatabase;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/appnext/core/ra/database/RecentAppsDatabase;
    .locals 2

    const-class v0, Lcom/appnext/core/ra/database/RecentAppsDatabase;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/appnext/core/ra/database/RecentAppsDatabase;->instance:Lcom/appnext/core/ra/database/RecentAppsDatabase;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/appnext/core/ra/database/RecentAppsDatabase;->create(Landroid/content/Context;)Lcom/appnext/core/ra/database/RecentAppsDatabase;

    move-result-object p0

    sput-object p0, Lcom/appnext/core/ra/database/RecentAppsDatabase;->instance:Lcom/appnext/core/ra/database/RecentAppsDatabase;

    .line 3
    :cond_0
    sget-object p0, Lcom/appnext/core/ra/database/RecentAppsDatabase;->instance:Lcom/appnext/core/ra/database/RecentAppsDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract recentAppDao()Lcom/appnext/core/ra/database/b;
.end method
