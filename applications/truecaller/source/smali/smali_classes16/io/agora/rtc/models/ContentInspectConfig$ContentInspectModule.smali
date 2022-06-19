.class public Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/models/ContentInspectConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentInspectModule"
.end annotation


# instance fields
.field public interval:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;->type:I

    .line 3
    iput v0, p0, Lio/agora/rtc/models/ContentInspectConfig$ContentInspectModule;->interval:I

    return-void
.end method
