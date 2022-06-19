.class public Lio/agora/rtc/video/AGraphicBufferEx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/AGraphicBufferEx;->getNativeBuffer()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/AGraphicBufferEx;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/AGraphicBufferEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/AGraphicBufferEx$2;->this$0:Lio/agora/rtc/video/AGraphicBufferEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/AGraphicBufferEx$2;->this$0:Lio/agora/rtc/video/AGraphicBufferEx;

    invoke-static {v0}, Lio/agora/rtc/video/AGraphicBufferEx;->access$000(Lio/agora/rtc/video/AGraphicBufferEx;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    invoke-virtual {p0}, Lio/agora/rtc/video/AGraphicBufferEx$2;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
