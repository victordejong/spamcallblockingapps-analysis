.class public final Lcom/hiya/client/callerid/ui/service/OurInCallService;
.super Landroid/telecom/InCallService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/service/OurInCallService$a;
    }
.end annotation


# static fields
.field private static i:Lcom/hiya/client/callerid/ui/service/OurInCallService;

.field public static final j:Lcom/hiya/client/callerid/ui/service/OurInCallService$a;


# instance fields
.field public f:Lcom/hiya/client/callerid/ui/a0/c;

.field public g:Lcom/hiya/client/callerid/ui/a0/g;

.field public h:Lcom/hiya/client/callerid/ui/a0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->j:Lcom/hiya/client/callerid/ui/service/OurInCallService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/hiya/client/callerid/ui/service/OurInCallService;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->i:Lcom/hiya/client/callerid/ui/service/OurInCallService;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/hiya/client/callerid/ui/a0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->g:Lcom/hiya/client/callerid/ui/a0/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "headsUpOverlayManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Lcom/hiya/client/callerid/ui/a0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->h:Lcom/hiya/client/callerid/ui/a0/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "multiTaskingOverlayManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onCallAdded(Landroid/telecom/Call;)V

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->f:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->I(Landroid/telecom/Call;)V

    goto :goto_0

    :cond_0
    const-string p1, "callManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->f:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->J(Landroid/telecom/CallAudioState;)V

    return-void

    :cond_0
    const-string p1, "callManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onCallRemoved(Landroid/telecom/Call;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->f:Lcom/hiya/client/callerid/ui/a0/c;

    const/4 v1, 0x0

    const-string v2, "callManager"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->k(Landroid/telecom/Call;)Lcom/hiya/client/callerid/ui/a0/c$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->f:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->K(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/telecom/InCallService;->onCreate()V

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/z/b;->a:Lcom/hiya/client/callerid/ui/z/b$a;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/z/b$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/client/callerid/ui/z/b;->b(Lcom/hiya/client/callerid/ui/service/OurInCallService;)V

    .line 3
    sput-object p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->i:Lcom/hiya/client/callerid/ui/service/OurInCallService;

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->f:Lcom/hiya/client/callerid/ui/a0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c;->C()V

    return-void

    :cond_0
    const-string v0, "callManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/telecom/InCallService;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->g:Lcom/hiya/client/callerid/ui/a0/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/g;->d()V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->h:Lcom/hiya/client/callerid/ui/a0/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/h;->f()V

    .line 4
    sput-object v1, Lcom/hiya/client/callerid/ui/service/OurInCallService;->i:Lcom/hiya/client/callerid/ui/service/OurInCallService;

    return-void

    :cond_0
    const-string v0, "multiTaskingOverlayManager"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "headsUpOverlayManager"

    .line 6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method
