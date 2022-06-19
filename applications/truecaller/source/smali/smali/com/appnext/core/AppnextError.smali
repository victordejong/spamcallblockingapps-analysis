.class public Lcom/appnext/core/AppnextError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONNECTION_ERROR:Ljava/lang/String; = "Connection Error"

.field public static final INTERNAL_ERROR:Ljava/lang/String; = "Internal error"

.field public static final NO_ADS:Ljava/lang/String; = "No Ads"

.field public static final NO_MARKET:Ljava/lang/String; = "No market installed on the device"

.field public static final NULL_CONTEXT:Ljava/lang/String; = "Null context"

.field public static final SLOW_CONNECTION:Ljava/lang/String; = "Too Slow Connection"

.field public static final TIMEOUT:Ljava/lang/String; = "Timeout"


# instance fields
.field private dz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/core/AppnextError;->dz:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/appnext/core/AppnextError;->dz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextError;->dz:Ljava/lang/String;

    return-object v0
.end method
