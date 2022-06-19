.class public final Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;
.super Landroid/telecom/CallScreeningService;
.source "SourceFile"


# instance fields
.field public f:Lcom/hiya/client/callerid/ui/a0/d;

.field public g:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lg/g/b/a/b;

.field public j:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/client/callerid/ui/x/a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/hiya/client/callerid/ui/a0/k;

.field private final l:Li/c/b0/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telecom/CallScreeningService;-><init>()V

    .line 2
    new-instance v0, Li/c/b0/c/a;

    invoke-direct {v0}, Li/c/b0/c/a;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->l:Li/c/b0/c/a;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->g(Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V

    return-void
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;)Li/c/b0/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->l:Li/c/b0/c/a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;)Lg/g/b/c/k;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->h(Landroid/telecom/Call$Details;)Lg/g/b/c/k;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->j(Landroid/telecom/Call$Details;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic e(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->k(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V

    return-void
.end method

.method public static final synthetic f(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->l(Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/c$a;)V

    return-void
.end method

.method private final g(Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->h(Landroid/telecom/Call$Details;)Lg/g/b/c/k;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    sget-object v1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3
    invoke-interface {v1, p2, v0}, Lcom/hiya/client/callerid/ui/d;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-lt v1, v4, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerNumberVerificationStatus()I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lg/g/b/c/t;->FAILED:Lg/g/b/c/t;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Lg/g/b/c/t;->PASSED:Lg/g/b/c/t;

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lg/g/b/c/t;->NOT_VERIFIED:Lg/g/b/c/t;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v5

    .line 9
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VerificationStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->f:Lcom/hiya/client/callerid/ui/a0/d;

    if-eqz v2, :cond_5

    .line 11
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->k:Lcom/hiya/client/callerid/ui/a0/k;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/a0/k;->b()Z

    move-result v3

    .line 12
    invoke-virtual {v2, p2, v0, v1, v3}, Lcom/hiya/client/callerid/ui/a0/d;->f(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/b/c/t;Z)Li/c/b0/b/v;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$a;

    invoke-direct {v2, p2}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$a;-><init>(Lcom/hiya/client/callerid/ui/b0/j;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    const-wide/16 v2, 0x5

    .line 14
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Li/c/b0/b/v;->timeout(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object v1

    .line 15
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v1

    .line 16
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v1

    .line 17
    new-instance v2, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$b;-><init>(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)V

    .line 18
    new-instance p1, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$c;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$c;-><init>(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;)V

    .line 19
    invoke-virtual {v1, v2, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->l:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_2

    :cond_4
    const-string p1, "overlayBehaviorConfig"

    .line 21
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    :cond_5
    const-string p1, "callerIdManager"

    .line 22
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    .line 23
    :cond_6
    new-instance p2, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {p2}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    .line 24
    invoke-virtual {p2, v2}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object p2

    .line 25
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object p2

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/telecom/CallScreeningService;->respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V

    :goto_2
    return-void
.end method

.method private final h(Landroid/telecom/Call$Details;)Lg/g/b/c/k;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    goto :goto_0

    :cond_0
    sget-object p1, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    :goto_0
    return-object p1
.end method

.method private final j(Landroid/telecom/Call$Details;)J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final k(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/client/callerid/ui/e0/c;->i(Ljava/lang/String;)Z

    move-result v2

    .line 3
    invoke-interface {v1, p1, v2}, Lcom/hiya/client/callerid/ui/a;->c(Lcom/hiya/client/callerid/ui/b0/j;Z)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->c()Lcom/hiya/client/callerid/ui/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hiya/client/callerid/ui/b;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V

    :cond_1
    return-void
.end method

.method private final l(Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/c$a;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/c$a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/c$a;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/c$a;->a()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/c$a;->c()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/c$a;->e()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/telecom/CallScreeningService;->respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V

    return-void
.end method


# virtual methods
.method public final i()Lh/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/a<",
            "Lcom/hiya/client/callerid/ui/x/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->j:Lh/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sendPhoneEventHandler"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/telecom/CallScreeningService;->onCreate()V

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/z/b;->a:Lcom/hiya/client/callerid/ui/z/b$a;

    invoke-virtual {p0}, Landroid/telecom/CallScreeningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/z/b$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/client/callerid/ui/z/b;->c(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/telecom/CallScreeningService;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->l:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method public onScreenCall(Landroid/telecom/Call$Details;)V
    .locals 6

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->h(Landroid/telecom/Call$Details;)Lg/g/b/c/k;

    move-result-object v0

    .line 2
    sget-object v1, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 4
    iget-object v5, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->h:Lh/a;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 5
    iget-object v5, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->g:Lh/a;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 6
    invoke-static {v1, v3}, Lcom/hiya/client/callerid/ui/e0/g;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v3

    const-string v4, "PhoneNumberUtil.formatPh\u2026ountryIso.get()\n        )"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hiya/client/callerid/ui/e0/c;->i(Ljava/lang/String;)Z

    move-result v4

    .line 8
    sget-object v5, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v0, v5, :cond_7

    .line 9
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->k:Lcom/hiya/client/callerid/ui/a0/k;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/k;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 10
    new-instance v0, Lkotlin/l;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v0

    goto :goto_3

    .line 11
    :cond_3
    new-instance v0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$i;

    invoke-direct {v0, v3, v4}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$i;-><init>(Lcom/hiya/client/callerid/ui/b0/j;Z)V

    invoke-static {v0}, Li/c/b0/b/e0;->p(Ljava/util/concurrent/Callable;)Li/c/b0/b/e0;

    move-result-object v0

    if-eqz v4, :cond_4

    .line 12
    new-instance v1, Lkotlin/l;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v4, v2}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v1

    goto :goto_2

    .line 13
    :cond_4
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->i:Lg/g/b/a/b;

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/b0/j;->a()Ljava/lang/Short;

    move-result-object v2

    .line 15
    invoke-virtual {v4, v1, v2}, Lg/g/b/a/b;->b(Ljava/lang/String;Ljava/lang/Short;)Li/c/b0/b/e0;

    move-result-object v1

    .line 16
    sget-object v2, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$h;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$h;

    invoke-virtual {v1, v2}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v1

    .line 17
    :goto_2
    sget-object v2, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$g;->a:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$g;

    .line 18
    invoke-static {v0, v1, v2}, Li/c/b0/b/e0;->N(Li/c/b0/b/i0;Li/c/b0/b/i0;Li/c/b0/d/c;)Li/c/b0/b/e0;

    move-result-object v0

    .line 19
    :goto_3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 20
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    .line 21
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v4}, Li/c/b0/b/e0;->G(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/e0;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$d;->f:Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$d;

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->y(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;

    invoke-direct {v1, p0, p1, v3}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$e;-><init>(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V

    .line 24
    new-instance v2, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;

    invoke-direct {v2, p0, p1, v3}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService$f;-><init>(Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V

    .line 25
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->l:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_4

    :cond_5
    const-string p1, "hiyaCallerId"

    .line 27
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "overlayBehaviorConfig"

    .line 28
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_7
    invoke-direct {p0, p1, v3}, Lcom/hiya/client/callerid/ui/service/OurCallScreeningService;->g(Landroid/telecom/Call$Details;Lcom/hiya/client/callerid/ui/b0/j;)V

    :goto_4
    return-void

    :cond_8
    const-string p1, "lazyCountryIso"

    .line 30
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string p1, "lazyNetworkCountryIso"

    .line 31
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method
