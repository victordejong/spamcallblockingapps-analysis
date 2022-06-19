.class public final Lcom/truecaller/incallui/service/InCallUIService;
.super Le/a/f/y/g;
.source "SourceFile"

# interfaces
.implements Le/a/f/y/k;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0008\u00a2\u0006\u0005\u0008\u008c\u0001\u0010\tJ\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0019\u0010\r\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\tJ\u0015\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ-\u0010$\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u001e2\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008&\u0010\tJ%\u0010+\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\'2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010/\u001a\u00020\u00072\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u000201H\u0016\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00085\u0010\tJ\u0017\u00108\u001a\u00020\u00072\u0006\u00107\u001a\u000206H\u0016\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010:\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008:\u0010\tJ\u000f\u0010;\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008;\u0010\tJ\u000f\u0010<\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008<\u0010\tJ\u000f\u0010=\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008=\u0010\tJ\u000f\u0010>\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008>\u0010\tJ\u000f\u0010?\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008?\u0010\tJ\u000f\u0010@\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008@\u0010\tJ\u000f\u0010A\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008A\u0010\tJ\u000f\u0010B\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008B\u0010\tJ\u000f\u0010C\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008C\u0010\tJ\u000f\u0010D\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008D\u0010\tJ\u0017\u0010F\u001a\u00020\u00072\u0006\u0010E\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008F\u00100J\u000f\u0010G\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010I\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008I\u0010\u0012J\u0017\u0010K\u001a\u00020\u00072\u0006\u0010J\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008K\u00100J\u000f\u0010L\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008L\u0010\tJ\u000f\u0010M\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008M\u0010\tJ\u000f\u0010N\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008N\u0010\tJ\u000f\u0010O\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008O\u0010HJ\u000f\u0010P\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008P\u0010\tJ\u0017\u0010R\u001a\u00020\u00072\u0006\u0010Q\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\u000f\u0010T\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008T\u0010\tR\"\u0010[\u001a\u00020U8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008;\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR(\u0010c\u001a\u0008\u0012\u0004\u0012\u00020]0\\8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008:\u0010^\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR\u001d\u0010h\u001a\u00020d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010e\u001a\u0004\u0008f\u0010gR\"\u0010o\u001a\u00020i8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008A\u0010j\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010nR\u001e\u0010r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0p8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010qR\u001c\u0010t\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010sR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010uR(\u0010z\u001a\u0004\u0018\u00010\u00032\u0008\u0010v\u001a\u0004\u0018\u00010\u00038\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008C\u0010w\"\u0004\u0008x\u0010yR$\u0010\u0081\u0001\u001a\u00020{8\u0006@\u0006X\u0087.\u00a2\u0006\u0013\n\u0004\u0008/\u0010|\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R)\u0010\u0088\u0001\u001a\u00030\u0082\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0017\n\u0005\u0008\u0005\u0010\u0083\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u0019\u0010\u008b\u0001\u001a\u00030\u0089\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008M\u0010\u008a\u0001\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Lcom/truecaller/incallui/service/InCallUIService;",
        "Landroid/telecom/InCallService;",
        "Le/a/f/y/k;",
        "Le/a/g4/a/a;",
        "Le/a/g4/a/d/b;",
        "f",
        "(Le/a/g4/a/a;)Le/a/g4/a/d/b;",
        "Ls1/s;",
        "H",
        "()V",
        "onCreate",
        "Landroid/telecom/CallAudioState;",
        "audioState",
        "onCallAudioStateChanged",
        "(Landroid/telecom/CallAudioState;)V",
        "Landroid/telecom/Call;",
        "call",
        "onCallAdded",
        "(Landroid/telecom/Call;)V",
        "r",
        "()Landroid/telecom/Call;",
        "a",
        "Lq3/a/w2/r;",
        "Le/a/f/z/n0/a;",
        "s",
        "()Lq3/a/w2/r;",
        "",
        "fullscreenIntent",
        "j",
        "(Z)V",
        "",
        "contentText",
        "",
        "timestamp",
        "Le/a/k0/h;",
        "recordingState",
        "v",
        "(ILjava/lang/Long;Le/a/k0/h;)V",
        "x",
        "Le/a/f3/c;",
        "callBubbles",
        "Lkotlin/Function0;",
        "clickListener",
        "z",
        "(Le/a/f3/c;Ls1/z/b/a;)V",
        "",
        "title",
        "h",
        "(Ljava/lang/String;)V",
        "Le/a/f/z/a;",
        "callerLabel",
        "D",
        "(Le/a/f/z/a;)V",
        "p",
        "Le/a/f/z/k0;",
        "config",
        "t",
        "(Le/a/f/z/k0;)V",
        "g",
        "e",
        "k",
        "c",
        "b",
        "m",
        "B",
        "d",
        "C",
        "l",
        "o",
        "deviceAddress",
        "u",
        "E",
        "()Z",
        "onCallRemoved",
        "message",
        "A",
        "i",
        "n",
        "w",
        "R0",
        "onDestroy",
        "startTimeBase",
        "q",
        "(J)V",
        "y",
        "Le/a/f/z/o0/a;",
        "Le/a/f/z/o0/a;",
        "getNotificationFactory",
        "()Le/a/f/z/o0/a;",
        "setNotificationFactory",
        "(Le/a/f/z/o0/a;)V",
        "notificationFactory",
        "Ljavax/inject/Provider;",
        "Le/a/g/c;",
        "Ljavax/inject/Provider;",
        "getAfterCallScreen",
        "()Ljavax/inject/Provider;",
        "setAfterCallScreen",
        "(Ljavax/inject/Provider;)V",
        "afterCallScreen",
        "Le/a/p5/r0/b;",
        "Ls1/g;",
        "F",
        "()Le/a/p5/r0/b;",
        "bluetoothHeadsetMonitor",
        "Le/a/f/y/i;",
        "Le/a/f/y/i;",
        "getPresenter",
        "()Le/a/f/y/i;",
        "setPresenter",
        "(Le/a/f/y/i;)V",
        "presenter",
        "Lq3/a/x2/a1;",
        "Lq3/a/x2/a1;",
        "systemAudioState",
        "Lq3/a/w2/r;",
        "audioStateChannel",
        "Landroid/telecom/Call;",
        "value",
        "Le/a/g4/a/a;",
        "G",
        "(Le/a/g4/a/a;)V",
        "notification",
        "Le/a/p5/a0;",
        "Le/a/p5/a0;",
        "getPermissionUtil",
        "()Le/a/p5/a0;",
        "setPermissionUtil",
        "(Le/a/p5/a0;)V",
        "permissionUtil",
        "Le/a/f/z/j;",
        "Le/a/f/z/j;",
        "getInCallUICallerIdServiceProxy",
        "()Le/a/f/z/j;",
        "setInCallUICallerIdServiceProxy",
        "(Le/a/f/z/j;)V",
        "inCallUICallerIdServiceProxy",
        "Le/a/f/z/i;",
        "Le/a/f/z/i;",
        "connection",
        "<init>",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/f/y/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/f/z/o0/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/f/z/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/p5/a0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Landroid/telecom/Call;

.field public final j:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Landroid/telecom/CallAudioState;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lq3/a/w2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/r<",
            "Le/a/f/z/n0/a;",
            ">;"
        }
    .end annotation
.end field

.field public l:Le/a/g4/a/a;

.field public final m:Ls1/g;

.field public final n:Le/a/f/z/i;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Le/a/f/y/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/incallui/service/InCallUIService;->j:Lq3/a/x2/a1;

    .line 3
    new-instance v1, Lq3/a/w2/r;

    .line 4
    new-instance v2, Le/a/f/z/n0/a;

    .line 5
    sget-object v3, Lcom/truecaller/incallui/utils/audio/AudioRoute;->EARPIECE:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    .line 6
    sget-object v4, Ls1/u/s;->a:Ls1/u/s;

    const/4 v5, 0x0

    .line 7
    invoke-direct {v2, v3, v4, v0, v5}, Le/a/f/z/n0/a;-><init>(Lcom/truecaller/incallui/utils/audio/AudioRoute;Ljava/util/List;Le/a/p5/r0/a;Z)V

    .line 8
    invoke-direct {v1, v2}, Lq3/a/w2/r;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/truecaller/incallui/service/InCallUIService;->k:Lq3/a/w2/r;

    .line 9
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/incallui/service/InCallUIService$a;

    invoke-direct {v1, p0}, Lcom/truecaller/incallui/service/InCallUIService$a;-><init>(Lcom/truecaller/incallui/service/InCallUIService;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->m:Ls1/g;

    .line 10
    new-instance v0, Le/a/f/z/i;

    invoke-direct {v0, p0}, Le/a/f/z/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->n:Le/a/f/z/i;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/incallui/R$string;->incallui_status_call_connected:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->setMuted(Z)V

    return-void
.end method

.method public D(Le/a/f/z/a;)V
    .locals 3

    const-string v0, "callerLabel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Le/a/f/z/a;->a:Ljava/lang/String;

    .line 3
    iget v2, p1, Le/a/f/z/a;->b:I

    .line 4
    iget p1, p1, Le/a/f/z/a;->c:I

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Le/a/g4/a/a;->h(Ljava/lang/String;II)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public E()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telecom/InCallService;->canAddCall()Z

    move-result v0

    return v0
.end method

.method public final F()Le/a/p5/r0/b;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->m:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/r0/b;

    return-object v0
.end method

.method public final G(Le/a/g4/a/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/g4/a/a;->a()V

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    return-void
.end method

.method public final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Le/a/g4/a/a;->q(Le/a/g4/a/a;Landroid/app/Service;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public R0()Z
    .locals 2

    const-string v0, "keyguard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->g:Ljavax/inject/Provider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g/c;

    invoke-interface {v0}, Le/a/g/c;->a()V

    return-void

    :cond_0
    const-string v0, "afterCallScreen"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->f(Le/a/g4/a/a;)Le/a/g4/a/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->x()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->f(Le/a/g4/a/a;)Le/a/g4/a/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->t()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->setMuted(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->f(Le/a/g4/a/a;)Le/a/g4/a/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->v()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public final f(Le/a/g4/a/a;)Le/a/g4/a/d/b;
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/g4/a/d/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/g4/a/d/b;

    return-object p1
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->f(Le/a/g4/a/a;)Le/a/g4/a/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->r()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/g4/a/a;->j(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->stopForeground(Z)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->G(Le/a/g4/a/a;)V

    return-void
.end method

.method public j(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->e:Le/a/f/z/o0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v2, v0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Le/a/h4/q/g;

    if-nez v3, :cond_0

    move-object v2, v1

    :cond_0
    check-cast v2, Le/a/h4/q/g;

    if-eqz v2, :cond_5

    .line 4
    invoke-interface {v2}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v2

    .line 5
    iget-object v3, v0, Le/a/f/z/o0/a;->b:Le/a/g4/a/b;

    .line 6
    sget v4, Lcom/truecaller/incallui/R$id;->incallui_service_incoming_call_notification:I

    if-eqz p1, :cond_1

    const-string v5, "incoming_calls"

    goto :goto_0

    :cond_1
    const-string v5, "phone_calls"

    .line 7
    :goto_0
    invoke-interface {v2, v5}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v5, v0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    .line 9
    sget v6, Lcom/truecaller/incallui/R$id;->incallui_incoming_notification_action_answer:I

    .line 10
    sget-object v7, Lcom/truecaller/incallui/callui/InCallUIActivity;->g:Lcom/truecaller/incallui/callui/InCallUIActivity$a;

    const-string v8, "context"

    .line 11
    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "Notification"

    const-string v9, "callerContext"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-ge v9, v10, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v9, Lcom/truecaller/incallui/callui/InCallUIActivity;

    invoke-direct {v1, v5, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "com.truecaller.incallui.callui.ACTION_ANSWER_CALL"

    .line 14
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v9, "com.truecaller.incallui.callui.PARAM_CONTEXT"

    .line 15
    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v9, 0x10000000

    .line 16
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    :goto_1
    const/high16 v9, 0xc000000

    .line 17
    invoke-static {v5, v6, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v5, "PendingIntent.getActivit\u2026G_IMMUTABLE\n            )"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v5, Lcom/truecaller/incallui/R$id;->incallui_incoming_notification_action_decline:I

    const-string v6, "Decline"

    invoke-virtual {v0, v5, v6}, Le/a/f/z/o0/a;->a(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 19
    invoke-virtual {v3, v4, v2, v1, v5}, Le/a/g4/a/b;->a(ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Le/a/g4/a/c/a;

    move-result-object v1

    .line 20
    iget-object v2, v0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    invoke-virtual {v7, v2, v8}, Lcom/truecaller/incallui/callui/InCallUIActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 21
    iget-object v0, v0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    sget v3, Lcom/truecaller/incallui/R$string;->incallui_notification_incoming_content:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "context.getString(R.stri\u2026ication_incoming_content)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Le/a/g4/a/c/a;->r(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v2}, Le/a/g4/a/a;->i(Landroid/content/Intent;)V

    if-eqz p1, :cond_3

    const-string p1, "intent"

    .line 23
    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object p1

    .line 25
    invoke-virtual {v1}, Le/a/g4/a/a;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    .line 26
    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 27
    iput-object v0, p1, Ln3/k/a/q;->h:Landroid/app/PendingIntent;

    const/16 v0, 0x80

    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v0, v2}, Ln3/k/a/q;->p(IZ)V

    const/4 p1, 0x2

    .line 29
    invoke-virtual {v1}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v0

    .line 30
    iput p1, v0, Ln3/k/a/q;->l:I

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Le/a/g4/a/a;->a()V

    .line 32
    :cond_4
    iput-object v1, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    .line 33
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void

    .line 34
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Application class does not implement "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Le/a/h4/q/g;

    invoke-static {v1, v0}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p1, "notificationFactory"

    .line 35
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->f(Le/a/g4/a/a;)Le/a/g4/a/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/g4/a/d/b;->j:Landroid/widget/RemoteViews;

    sget v1, Lcom/truecaller/notification/call/R$id;->image_mute:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(context, PhoneAcc\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->f:Le/a/f/z/j;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/f/z/j;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/truecaller/incallui/service/InCallUIService;->n:Le/a/f/z/i;

    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "intent"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, v1, Le/a/f/z/i;->a:Z

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, v1, Le/a/f/z/i;->b:Landroid/content/Context;

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, v1, Le/a/f/z/i;->a:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "inCallUICallerIdServiceProxy"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 9

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService;->i:Landroid/telecom/Call;

    .line 2
    iget-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService;->d:Le/a/f/y/i;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Le/a/f/y/o;

    .line 3
    iget-object v1, p1, Le/a/f/y/o;->z:Le/a/f/z/d;

    check-cast v1, Le/a/f/z/e;

    .line 4
    iget-object v1, v1, Le/a/f/z/e;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/settings/CallingSettings;

    const-string v2, "key_temp_latest_call_made_with_tc"

    invoke-interface {v1, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5
    iget-object v2, p1, Le/a/f/y/o;->p:Le/a/f/y/c;

    const-string v3, "inCallUIServicePresenter"

    invoke-interface {v2, v3, p1}, Le/a/f/y/c;->p(Ljava/lang/String;Le/a/f/y/b;)V

    .line 6
    invoke-virtual {p1}, Le/a/f/y/o;->Qj()V

    .line 7
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/y/k;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Le/a/f/y/k;->a()V

    .line 8
    :cond_0
    new-instance v2, Le/a/f/y/t;

    invoke-direct {v2, p1, v1}, Le/a/f/y/t;-><init>(Le/a/f/y/o;Z)V

    .line 9
    iget-object v3, p1, Le/a/f/y/o;->e:Lq3/a/i0;

    new-instance v6, Le/a/f/y/l;

    invoke-direct {v6, p1, v2, v0}, Le/a/f/y/l;-><init>(Le/a/f/y/o;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_1
    const-string p1, "presenter"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object v0, Lcom/truecaller/incallui/utils/audio/AudioRoute;->SPEAKER:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    goto :goto_0

    .line 3
    :cond_2
    sget-object v0, Lcom/truecaller/incallui/utils/audio/AudioRoute;->WIRED_HEADSET:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    goto :goto_0

    .line 4
    :cond_3
    sget-object v0, Lcom/truecaller/incallui/utils/audio/AudioRoute;->BLUETOOTH:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    goto :goto_0

    .line 5
    :cond_4
    sget-object v0, Lcom/truecaller/incallui/utils/audio/AudioRoute;->EARPIECE:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->F()Le/a/p5/r0/b;

    move-result-object v1

    invoke-virtual {v1}, Le/a/p5/r0/b;->b()Le/a/p5/r0/d;

    move-result-object v1

    goto :goto_2

    .line 8
    :cond_6
    new-instance v1, Le/a/p5/r0/d;

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Le/a/p5/r0/d;-><init>(Le/a/p5/r0/a;Ljava/util/List;)V

    .line 9
    :goto_2
    iget-object v2, p0, Lcom/truecaller/incallui/service/InCallUIService;->k:Lq3/a/w2/r;

    .line 10
    new-instance v3, Le/a/f/z/n0/a;

    .line 11
    iget-object v4, v1, Le/a/p5/r0/d;->b:Ljava/util/List;

    .line 12
    iget-object v1, v1, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    .line 13
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v5

    .line 14
    invoke-direct {v3, v0, v4, v1, v5}, Le/a/f/z/n0/a;-><init>(Lcom/truecaller/incallui/utils/audio/AudioRoute;Ljava/util/List;Le/a/p5/r0/a;Z)V

    .line 15
    invoke-static {v2, v3}, Ls1/a/a/a/v0/f/d;->I2(Lq3/a/w2/d0;Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->j:Lq3/a/x2/a1;

    invoke-interface {v0, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService;->d:Le/a/f/y/i;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/f/y/o;

    .line 2
    iget-object p1, p1, Le/a/f/y/o;->p:Le/a/f/y/c;

    invoke-interface {p1}, Le/a/f/y/c;->C()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Le/a/f/y/g;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->d:Le/a/f/y/i;

    const/4 v1, 0x0

    const-string v2, "presenter"

    if-eqz v0, :cond_1

    check-cast v0, Le/a/f/y/o;

    invoke-virtual {v0, p0}, Le/a/f/y/o;->Y0(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->F()Le/a/p5/r0/b;

    move-result-object v0

    new-instance v3, Le/a/f/y/h;

    invoke-direct {v3, p0}, Le/a/f/y/h;-><init>(Lcom/truecaller/incallui/service/InCallUIService;)V

    .line 4
    iput-object v3, v0, Le/a/p5/r0/b;->d:Ls1/z/b/a;

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->F()Le/a/p5/r0/b;

    move-result-object v0

    iget-object v3, p0, Lcom/truecaller/incallui/service/InCallUIService;->d:Le/a/f/y/i;

    if-eqz v3, :cond_0

    check-cast v3, Le/a/f/y/o;

    iget-object v1, p0, Lcom/truecaller/incallui/service/InCallUIService;->j:Lq3/a/x2/a1;

    invoke-virtual {v0, v3, v1}, Le/a/p5/r0/b;->h(Lq3/a/i0;Lq3/a/x2/i1;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->j:Lq3/a/x2/a1;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->G(Le/a/g4/a/a;)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/incallui/service/InCallUIService;->d:Le/a/f/y/i;

    if-eqz v1, :cond_0

    check-cast v1, Le/a/f/y/o;

    invoke-virtual {v1}, Le/a/f/y/o;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->F()Le/a/p5/r0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/a/p5/r0/b;->i()V

    .line 4
    invoke-super {p0}, Landroid/telecom/InCallService;->onDestroy()V

    return-void

    :cond_0
    const-string v1, "presenter"

    .line 5
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/a;->e()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public q(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->f(Le/a/g4/a/a;)Le/a/g4/a/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Le/a/g4/a/d/b;->s(J)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public r()Landroid/telecom/Call;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->i:Landroid/telecom/Call;

    return-object v0
.end method

.method public s()Lq3/a/w2/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/r<",
            "Le/a/f/z/n0/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->k:Lq3/a/w2/r;

    return-object v0
.end method

.method public t(Le/a/f/z/k0;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Le/a/m0/a1$k;->R0(Le/a/f/z/k0;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/g4/a/a;->g(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 5

    const-string v0, "deviceAddress"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    const-string v2, "callAudioState"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "callAudioState.supportedBluetoothDevices"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "device"

    .line 4
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, v2}, Landroid/telecom/InCallService;->requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0, v1}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    :goto_1
    return-void
.end method

.method public v(ILjava/lang/Long;Le/a/k0/h;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->e:Le/a/f/z/o0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    iget-object v2, v0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Le/a/h4/q/g;

    if-nez v3, :cond_0

    move-object v2, v1

    :cond_0
    check-cast v2, Le/a/h4/q/g;

    if-eqz v2, :cond_9

    .line 4
    invoke-interface {v2}, Le/a/h4/q/g;->n()Le/a/h4/n;

    move-result-object v2

    .line 5
    iget-object v3, v0, Le/a/f/z/o0/a;->b:Le/a/g4/a/b;

    .line 6
    sget v4, Lcom/truecaller/incallui/R$id;->incallui_service_ongoing_call_notification:I

    const-string v5, "phone_calls"

    .line 7
    invoke-interface {v2, v5}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    sget v2, Lcom/truecaller/incallui/R$id;->incallui_incoming_notification_action_mute:I

    const-string v6, "ToggleMute"

    invoke-virtual {v0, v2, v6}, Le/a/f/z/o0/a;->a(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 9
    sget v2, Lcom/truecaller/incallui/R$id;->incallui_incoming_notification_action_speaker:I

    const-string v7, "ToggleSpeaker"

    invoke-virtual {v0, v2, v7}, Le/a/f/z/o0/a;->a(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 10
    sget v2, Lcom/truecaller/incallui/R$id;->incallui_incoming_notification_action_hang_up:I

    const-string v8, "HangUp"

    invoke-virtual {v0, v2, v8}, Le/a/f/z/o0/a;->a(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz p3, :cond_6

    .line 11
    sget v1, Lcom/truecaller/incallui/R$id;->incallui_incoming_notification_action_record:I

    const-string v2, "ToggleRecord"

    invoke-virtual {v0, v1, v2}, Le/a/f/z/o0/a;->a(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 12
    sget-object v2, Le/a/k0/h$c;->a:Le/a/k0/h$c;

    invoke-static {p3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    sget-object v2, Le/a/k0/h$d;->a:Le/a/k0/h$d;

    invoke-static {p3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    sget-object v2, Le/a/k0/h$a;->a:Le/a/k0/h$a;

    invoke-static {p3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    instance-of v2, p3, Le/a/k0/h$b;

    if-eqz v2, :cond_4

    :goto_0
    new-instance p3, Le/a/g4/a/d/a$a;

    invoke-direct {p3, v1}, Le/a/g4/a/d/a$a;-><init>(Landroid/app/PendingIntent;)V

    move-object v9, p3

    goto :goto_1

    .line 16
    :cond_4
    instance-of v2, p3, Le/a/k0/h$e;

    if-eqz v2, :cond_5

    new-instance v2, Le/a/g4/a/d/a$b;

    check-cast p3, Le/a/k0/h$e;

    .line 17
    iget-wide v9, p3, Le/a/k0/h$e;->b:J

    .line 18
    invoke-direct {v2, v9, v10, v1}, Le/a/g4/a/d/a$b;-><init>(JLandroid/app/PendingIntent;)V

    move-object v9, v2

    goto :goto_1

    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_6
    move-object v9, v1

    .line 19
    :goto_1
    invoke-virtual/range {v3 .. v9}, Le/a/g4/a/b;->b(ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/g4/a/d/a;)Le/a/g4/a/d/b;

    move-result-object p3

    .line 20
    sget-object v1, Lcom/truecaller/incallui/callui/InCallUIActivity;->g:Lcom/truecaller/incallui/callui/InCallUIActivity$a;

    iget-object v2, v0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    const-string v3, "Notification"

    invoke-virtual {v1, v2, v3}, Lcom/truecaller/incallui/callui/InCallUIActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 21
    iget-object v0, v0, Le/a/f/z/o0/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(contentText)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Le/a/g4/a/d/b;->u(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3, v1}, Le/a/g4/a/a;->i(Landroid/content/Intent;)V

    if-eqz p2, :cond_7

    .line 23
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 24
    invoke-virtual {p3}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v0

    .line 25
    iget-object v0, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p3, p1}, Le/a/g4/a/a;->n(Z)V

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Le/a/g4/a/a;->a()V

    .line 28
    :cond_8
    iput-object p3, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    .line 29
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void

    .line 30
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Application class does not implement "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-class p3, Le/a/h4/q/g;

    invoke-static {p3, p2}, Le/d/c/a/a;->a2(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string p1, "notificationFactory"

    .line 31
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->n:Le/a/f/z/i;

    invoke-virtual {v0}, Le/a/f/z/i;->a()V

    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/incallui/callui/InCallUIActivity;->g:Lcom/truecaller/incallui/callui/InCallUIActivity$a;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/truecaller/incallui/callui/InCallUIActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/service/InCallUIService;->l:Le/a/g4/a/a;

    invoke-virtual {p0, v0}, Lcom/truecaller/incallui/service/InCallUIService;->f(Le/a/g4/a/a;)Le/a/g4/a/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/g4/a/d/b;->w()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/incallui/service/InCallUIService;->H()V

    return-void
.end method

.method public z(Le/a/f3/c;Ls1/z/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f3/c;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callBubbles"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/truecaller/incallui/service/InCallUIService$b;

    invoke-direct {v1, p0}, Lcom/truecaller/incallui/service/InCallUIService$b;-><init>(Lcom/truecaller/incallui/service/InCallUIService;)V

    check-cast p1, Le/a/f3/o;

    const-string v2, "intentProvider"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/a/f3/o;->a()Lq3/a/w2/j;

    move-result-object v0

    new-instance v2, Le/a/f3/w;

    invoke-direct {v2, p1, v1, p2}, Le/a/f3/w;-><init>(Le/a/f3/o;Ls1/z/b/a;Ls1/z/b/a;)V

    invoke-interface {v0, v2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void
.end method
