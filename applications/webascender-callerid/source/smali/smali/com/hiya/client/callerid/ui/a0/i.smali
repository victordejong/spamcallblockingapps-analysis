.class public final Lcom/hiya/client/callerid/ui/a0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hiya/client/callerid/ui/a0/q;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/hiya/client/callerid/ui/c0/a;

.field private final e:Lcom/hiya/client/callerid/ui/c0/c;

.field private final f:Lcom/hiya/client/callerid/ui/c0/g;

.field private final g:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/hiya/client/callerid/ui/d0/e;

.field private final j:Lcom/hiya/client/callerid/ui/d0/f;

.field private final k:Lg/g/d/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/client/callerid/ui/c0/a;Lcom/hiya/client/callerid/ui/c0/c;Lcom/hiya/client/callerid/ui/c0/g;Lh/a;Lh/a;Lcom/hiya/client/callerid/ui/d0/e;Lcom/hiya/client/callerid/ui/d0/f;Lg/g/d/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/client/callerid/ui/c0/a;",
            "Lcom/hiya/client/callerid/ui/c0/c;",
            "Lcom/hiya/client/callerid/ui/c0/g;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/client/callerid/ui/d0/e;",
            "Lcom/hiya/client/callerid/ui/d0/f;",
            "Lg/g/d/h;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCallIdleStateOperation"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCallOffhookStateOperation"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCallRingingStateOperation"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyCountryIso"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyNetworkCountryIso"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceAnalyticsManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceStatManager"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaTracer"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/i;->d:Lcom/hiya/client/callerid/ui/c0/a;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/a0/i;->e:Lcom/hiya/client/callerid/ui/c0/c;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/a0/i;->f:Lcom/hiya/client/callerid/ui/c0/g;

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/a0/i;->g:Lh/a;

    iput-object p6, p0, Lcom/hiya/client/callerid/ui/a0/i;->h:Lh/a;

    iput-object p7, p0, Lcom/hiya/client/callerid/ui/a0/i;->i:Lcom/hiya/client/callerid/ui/d0/e;

    iput-object p8, p0, Lcom/hiya/client/callerid/ui/a0/i;->j:Lcom/hiya/client/callerid/ui/d0/f;

    iput-object p9, p0, Lcom/hiya/client/callerid/ui/a0/i;->k:Lg/g/d/h;

    const-string p2, "audio"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/i;->a:Landroid/media/AudioManager;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    return-void
.end method

.method private final a()Lcom/hiya/client/callerid/ui/b0/j;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "phone"

    .line 2
    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/i;->h:Lh/a;

    invoke-interface {v2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v4

    .line 4
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/i;->g:Lh/a;

    invoke-interface {v2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    .line 5
    invoke-static {v1, v0}, Lcom/hiya/client/callerid/ui/e0/g;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private final b(Ljava/lang/String;Lg/g/d/j/a;Lg/g/b/c/k;)Lg/g/d/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/i;->k:Lg/g/d/h;

    const-class v1, Lcom/hiya/client/callerid/ui/service/OnCallService;

    invoke-static {v1}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/a0/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lg/g/d/h;->b(Ljava/lang/String;)Lg/g/d/e;

    move-result-object v0

    .line 2
    invoke-interface {v0, p2}, Lg/g/d/e;->f(Lg/g/d/j/a;)V

    .line 3
    invoke-interface {v0, p1}, Lg/g/d/e;->k(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {v0, p3}, Lg/g/d/e;->m(Lg/g/b/c/k;)V

    :cond_0
    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic c(Lcom/hiya/client/callerid/ui/a0/i;Ljava/lang/String;Lg/g/d/j/a;Lg/g/b/c/k;ILjava/lang/Object;)Lg/g/d/e;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/client/callerid/ui/a0/i;->b(Ljava/lang/String;Lg/g/d/j/a;Lg/g/b/c/k;)Lg/g/d/e;

    move-result-object p0

    return-object p0
.end method

.method private final d(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)Lg/g/d/e;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/i;->e:Lcom/hiya/client/callerid/ui/c0/c;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/client/callerid/ui/c0/c;->t(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lg/g/d/j/a;->ON_CALL_PHONE_STATE_OFFHOOK:Lg/g/d/j/a;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/hiya/client/callerid/ui/a0/i;->c(Lcom/hiya/client/callerid/ui/a0/i;Ljava/lang/String;Lg/g/d/j/a;Lg/g/b/c/k;ILjava/lang/Object;)Lg/g/d/e;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lg/g/d/j/a;->ON_CALL_PHONE_STATE_OFFHOOK:Lg/g/d/j/a;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/hiya/client/callerid/ui/a0/i;->c(Lcom/hiya/client/callerid/ui/a0/i;Ljava/lang/String;Lg/g/d/j/a;Lg/g/b/c/k;ILjava/lang/Object;)Lg/g/d/e;

    move-result-object p1

    invoke-interface {p1}, Lg/g/d/e;->a()V

    .line 4
    new-instance p1, Lg/g/d/l/b;

    invoke-direct {p1}, Lg/g/d/l/b;-><init>()V

    :goto_0
    return-object p1
.end method

.method private final e(Lcom/hiya/client/callerid/ui/b0/j;)Lg/g/d/e;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lg/g/d/j/a;->ON_CALL_PHONE_STATE_RINGING:Lg/g/d/j/a;

    sget-object v1, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    invoke-direct {p0, p1, v0, v1}, Lcom/hiya/client/callerid/ui/a0/i;->b(Ljava/lang/String;Lg/g/d/j/a;Lg/g/b/c/k;)Lg/g/d/e;

    move-result-object p1

    return-object p1
.end method

.method private final f(ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    const-string v0, "phone_call_starts"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/i;->k:Lg/g/d/h;

    invoke-interface {p1, v0}, Lg/g/d/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/i;->k:Lg/g/d/h;

    invoke-interface {p1}, Lg/g/d/h;->e()Z

    move-result p1

    if-nez p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/i;->k:Lg/g/d/h;

    invoke-interface {p1, v0}, Lg/g/d/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    sget-object v3, Lg/g/d/j/a;->ON_CALL_PHONE_STATE_IDLE:Lg/g/d/j/a;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/hiya/client/callerid/ui/a0/i;->c(Lcom/hiya/client/callerid/ui/a0/i;Ljava/lang/String;Lg/g/d/j/a;Lg/g/b/c/k;ILjava/lang/Object;)Lg/g/d/e;

    move-result-object p1

    invoke-interface {p1}, Lg/g/d/e;->a()V

    .line 5
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/i;->k:Lg/g/d/h;

    invoke-interface {p1}, Lg/g/d/h;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/i;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final i(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public final h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "rawPhone"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rawState"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/a0/i;->i(Ljava/lang/String;)I

    move-result v1

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/hiya/client/callerid/ui/a0/i;->g()Z

    move-result v8

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v2, v11, :cond_2

    if-eqz v8, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "calls.keys"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/s/k;->I(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "calls.keys.first()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, v3

    :goto_2
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    .line 5
    iget-object v5, v0, Lcom/hiya/client/callerid/ui/a0/i;->h:Lh/a;

    invoke-interface {v5}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v10

    iget-object v5, v0, Lcom/hiya/client/callerid/ui/a0/i;->g:Lh/a;

    invoke-interface {v5}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v11

    invoke-static {v2, v4}, Lcom/hiya/client/callerid/ui/e0/g;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v4

    const-string v2, "if (rawPhone.isEmpty() &\u2026untryIso.get())\n        }"

    .line 6
    invoke-static {v4, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/hiya/client/callerid/ui/a0/j;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    if-eqz v8, :cond_5

    .line 8
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 9
    :cond_5
    iget-object v5, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 10
    iget-object v5, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    check-cast v5, Lcom/hiya/client/callerid/ui/a0/q;

    invoke-virtual {v5, v1}, Lcom/hiya/client/callerid/ui/a0/q;->c(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_4

    :cond_7
    :goto_5
    const/4 v12, 0x1

    goto :goto_8

    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_9
    if-nez v8, :cond_c

    .line 11
    new-instance v5, Lcom/hiya/client/callerid/ui/a0/q;

    invoke-direct {v5}, Lcom/hiya/client/callerid/ui/a0/q;-><init>()V

    .line 12
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_b

    .line 13
    iget-object v6, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_b
    iget-object v6, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v5, v1}, Lcom/hiya/client/callerid/ui/a0/q;->c(I)Z

    .line 16
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    goto :goto_5

    .line 17
    :cond_c
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    .line 18
    :goto_7
    new-instance v6, Lcom/hiya/client/callerid/ui/a0/q;

    invoke-direct {v6}, Lcom/hiya/client/callerid/ui/a0/q;-><init>()V

    .line 19
    iget-object v7, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v6, v1}, Lcom/hiya/client/callerid/ui/a0/q;->c(I)Z

    move v12, v5

    .line 21
    :goto_8
    iget-object v5, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hiya/client/callerid/ui/a0/q;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/hiya/client/callerid/ui/a0/q;->a()Lg/g/b/c/k;

    move-result-object v2

    :cond_e
    move-object v5, v2

    .line 22
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/hiya/client/callerid/ui/l;->b:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v12, :cond_1c

    if-eqz v5, :cond_1c

    .line 23
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/hiya/client/callerid/ui/a0/i;->f(ILjava/lang/String;)V

    const/4 v9, 0x3

    if-eq v1, v11, :cond_17

    const-string v13, "ON_CALL_SERVICE"

    if-eq v1, v3, :cond_12

    if-eq v1, v9, :cond_f

    goto/16 :goto_10

    .line 24
    :cond_f
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 25
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v3}, Lcom/hiya/client/callerid/ui/e0/c;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    if-eqz v2, :cond_10

    .line 27
    sget-object v14, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->j:Lcom/hiya/client/callerid/ui/d0/f;

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v14 .. v19}, Lg/g/a/e/e/b;->d(Lg/g/a/e/e/b;Ljava/lang/String;Lg/g/a/e/e/l;Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    :cond_10
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->f:Lcom/hiya/client/callerid/ui/c0/g;

    .line 29
    iget-object v3, v0, Lcom/hiya/client/callerid/ui/a0/i;->i:Lcom/hiya/client/callerid/ui/d0/e;

    invoke-interface {v3, v13}, Lg/g/a/e/e/m;->a(Ljava/lang/String;)Lg/g/a/e/e/n;

    move-result-object v13

    .line 30
    iget-object v3, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/client/callerid/ui/a0/q;

    if-eqz v3, :cond_11

    invoke-virtual {v3, v9}, Lcom/hiya/client/callerid/ui/a0/q;->b(I)Lkotlin/l;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_9

    :cond_11
    const-wide/16 v6, 0x0

    .line 31
    :goto_9
    invoke-direct {v0, v4}, Lcom/hiya/client/callerid/ui/a0/i;->e(Lcom/hiya/client/callerid/ui/b0/j;)Lg/g/d/e;

    move-result-object v9

    move-object v3, v4

    move-object v4, v5

    move-object v5, v13

    .line 32
    invoke-virtual/range {v2 .. v9}, Lcom/hiya/client/callerid/ui/c0/g;->r(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/a/e/e/n;JZLg/g/d/e;)V

    goto/16 :goto_10

    .line 33
    :cond_12
    sget-object v2, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v5, v2, :cond_14

    .line 34
    sget-object v14, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    .line 35
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v15

    .line 36
    invoke-virtual {v14, v15}, Lg/g/a/e/e/b;->g(Ljava/lang/String;)V

    .line 37
    sget-object v14, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v14}, Lcom/hiya/client/callerid/ui/e;->c()Lcom/hiya/client/callerid/ui/b;

    move-result-object v14

    if-eqz v14, :cond_14

    .line 38
    iget-object v15, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hiya/client/callerid/ui/a0/q;

    if-eqz v6, :cond_13

    invoke-virtual {v6, v9}, Lcom/hiya/client/callerid/ui/a0/q;->b(I)Lkotlin/l;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_a

    :cond_13
    const-wide/16 v6, 0x0

    .line 39
    :goto_a
    invoke-interface {v14, v4, v6, v7}, Lcom/hiya/client/callerid/ui/b;->a(Lcom/hiya/client/callerid/ui/b0/j;J)V

    .line 40
    :cond_14
    iget-object v6, v0, Lcom/hiya/client/callerid/ui/a0/i;->e:Lcom/hiya/client/callerid/ui/c0/c;

    .line 41
    iget-object v7, v0, Lcom/hiya/client/callerid/ui/a0/i;->i:Lcom/hiya/client/callerid/ui/d0/e;

    invoke-interface {v7, v13}, Lg/g/a/e/e/m;->a(Ljava/lang/String;)Lg/g/a/e/e/n;

    move-result-object v7

    if-ne v5, v2, :cond_15

    .line 42
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/client/callerid/ui/a0/q;

    if-eqz v2, :cond_16

    invoke-virtual {v2, v9}, Lcom/hiya/client/callerid/ui/a0/q;->b(I)Lkotlin/l;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_b

    .line 43
    :cond_15
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/client/callerid/ui/a0/q;

    if-eqz v2, :cond_16

    invoke-virtual {v2, v3}, Lcom/hiya/client/callerid/ui/a0/q;->b(I)Lkotlin/l;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_b
    move-wide v13, v2

    goto :goto_c

    :cond_16
    const-wide/16 v13, 0x0

    .line 44
    :goto_c
    invoke-direct {v0, v5, v4}, Lcom/hiya/client/callerid/ui/a0/i;->d(Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;)Lg/g/d/e;

    move-result-object v9

    move-object v2, v6

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-wide v6, v13

    .line 45
    invoke-virtual/range {v2 .. v9}, Lcom/hiya/client/callerid/ui/c0/c;->r(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/a/e/e/n;JZLg/g/d/e;)V

    goto :goto_10

    .line 46
    :cond_17
    sget-object v2, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v5, v2, :cond_18

    .line 47
    sget-object v2, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/g/a/e/e/b;->g(Ljava/lang/String;)V

    .line 48
    :cond_18
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->e:Lcom/hiya/client/callerid/ui/c0/c;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/c0/c;->s()V

    .line 49
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->f:Lcom/hiya/client/callerid/ui/c0/g;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/c0/g;->s()V

    .line 50
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/a0/i;->d:Lcom/hiya/client/callerid/ui/c0/a;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/c0/a;->a()V

    .line 51
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_d

    :cond_19
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_1a

    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/hiya/client/callerid/ui/a0/i;->a()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v2

    if-eqz v2, :cond_1a

    goto :goto_e

    :cond_1a
    move-object v2, v4

    .line 53
    :goto_e
    sget-object v3, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/e;->c()Lcom/hiya/client/callerid/ui/b;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 54
    iget-object v6, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/client/callerid/ui/a0/q;

    if-eqz v4, :cond_1b

    invoke-virtual {v4, v9}, Lcom/hiya/client/callerid/ui/a0/q;->b(I)Lkotlin/l;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_f

    :cond_1b
    const-wide/16 v6, 0x0

    .line 55
    :goto_f
    invoke-interface {v3, v2, v5, v6, v7}, Lcom/hiya/client/callerid/ui/b;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V

    :cond_1c
    :goto_10
    if-ne v1, v11, :cond_1e

    if-eqz v12, :cond_1d

    .line 56
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/a0/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1d
    return v10

    :cond_1e
    return v11
.end method
