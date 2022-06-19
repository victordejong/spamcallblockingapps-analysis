.class public final Lcom/hiya/client/callerid/ui/a0/c;
.super Landroid/telecom/Call$Callback;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/ui/a0/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/a0/c$b;,
        Lcom/hiya/client/callerid/ui/a0/c$c;,
        Lcom/hiya/client/callerid/ui/a0/c$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final k:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Landroid/telecom/CallAudioState;",
            ">;"
        }
    .end annotation
.end field

.field private static o:I

.field private static p:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lg/g/b/a/b;

.field private final c:Lcom/hiya/client/callerid/ui/a0/k;

.field private final d:Lcom/hiya/client/callerid/ui/x/a;

.field private final e:Lcom/hiya/client/callerid/ui/a0/d;

.field private final f:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/c;->h:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/c;->i:Ljava/util/HashMap;

    .line 3
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    const-string v1, "PublishSubject.create<List<CallInfo>>()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/c;->j:Li/c/b0/k/b;

    .line 4
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    const-string v1, "PublishSubject.create<CallInfo>()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/c;->k:Li/c/b0/k/b;

    .line 5
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/c;->l:Li/c/b0/k/b;

    .line 6
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/c;->m:Li/c/b0/k/b;

    .line 7
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    const-string v1, "PublishSubject.create<CallAudioState>()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/c;->n:Li/c/b0/k/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/k;Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/a0/d;Lh/a;Lh/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg/g/b/a/b;",
            "Lcom/hiya/client/callerid/ui/a0/k;",
            "Lcom/hiya/client/callerid/ui/x/a;",
            "Lcom/hiya/client/callerid/ui/a0/d;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overlayBehaviorConfig"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendPhoneEventHandler"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyCountryIso"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyNetworkCountryIso"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/c;->b:Lg/g/b/a/b;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/a0/c;->c:Lcom/hiya/client/callerid/ui/a0/k;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/a0/c;->d:Lcom/hiya/client/callerid/ui/x/a;

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/a0/c;->e:Lcom/hiya/client/callerid/ui/a0/d;

    iput-object p6, p0, Lcom/hiya/client/callerid/ui/a0/c;->f:Lh/a;

    iput-object p7, p0, Lcom/hiya/client/callerid/ui/a0/c;->g:Lh/a;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->C()V

    return-void
.end method

.method private final A()Lcom/hiya/client/callerid/ui/a0/c$b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "callsMap.values"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/s/k;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/ui/a0/c$b;

    return-object v0
.end method

.method private final D()V
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->p:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x20

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    const-class v2, Lcom/hiya/client/callerid/ui/a0/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/c;->p:Landroid/os/PowerManager$WakeLock;

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final L(Lcom/hiya/client/callerid/ui/a0/c$b;Z)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/c;->d:Lcom/hiya/client/callerid/ui/x/a;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/x/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/c;->d:Lcom/hiya/client/callerid/ui/x/a;

    .line 4
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v4

    invoke-virtual {v4}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->g()Lg/g/b/c/k;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v6

    .line 7
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v8

    .line 8
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->f()J

    move-result-wide v9

    move v7, p2

    move v11, v2

    .line 9
    invoke-virtual/range {v3 .. v11}, Lcom/hiya/client/callerid/ui/x/a;->e(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JI)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "posted phone event:\n                    |profileTag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v4

    invoke-virtual {v4}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n                    |eventDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->g()Lg/g/b/c/k;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n                    |isContact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n                    |blocked: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\n                    |phoneNumber: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n                    |createdTimestamp: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->f()J

    move-result-wide p1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\n                    |blockReason: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p2}, Lkotlin/c0/m;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {p0, p1, p2}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private final N(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->D()V

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->p:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/hiya/client/callerid/ui/a0/c;->p:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hiya/client/callerid/ui/a0/c;->p:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final O(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/incallui/InCallActivity;->i:Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/client/callerid/ui/incallui/InCallActivity$a;->b(Landroid/content/Context;Lcom/hiya/client/callerid/ui/a0/c$b;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->x()Lcom/hiya/client/callerid/ui/a0/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/g;->d()V

    :cond_0
    return-void
.end method

.method private final P(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->x()Lcom/hiya/client/callerid/ui/a0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/a0/g;->g(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_0
    return-void
.end method

.method private final Q()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->x()Lcom/hiya/client/callerid/ui/a0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/g;->d()V

    :cond_0
    return-void
.end method

.method private final U(Lcom/hiya/client/callerid/ui/a0/c$b;Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 13

    if-eqz p2, :cond_1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->g()Lg/g/b/c/k;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->z()Z

    move-result v3

    .line 5
    invoke-interface {v0, v1, p2, v2, v3}, Lcom/hiya/client/callerid/ui/d;->m(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/client/callerid/ui/b0/e;Lg/g/b/c/k;Z)Lcom/hiya/client/callerid/ui/d$c;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/hiya/client/callerid/ui/d$c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hiya/client/callerid/ui/d$c;-><init>(ZZLg/g/b/c/f;ILkotlin/w/c/g;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hiya/client/callerid/ui/d$c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/hiya/client/callerid/ui/d$c;-><init>(ZZLg/g/b/c/f;ILkotlin/w/c/g;)V

    :goto_0
    if-eqz p2, :cond_3

    .line 7
    new-instance v1, Lcom/hiya/client/callerid/ui/b0/e;

    .line 8
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/d$c;->a()Lg/g/b/c/f;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v2

    .line 9
    :goto_1
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result p2

    .line 10
    invoke-direct {v1, v2, p2}, Lcom/hiya/client/callerid/ui/b0/e;-><init>(Lg/g/b/c/f;Z)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 11
    :goto_2
    invoke-virtual {p1, v1}, Lcom/hiya/client/callerid/ui/a0/c$b;->w(Lcom/hiya/client/callerid/ui/b0/e;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->y(Lcom/hiya/client/callerid/ui/d$c;)V

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Lcom/hiya/client/callerid/ui/a0/c$b;->A(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->p()Li/c/b0/k/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    .line 15
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->x()Lcom/hiya/client/callerid/ui/a0/g;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/hiya/client/callerid/ui/a0/g;->f(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_4
    return-void
.end method

.method private final V()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0, v2}, Lcom/hiya/client/callerid/ui/a0/c;->N(Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/ui/a0/c;)Lcom/hiya/client/callerid/ui/a0/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/c;->e:Lcom/hiya/client/callerid/ui/a0/d;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/client/callerid/ui/a0/c;)Lcom/hiya/client/callerid/ui/a0/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/c;->c:Lcom/hiya/client/callerid/ui/a0/k;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/client/callerid/ui/a0/c;)Lcom/hiya/client/callerid/ui/x/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/c;->d:Lcom/hiya/client/callerid/ui/x/a;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/client/callerid/ui/a0/c;Lcom/hiya/client/callerid/ui/a0/c$b;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/c;->L(Lcom/hiya/client/callerid/ui/a0/c$b;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lcom/hiya/client/callerid/ui/a0/c;Lcom/hiya/client/callerid/ui/a0/c$b;Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/c;->U(Lcom/hiya/client/callerid/ui/a0/c$b;Lcom/hiya/client/callerid/ui/b0/e;)V

    return-void
.end method

.method private final h(Landroid/telecom/Call;)Lcom/hiya/client/callerid/ui/a0/c$b;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    const-string v2, "call.details"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/c$b;

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/c;->g:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "lazyNetworkCountryIso.get()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/c;->f:Lh/a;

    invoke-interface {v2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "lazyCountryIso.get()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-direct {v0, p1, v1, v2}, Lcom/hiya/client/callerid/ui/a0/c$b;-><init>(Landroid/telecom/Call;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, p0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 8
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->t()Li/c/b0/k/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "callsMap.values"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final u()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method private final w()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method private final x()Lcom/hiya/client/callerid/ui/a0/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->j:Lcom/hiya/client/callerid/ui/service/OurInCallService$a;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;->a()Lcom/hiya/client/callerid/ui/service/OurInCallService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurInCallService;->b()Lcom/hiya/client/callerid/ui/a0/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final y()Lcom/hiya/client/callerid/ui/a0/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->j:Lcom/hiya/client/callerid/ui/service/OurInCallService$a;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;->a()Lcom/hiya/client/callerid/ui/service/OurInCallService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurInCallService;->c()Lcom/hiya/client/callerid/ui/a0/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final B(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->s()V

    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->y()Lcom/hiya/client/callerid/ui/a0/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/hiya/client/callerid/ui/a0/h;->r(Lcom/hiya/client/callerid/ui/a0/h$a;)V

    :cond_0
    return-void
.end method

.method public final E()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->j:Lcom/hiya/client/callerid/ui/service/OurInCallService$a;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;->a()Lcom/hiya/client/callerid/ui/service/OurInCallService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->j:Lcom/hiya/client/callerid/ui/service/OurInCallService$a;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;->a()Lcom/hiya/client/callerid/ui/service/OurInCallService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setMuted(Z)V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 5

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/a0/c;->o:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/hiya/client/callerid/ui/a0/c;->o:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    sput v1, Lcom/hiya/client/callerid/ui/a0/c;->o:I

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "callsMap.values"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lcom/hiya/client/callerid/ui/a0/c$b;

    if-eqz v2, :cond_4

    .line 4
    sget v0, Lcom/hiya/client/callerid/ui/a0/c;->o:I

    if-nez v0, :cond_4

    .line 5
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->y()Lcom/hiya/client/callerid/ui/a0/h;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "it"

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/hiya/client/callerid/ui/a0/h;->s(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_4
    return-void
.end method

.method public final H()V
    .locals 1

    .line 1
    sget v0, Lcom/hiya/client/callerid/ui/a0/c;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hiya/client/callerid/ui/a0/c;->o:I

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->y()Lcom/hiya/client/callerid/ui/a0/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/h;->f()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->Q()V

    return-void
.end method

.method public final I(Landroid/telecom/Call;)V
    .locals 7

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    const-string v2, "call.details"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/a;->b(Landroid/telecom/Call;)Lg/g/b/c/k;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/a;->c(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/c;->g:Lh/a;

    invoke-interface {v4}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    .line 5
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/c;->f:Lh/a;

    invoke-interface {v4}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 6
    invoke-static {v2, v3}, Lcom/hiya/client/callerid/ui/e0/g;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v2

    const-string v3, "PhoneNumberUtil.formatPh\u2026ountryIso.get()\n        )"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v3, Lg/g/b/c/k;->INCOMING:Lg/g/b/c/k;

    if-ne v0, v3, :cond_0

    .line 8
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/a;->e(Landroid/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "call is private"

    .line 9
    invoke-static {p0, v6, v4}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/c;->c:Lcom/hiya/client/callerid/ui/a0/k;

    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/a0/k;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/c$b;

    .line 12
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/c;->g:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "lazyNetworkCountryIso.get()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/c;->f:Lh/a;

    invoke-interface {v2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "lazyCountryIso.get()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-direct {v0, p1, v1, v2}, Lcom/hiya/client/callerid/ui/a0/c$b;-><init>(Landroid/telecom/Call;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->i(Lcom/hiya/client/callerid/ui/a0/c$b;Lcom/hiya/client/callerid/ui/b0/e;)V

    return-void

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->h(Landroid/telecom/Call;)Lcom/hiya/client/callerid/ui/a0/c$b;

    move-result-object v4

    .line 17
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->s()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_1

    if-ne v0, v3, :cond_1

    .line 18
    invoke-direct {p0, v4}, Lcom/hiya/client/callerid/ui/a0/c;->P(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, v4}, Lcom/hiya/client/callerid/ui/a0/c;->O(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :goto_0
    if-ne v0, v3, :cond_4

    .line 20
    invoke-virtual {v4}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/c;->b:Lg/g/b/a/b;

    .line 21
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->d()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->a()Ljava/lang/Short;

    move-result-object v5

    .line 23
    invoke-virtual {v1, v3, v5}, Lg/g/b/a/b;->b(Ljava/lang/String;Ljava/lang/Short;)Li/c/b0/b/e0;

    move-result-object v1

    goto :goto_1

    .line 24
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v1

    .line 25
    :goto_1
    new-instance v3, Lcom/hiya/client/callerid/ui/a0/c$k;

    invoke-direct {v3, v2, p1}, Lcom/hiya/client/callerid/ui/a0/c$k;-><init>(Lcom/hiya/client/callerid/ui/b0/j;Landroid/telecom/Call;)V

    invoke-static {v3}, Li/c/b0/b/e0;->p(Ljava/util/concurrent/Callable;)Li/c/b0/b/e0;

    move-result-object v3

    .line 26
    sget-object v5, Lcom/hiya/client/callerid/ui/a0/c$j;->a:Lcom/hiya/client/callerid/ui/a0/c$j;

    .line 27
    invoke-static {v1, v3, v5}, Li/c/b0/b/e0;->N(Li/c/b0/b/i0;Li/c/b0/b/i0;Li/c/b0/d/c;)Li/c/b0/b/e0;

    move-result-object v1

    goto :goto_2

    .line 28
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v1

    .line 29
    :goto_2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v3

    invoke-virtual {v1, v3}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v1

    .line 30
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v3

    invoke-virtual {v1, v3}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v1

    const-wide/16 v5, 0x5dc

    .line 31
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v3}, Li/c/b0/b/e0;->G(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/e0;

    move-result-object v1

    .line 32
    sget-object v3, Lcom/hiya/client/callerid/ui/a0/c$f;->f:Lcom/hiya/client/callerid/ui/a0/c$f;

    invoke-virtual {v1, v3}, Li/c/b0/b/e0;->y(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v1

    .line 33
    new-instance v3, Lcom/hiya/client/callerid/ui/a0/c$g;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/hiya/client/callerid/ui/a0/c$g;-><init>(Lcom/hiya/client/callerid/ui/a0/c;Landroid/telecom/Call;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V

    invoke-virtual {v1, v3}, Li/c/b0/b/e0;->m(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    .line 34
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/c$h;

    invoke-direct {v0, p0, v4}, Lcom/hiya/client/callerid/ui/a0/c$h;-><init>(Lcom/hiya/client/callerid/ui/a0/c;Lcom/hiya/client/callerid/ui/a0/c$b;)V

    .line 35
    new-instance v1, Lcom/hiya/client/callerid/ui/a0/c$i;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/a0/c$i;-><init>(Lcom/hiya/client/callerid/ui/a0/c;)V

    .line 36
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method

.method public final J(Landroid/telecom/CallAudioState;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->n()Li/c/b0/k/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final K(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 2

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->j()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->t()Li/c/b0/k/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "callsMap.values"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->y()Lcom/hiya/client/callerid/ui/a0/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/h;->f()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->Q()V

    :cond_1
    return-void
.end method

.method public final M(Lcom/hiya/client/callerid/ui/a0/c$a;)V
    .locals 3

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/service/OurInCallService;->j:Lcom/hiya/client/callerid/ui/service/OurInCallService$a;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;->a()Lcom/hiya/client/callerid/ui/service/OurInCallService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$a;->b()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;->a()Lcom/hiya/client/callerid/ui/service/OurInCallService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$a;->b()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    return-void
.end method

.method public final R(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->D()V

    return-void
.end method

.method public final S(Lcom/hiya/client/callerid/ui/a0/c$b;C)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2}, Lcom/hiya/client/callerid/ui/a0/c$b;->C(C)V

    return-void
.end method

.method public final T(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->E()V

    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "callsMap.values"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/a0/c$b;->q()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/hiya/client/callerid/ui/a0/c$b;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->l()Lcom/hiya/client/callerid/ui/a0/c$b;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    .line 2
    invoke-direct {p0, v1}, Lcom/hiya/client/callerid/ui/a0/c;->O(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    :cond_4
    return-void
.end method

.method public final b(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->a()V

    return-void
.end method

.method public final i(Lcom/hiya/client/callerid/ui/a0/c$b;Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 5

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blocking call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->j()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->b()V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/c;->g:Lh/a;

    invoke-interface {v3}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 5
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/c;->f:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 6
    invoke-static {v0, v2}, Lcom/hiya/client/callerid/ui/e0/g;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v0

    const-string v1, "PhoneNumberUtil.formatPh\u2026ountryIso.get()\n        )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->b()Lcom/hiya/client/callerid/ui/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->v()Z

    move-result v4

    invoke-interface {v2, v0, v4}, Lcom/hiya/client/callerid/ui/a;->c(Lcom/hiya/client/callerid/ui/b0/j;Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    invoke-direct {p0, p1, v3}, Lcom/hiya/client/callerid/ui/a0/c;->L(Lcom/hiya/client/callerid/ui/a0/c$b;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c;->d:Lcom/hiya/client/callerid/ui/x/a;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/x/a;->f()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/e;->e()Lcom/hiya/client/callerid/ui/d;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->g()Lg/g/b/c/k;

    move-result-object v1

    .line 13
    invoke-interface {p2, v0, v1}, Lcom/hiya/client/callerid/ui/d;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)Z

    move-result p2

    if-ne p2, v3, :cond_2

    iget-object p2, p0, Lcom/hiya/client/callerid/ui/a0/c;->d:Lcom/hiya/client/callerid/ui/x/a;

    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/x/a;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/a0/c;->e:Lcom/hiya/client/callerid/ui/a0/d;

    .line 15
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->g()Lg/g/b/c/k;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->r()Lg/g/b/c/t;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/c;->c:Lcom/hiya/client/callerid/ui/a0/k;

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/a0/k;->b()Z

    move-result v3

    .line 19
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/hiya/client/callerid/ui/a0/d;->f(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/b/c/t;Z)Li/c/b0/b/v;

    move-result-object p2

    .line 20
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p2

    .line 21
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p2

    .line 22
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/c$d;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/a0/c$d;-><init>(Lcom/hiya/client/callerid/ui/a0/c;Lcom/hiya/client/callerid/ui/a0/c$b;)V

    .line 23
    new-instance p1, Lcom/hiya/client/callerid/ui/a0/c$e;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/a0/c$e;-><init>(Lcom/hiya/client/callerid/ui/a0/c;)V

    .line 24
    invoke-virtual {p2, v0, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    :cond_2
    :goto_0
    return-void
.end method

.method public final j(Lcom/hiya/client/callerid/ui/a0/c$b;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->b()V

    return-void
.end method

.method public final k(Landroid/telecom/Call;)Lcom/hiya/client/callerid/ui/a0/c$b;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->A()Lcom/hiya/client/callerid/ui/a0/c$b;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "callsMap.values"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/hiya/client/callerid/ui/a0/c$b;

    invoke-virtual {v2, p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->t(Landroid/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/hiya/client/callerid/ui/a0/c$b;

    return-object v1
.end method

.method public final l()Lcom/hiya/client/callerid/ui/a0/c$b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "callsMap.values"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/s/k;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/ui/a0/c$b;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/a0/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/hiya/client/callerid/ui/service/OurInCallService;->j:Lcom/hiya/client/callerid/ui/service/OurInCallService$a;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;->a()Lcom/hiya/client/callerid/ui/service/OurInCallService;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/service/OurInCallService$a;->a()Lcom/hiya/client/callerid/ui/service/OurInCallService;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    const-string v3, "audioState"

    .line 4
    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lg/g/b/e/a/a;->a(II)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 5
    new-instance v3, Lcom/hiya/client/callerid/ui/a0/c$a;

    const/4 v8, 0x1

    .line 6
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v6

    if-ne v6, v4, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    const-string v7, "Earpiece"

    move-object v6, v3

    .line 7
    invoke-direct/range {v6 .. v12}, Lcom/hiya/client/callerid/ui/a0/c$a;-><init>(Ljava/lang/String;IZLandroid/bluetooth/BluetoothDevice;ILkotlin/w/c/g;)V

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    const/16 v6, 0x8

    invoke-static {v3, v6}, Lg/g/b/e/a/a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    new-instance v3, Lcom/hiya/client/callerid/ui/a0/c$a;

    const/16 v9, 0x8

    .line 11
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v7

    if-ne v7, v6, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-string v8, "Speaker"

    move-object v7, v3

    .line 12
    invoke-direct/range {v7 .. v13}, Lcom/hiya/client/callerid/ui/a0/c$a;-><init>(Ljava/lang/String;IZLandroid/bluetooth/BluetoothDevice;ILkotlin/w/c/g;)V

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lg/g/b/e/a/a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v3, v7, :cond_7

    .line 16
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object v3

    const-string v7, "btDevices"

    .line 17
    invoke-static {v3, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 19
    new-instance v8, Lcom/hiya/client/callerid/ui/a0/c$a;

    const-string v9, "bluetoothDevice"

    .line 20
    invoke-static {v7, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bluetoothDevice.name"

    invoke-static {v9, v10}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v10

    if-ne v10, v6, :cond_6

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getActiveBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_5
    move-object v10, v2

    :goto_3
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    .line 22
    :goto_4
    invoke-direct {v8, v9, v6, v10, v7}, Lcom/hiya/client/callerid/ui/a0/c$a;-><init>(Ljava/lang/String;IZLandroid/bluetooth/BluetoothDevice;)V

    .line 23
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_7
    new-instance v2, Lcom/hiya/client/callerid/ui/a0/c$a;

    const/4 v13, 0x2

    .line 25
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    if-ne v1, v6, :cond_8

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    const-string v12, "Bluetooth"

    move-object v11, v2

    .line 26
    invoke-direct/range {v11 .. v17}, Lcom/hiya/client/callerid/ui/a0/c$a;-><init>(Ljava/lang/String;IZLandroid/bluetooth/BluetoothDevice;ILkotlin/w/c/g;)V

    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0

    .line 28
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2
.end method

.method public final n()Li/c/b0/k/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/b<",
            "Landroid/telecom/CallAudioState;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->n:Li/c/b0/k/b;

    return-object v0
.end method

.method public final o(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/a0/c$b;
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$b;

    return-object p1
.end method

.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->k(Landroid/telecom/Call;)Lcom/hiya/client/callerid/ui/a0/c$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->r()Li/c/b0/k/b;

    move-result-object v0

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telecom/Call$Callback;->onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->k(Landroid/telecom/Call;)Lcom/hiya/client/callerid/ui/a0/c$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->q()Li/c/b0/k/b;

    move-result-object p2

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/telecom/Call$Callback;->onStateChanged(Landroid/telecom/Call;I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/c;->k(Landroid/telecom/Call;)Lcom/hiya/client/callerid/ui/a0/c$b;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v3, 0x7

    if-ne p2, v3, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->w()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state == STATE_DISCONNECTED, cause = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", calling callLifecycle::onCallEnded"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p0, p1, p2}, Lcom/hiya/client/support/logging/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/e;->c()Lcom/hiya/client/callerid/ui/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object p2

    .line 9
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->g()Lg/g/b/c/k;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->f()J

    move-result-wide v3

    .line 11
    invoke-interface {p1, p2, v1, v3, v4}, Lcom/hiya/client/callerid/ui/b;->b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V

    .line 12
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/hiya/client/callerid/ui/a0/c;->L(Lcom/hiya/client/callerid/ui/a0/c$b;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/c;->d:Lcom/hiya/client/callerid/ui/x/a;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/x/a;->f()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_6

    .line 14
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->e()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/c$b;->x(J)V

    .line 16
    sget-object p1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/e;->c()Lcom/hiya/client/callerid/ui/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object p2

    .line 18
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->f()J

    move-result-wide v1

    .line 19
    invoke-interface {p1, p2, v1, v2}, Lcom/hiya/client/callerid/ui/b;->a(Lcom/hiya/client/callerid/ui/b0/j;J)V

    .line 20
    :cond_4
    sget p1, Lcom/hiya/client/callerid/ui/a0/c;->o:I

    if-nez p1, :cond_5

    .line 21
    invoke-direct {p0, v0}, Lcom/hiya/client/callerid/ui/a0/c;->O(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    .line 22
    :cond_5
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->Q()V

    .line 23
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->y()Lcom/hiya/client/callerid/ui/a0/h;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/a0/h;->v(Lcom/hiya/client/callerid/ui/a0/c$b;)V

    goto :goto_1

    :cond_6
    const/16 p1, 0xa

    if-ne p2, p1, :cond_7

    .line 24
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->w()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/c;->r()Li/c/b0/k/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    .line 26
    :cond_8
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->V()V

    return-void
.end method

.method public final p()Li/c/b0/k/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/b<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->m:Li/c/b0/k/b;

    return-object v0
.end method

.method public final q()Li/c/b0/k/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/b<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->l:Li/c/b0/k/b;

    return-object v0
.end method

.method public final r()Li/c/b0/k/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/b<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->k:Li/c/b0/k/b;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "callsMap.values"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final t()Li/c/b0/k/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/b<",
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/a0/c;->j:Li/c/b0/k/b;

    return-object v0
.end method

.method public final v(Ljava/lang/String;)Lcom/hiya/client/callerid/ui/a0/c$b;
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->w()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/a0/c$b;

    return-object p1
.end method

.method public final z()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/c;->u()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
