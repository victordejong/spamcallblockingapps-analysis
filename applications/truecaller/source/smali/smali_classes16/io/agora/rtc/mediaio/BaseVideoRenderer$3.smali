.class public Lio/agora/rtc/mediaio/BaseVideoRenderer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendRGBAFrame([BIIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

.field public final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;->this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    iput-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;->this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    iget-object v1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->access$000(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V

    return-void
.end method
