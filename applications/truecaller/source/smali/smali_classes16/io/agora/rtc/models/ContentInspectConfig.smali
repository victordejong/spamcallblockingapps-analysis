.class public Lio/agora/rtc/models/ContentInspectConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;
    }
.end annotation


# static fields
.field public static final CONTENT_INSPECT_TYPE_INVALID:I = 0x0

.field public static final CONTENT_INSPECT_TYPE_MODERATION:I = 0x1

.field public static final CONTENT_INSPECT_TYPE_SUPERVISE:I = 0x2

.field public static final MAX_CONTENT_INSPECT_MODULE_COUNT:I = 0x20


# instance fields
.field public extraInfo:Ljava/lang/String;

.field public moduleCount:I

.field public modules:[Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;

    .line 2
    iput-object v1, p0, Lio/agora/rtc/models/ContentInspectConfig;->modules:[Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lio/agora/rtc/models/ContentInspectConfig;->modules:[Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;

    new-instance v4, Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;

    invoke-direct {v4}, Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lio/agora/rtc/models/ContentInspectConfig;->moduleCount:I

    return-void
.end method
