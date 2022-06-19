.class public Lio/agora/rtc/IRtcEngineEventHandler$UploadErrorReason;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/IRtcEngineEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadErrorReason"
.end annotation


# static fields
.field public static final UPLOAD_NET_ERROR:I = 0x1

.field public static final UPLOAD_SERVER_ERROR:I = 0x2

.field public static final UPLOAD_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
