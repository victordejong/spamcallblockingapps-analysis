.class public final synthetic Lcom/mopub/mobileads/VastVideoViewProgressRunnable$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/mopub/mobileads/VastTracker$MessageType;->values()[Lcom/mopub/mobileads/VastTracker$MessageType;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lcom/mopub/mobileads/VastVideoViewProgressRunnable$WhenMappings;->$EnumSwitchMapping$0:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    aput v0, v1, v3

    return-void
.end method
