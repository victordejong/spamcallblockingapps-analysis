.class public Lcom/appnext/core/crashes/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static eD:Lcom/appnext/core/crashes/b;


# instance fields
.field private aM:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/core/crashes/b;->aM:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/appnext/core/crashes/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/crashes/b;->aM:Landroid/content/Context;

    return-object p0
.end method

.method public static p(Landroid/content/Context;)Lcom/appnext/core/crashes/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/crashes/b;->eD:Lcom/appnext/core/crashes/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/crashes/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/crashes/b;->eD:Lcom/appnext/core/crashes/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/crashes/b;

    invoke-direct {v1, p0}, Lcom/appnext/core/crashes/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/core/crashes/b;->eD:Lcom/appnext/core/crashes/b;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/appnext/core/crashes/b;->eD:Lcom/appnext/core/crashes/b;

    return-object p0
.end method


# virtual methods
.method public final m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/crashes/b;->aM:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/crashes/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/appnext/core/crashes/b$1;-><init>(Lcom/appnext/core/crashes/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 3
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/appnext/core/crashes/CrashesReportWorkManagerService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
