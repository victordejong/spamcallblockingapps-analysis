.class public Lio/agora/rtc/gl/EglRenderer$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->onFrame(Lio/agora/rtc/gl/VideoFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$7;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$7;->this$0:Lio/agora/rtc/gl/EglRenderer;

    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$1000(Lio/agora/rtc/gl/EglRenderer;)V

    return-void
.end method
