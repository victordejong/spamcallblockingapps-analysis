.class public Lio/agora/rtc/gl/EglRenderer$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->clearImage(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;

.field public final synthetic val$a:F

.field public final synthetic val$b:F

.field public final synthetic val$g:F

.field public final synthetic val$r:F


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglRenderer;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$9;->this$0:Lio/agora/rtc/gl/EglRenderer;

    iput p2, p0, Lio/agora/rtc/gl/EglRenderer$9;->val$r:F

    iput p3, p0, Lio/agora/rtc/gl/EglRenderer$9;->val$g:F

    iput p4, p0, Lio/agora/rtc/gl/EglRenderer$9;->val$b:F

    iput p5, p0, Lio/agora/rtc/gl/EglRenderer$9;->val$a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$9;->this$0:Lio/agora/rtc/gl/EglRenderer;

    iget v1, p0, Lio/agora/rtc/gl/EglRenderer$9;->val$r:F

    iget v2, p0, Lio/agora/rtc/gl/EglRenderer$9;->val$g:F

    iget v3, p0, Lio/agora/rtc/gl/EglRenderer$9;->val$b:F

    iget v4, p0, Lio/agora/rtc/gl/EglRenderer$9;->val$a:F

    invoke-static {v0, v1, v2, v3, v4}, Lio/agora/rtc/gl/EglRenderer;->access$1100(Lio/agora/rtc/gl/EglRenderer;FFFF)V

    return-void
.end method
