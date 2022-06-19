.class public Lio/agora/rtc/gl/EglRenderer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;

.field public final synthetic val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$renderLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglRenderer;Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$4;->this$0:Lio/agora/rtc/gl/EglRenderer;

    iput-object p2, p0, Lio/agora/rtc/gl/EglRenderer$4;->val$renderLooper:Landroid/os/Looper;

    iput-object p3, p0, Lio/agora/rtc/gl/EglRenderer$4;->val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$4;->this$0:Lio/agora/rtc/gl/EglRenderer;

    const-string v1, "Quitting render thread."

    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$4;->val$renderLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$4;->val$eglCleanupBarrier:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
