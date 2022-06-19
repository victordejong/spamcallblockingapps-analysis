.class public final Lcom/facebook/appevents/l0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u001c\u0010\u000f\u001a\u00020\u000c2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/appevents/integrity/IntegrityManager;",
        "",
        "()V",
        "INTEGRITY_TYPE_ADDRESS",
        "",
        "INTEGRITY_TYPE_HEALTH",
        "INTEGRITY_TYPE_NONE",
        "RESTRICTIVE_ON_DEVICE_PARAMS_KEY",
        "enabled",
        "",
        "isSampleEnabled",
        "enable",
        "",
        "getIntegrityPredictionResult",
        "textFeature",
        "processParameters",
        "parameters",
        "",
        "shouldFilter",
        "input",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/l0/a;

.field public static b:Z

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/l0/a;

    invoke-direct {v0}, Lcom/facebook/appevents/l0/a;-><init>()V

    sput-object v0, Lcom/facebook/appevents/l0/a;->a:Lcom/facebook/appevents/l0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const-string v3, "none"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x1e

    :try_start_1
    new-array v5, v0, [F

    move v6, v1

    :goto_0
    if-ge v6, v0, :cond_2

    const/4 v7, 0x0

    .line 2
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3
    :cond_2
    sget-object v0, Lcom/facebook/appevents/n0/h;->a:Lcom/facebook/appevents/n0/h;

    sget-object v0, Lcom/facebook/appevents/n0/h$a;->a:Lcom/facebook/appevents/n0/h$a;

    new-array v6, v4, [[F

    aput-object v5, v6, v1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-static {v0, v6, v5}, Lcom/facebook/appevents/n0/h;->f(Lcom/facebook/appevents/n0/h$a;[[F[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    aget-object p1, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_4
    move-object v2, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 5
    :goto_2
    invoke-static {v3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/2addr p1, v4

    return p1

    :catchall_1
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method
