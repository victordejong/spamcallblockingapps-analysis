.class public Lio/agora/rtc/video/AGraphicBufferEx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/AGraphicBufferEx;->isValidNativeBuffer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/AGraphicBufferEx;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/AGraphicBufferEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/AGraphicBufferEx$1;->this$0:Lio/agora/rtc/video/AGraphicBufferEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/AGraphicBufferEx$1;->this$0:Lio/agora/rtc/video/AGraphicBufferEx;

    invoke-static {v0}, Lio/agora/rtc/video/AGraphicBufferEx;->access$000(Lio/agora/rtc/video/AGraphicBufferEx;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/agora/rtc/video/AGraphicBufferEx;->access$100(Lio/agora/rtc/video/AGraphicBufferEx;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/AGraphicBufferEx$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
