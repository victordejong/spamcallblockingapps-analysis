.class public final Lcom/revenuecat/purchases/common/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/revenuecat/purchases/common/Config;

.field private static debugLogsEnabled:Z = false

.field public static final frameworkVersion:Ljava/lang/String; = "4.0.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/common/Config;

    invoke-direct {v0}, Lcom/revenuecat/purchases/common/Config;-><init>()V

    sput-object v0, Lcom/revenuecat/purchases/common/Config;->INSTANCE:Lcom/revenuecat/purchases/common/Config;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDebugLogsEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/revenuecat/purchases/common/Config;->debugLogsEnabled:Z

    return v0
.end method

.method public final setDebugLogsEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/revenuecat/purchases/common/Config;->debugLogsEnabled:Z

    return-void
.end method
