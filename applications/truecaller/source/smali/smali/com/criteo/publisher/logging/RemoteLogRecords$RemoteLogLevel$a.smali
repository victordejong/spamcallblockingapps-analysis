.class public final Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->ERROR:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->WARNING:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    goto :goto_0

    .line 3
    :cond_2
    sget-object p1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->INFO:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    goto :goto_0

    .line 4
    :cond_3
    sget-object p1, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->DEBUG:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    :goto_0
    return-object p1
.end method
