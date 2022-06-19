.class public final Le/a/d/x/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/d;-><init>(Landroid/content/Context;Lq3/a/g0;Le/a/d/c0/o1;Le/a/d/c0/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lio/agora/rtc/RtcEngine;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/x/d;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/d/x/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/d$a;->b:Le/a/d/x/d;

    iput-object p2, p0, Le/a/d/x/d$a;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/x/d$a;->c:Landroid/content/Context;

    sget v1, Lcom/truecaller/voip/R$string;->voip_agora_app_id:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/d/x/d$a;->b:Le/a/d/x/d;

    .line 2
    iget-object v2, v2, Le/a/d/x/d;->f:Le/a/d/x/d$i;

    .line 3
    invoke-static {v0, v1, v2}, Lio/agora/rtc/RtcEngine;->create(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)Lio/agora/rtc/RtcEngine;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setDefaultAudioRoutetoSpeakerphone(Z)I

    .line 5
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setChannelProfile(I)I

    .line 6
    sget-object v1, Lio/agora/rtc/Constants$AudioProfile;->SPEECH_STANDARD:Lio/agora/rtc/Constants$AudioProfile;

    invoke-static {v1}, Lio/agora/rtc/Constants$AudioProfile;->getValue(Lio/agora/rtc/Constants$AudioProfile;)I

    move-result v1

    sget-object v2, Lio/agora/rtc/Constants$AudioScenario;->CHATROOM_ENTERTAINMENT:Lio/agora/rtc/Constants$AudioScenario;

    invoke-static {v2}, Lio/agora/rtc/Constants$AudioScenario;->getValue(Lio/agora/rtc/Constants$AudioScenario;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/RtcEngine;->setAudioProfile(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
