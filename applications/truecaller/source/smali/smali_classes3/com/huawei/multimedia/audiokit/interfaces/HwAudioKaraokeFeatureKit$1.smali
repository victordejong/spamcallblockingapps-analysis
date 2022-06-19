.class public Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;


# direct methods
.method public constructor <init>(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v0, "onServiceConnected"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p2}, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$002(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;)Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;

    .line 3
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$000(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$102(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Z)Z

    .line 5
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$200(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    .line 6
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$300(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$400(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$500(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v0, "onServiceDisconnected"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$102(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;Z)Z

    .line 3
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$200(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->access$200(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    :cond_0
    return-void
.end method
