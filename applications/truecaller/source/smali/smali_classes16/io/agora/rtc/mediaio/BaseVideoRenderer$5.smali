.class public Lio/agora/rtc/mediaio/BaseVideoRenderer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/BaseVideoRenderer;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

.field public final synthetic val$completionLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$5;->this$0:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    iput-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$5;->val$completionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer$5;->val$completionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
