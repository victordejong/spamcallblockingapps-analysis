.class public Lcom/hiya/stingray/manager/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/u3$q;,
        Lcom/hiya/stingray/manager/u3$p;,
        Lcom/hiya/stingray/manager/u3$d;,
        Lcom/hiya/stingray/manager/u3$e;,
        Lcom/hiya/stingray/manager/u3$f;,
        Lcom/hiya/stingray/manager/u3$a;,
        Lcom/hiya/stingray/manager/u3$b;,
        Lcom/hiya/stingray/manager/u3$h;,
        Lcom/hiya/stingray/manager/u3$g;,
        Lcom/hiya/stingray/manager/u3$n;,
        Lcom/hiya/stingray/manager/u3$o;,
        Lcom/hiya/stingray/manager/u3$i;,
        Lcom/hiya/stingray/manager/u3$j;,
        Lcom/hiya/stingray/manager/u3$k;,
        Lcom/hiya/stingray/manager/u3$l;,
        Lcom/hiya/stingray/manager/u3$m;
    }
.end annotation


# static fields
.field private static final r:J

.field private static final s:J

.field private static final t:J

.field private static final u:J

.field private static final v:[Ljava/lang/Integer;

.field private static final w:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/android/billingclient/api/c;

.field private final b:Li/c/b0/c/a;

.field private final c:Lcom/hiya/stingray/manager/u3$o;

.field private final d:Lcom/hiya/stingray/manager/u3$b;

.field private e:Lcom/hiya/stingray/t/d1;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/u3$j;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/u3$l;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

.field private final j:Landroid/content/Context;

.field private final k:Lcom/hiya/stingray/util/a0;

.field private final l:Lcom/hiya/stingray/q/d/f;

.field private final m:Lcom/hiya/stingray/q/d/e;

.field private final n:Lcom/hiya/stingray/manager/a4;

.field private final o:Lcom/hiya/stingray/manager/b2;

.field private final p:Lcom/hiya/stingray/manager/v3;

.field private final q:Lcom/hiya/stingray/manager/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/hiya/stingray/manager/u3;->r:J

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hiya/stingray/manager/u3;->s:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/hiya/stingray/manager/u3;->t:J

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hiya/stingray/manager/u3;->u:J

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Integer;

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 8
    sput-object v1, Lcom/hiya/stingray/manager/u3;->v:[Ljava/lang/Integer;

    .line 9
    sget-object v0, Lcom/hiya/stingray/manager/u3$c;->f:Lcom/hiya/stingray/manager/u3$c;

    sput-object v0, Lcom/hiya/stingray/manager/u3;->w:Lkotlin/w/b/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/q/d/e;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/manager/b2;Lcom/hiya/stingray/manager/v3;Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedUserSharedPreferences"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashReportingManager"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoPremiumManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u3;->k:Lcom/hiya/stingray/util/a0;

    iput-object p3, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    iput-object p4, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    iput-object p5, p0, Lcom/hiya/stingray/manager/u3;->n:Lcom/hiya/stingray/manager/a4;

    iput-object p6, p0, Lcom/hiya/stingray/manager/u3;->o:Lcom/hiya/stingray/manager/b2;

    iput-object p7, p0, Lcom/hiya/stingray/manager/u3;->p:Lcom/hiya/stingray/manager/v3;

    iput-object p8, p0, Lcom/hiya/stingray/manager/u3;->q:Lcom/hiya/stingray/manager/e1;

    .line 2
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->b:Li/c/b0/c/a;

    .line 3
    new-instance p1, Lcom/hiya/stingray/manager/u3$o;

    invoke-direct {p1}, Lcom/hiya/stingray/manager/u3$o;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->c:Lcom/hiya/stingray/manager/u3$o;

    .line 4
    new-instance p1, Lcom/hiya/stingray/manager/u3$b;

    invoke-direct {p1}, Lcom/hiya/stingray/manager/u3$b;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->d:Lcom/hiya/stingray/manager/u3$b;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    sget-object p1, Lcom/hiya/stingray/manager/u3$k0;->a:Lcom/hiya/stingray/manager/u3$k0;

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->i:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    return-void
.end method

.method private final A()Lcom/hiya/stingray/manager/u3$m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->e()Lcom/hiya/stingray/manager/u3$m;

    move-result-object v0

    return-object v0
.end method

.method private final C()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/hiya/stingray/manager/u3;->u:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/hiya/stingray/manager/u3;->s:J

    :goto_0
    return-wide v0
.end method

.method private final F()Lcom/hiya/stingray/t/d1;
    .locals 13

    .line 1
    new-instance v12, Lcom/hiya/stingray/t/d1;

    .line 2
    sget-object v1, Lcom/hiya/stingray/t/d1$b;->FREE:Lcom/hiya/stingray/t/d1$b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x36

    const/4 v11, 0x0

    move-object v0, v12

    .line 3
    invoke-direct/range {v0 .. v11}, Lcom/hiya/stingray/t/d1;-><init>(Lcom/hiya/stingray/t/d1$b;JJZLcom/hiya/stingray/t/d1$c;JILkotlin/w/c/g;)V

    return-object v12
.end method

.method private final U()V
    .locals 9

    .line 1
    sget-object v8, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    const v0, 0x7f11030d

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.string.revenuecat_api_key)"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$Companion;->configure$default(Lcom/revenuecat/purchases/Purchases$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ILjava/lang/Object;)Lcom/revenuecat/purchases/Purchases;

    .line 2
    invoke-virtual {v8}, Lcom/revenuecat/purchases/Purchases$Companion;->getSharedInstance()Lcom/revenuecat/purchases/Purchases;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/Purchases;->setFinishTransactions(Z)V

    .line 3
    invoke-virtual {v8}, Lcom/revenuecat/purchases/Purchases$Companion;->getSharedInstance()Lcom/revenuecat/purchases/Purchases;

    move-result-object v0

    iget-object v2, p0, Lcom/hiya/stingray/manager/u3;->i:Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;

    invoke-virtual {v0, v2}, Lcom/revenuecat/purchases/Purchases;->setUpdatedPurchaserInfoListener(Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v1, v0, v2}, Lcom/hiya/stingray/manager/u3;->j0(Lcom/hiya/stingray/manager/u3;ZILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/hiya/stingray/manager/u3$e0;->f:Lcom/hiya/stingray/manager/u3$e0;

    sget-object v2, Lcom/hiya/stingray/manager/u3$f0;->f:Lcom/hiya/stingray/manager/u3$f0;

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->b:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private final X(Lcom/android/billingclient/api/c;Ljava/lang/String;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/c;",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/e0<",
            "Lkotlin/l<",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/u3$g0;

    invoke-direct {v0, p1, p2}, Lcom/hiya/stingray/manager/u3$g0;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/e0;->f(Li/c/b0/b/h0;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "Single.create { emitter \u2026}\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final Z(Lcom/hiya/stingray/manager/u3$k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->E(Lcom/hiya/stingray/manager/u3$k;)V

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/u3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/u3;->r(Ljava/util/List;)V

    return-void
.end method

.method private final a0(Lcom/hiya/stingray/manager/u3$m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/e;->l(Lcom/hiya/stingray/manager/u3$m;)V

    return-void
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/u3;)Li/c/b0/b/e0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->s()Li/c/b0/b/e0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/u3;)Li/c/b0/b/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->t()Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/manager/u3;)Lcom/android/billingclient/api/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/u3;->a:Lcom/android/billingclient/api/c;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/manager/u3$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/u3;->d:Lcom/hiya/stingray/manager/u3$b;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/stingray/manager/u3;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/u3;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic g(Lcom/hiya/stingray/manager/u3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    return-object p0
.end method

.method private final g0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    const v3, 0x7f11034f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026tings_call_key_spam_call)"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v3, v2}, Lcom/hiya/stingray/q/d/f;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v3, v2, v1}, Lcom/hiya/stingray/q/d/f;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    const v3, 0x7f110346

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026call_key_fraud_scam_call)"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v3, v2}, Lcom/hiya/stingray/q/d/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/q/d/f;->M(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final synthetic h()[Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/u3;->v:[Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic i(Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/manager/u3$o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/u3;->c:Lcom/hiya/stingray/manager/u3$o;

    return-object p0
.end method

.method public static final synthetic j(Lcom/hiya/stingray/manager/u3;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/u3;->k:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method public static synthetic j0(Lcom/hiya/stingray/manager/u3;ZILjava/lang/Object;)Li/c/b0/b/e;
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3;->i0(Z)Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updatePurchases"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic k(Lcom/hiya/stingray/manager/u3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->U()V

    return-void
.end method

.method private final k0(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/u3$l;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/u3$l;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/d1;->g:Lcom/hiya/stingray/t/d1$a;

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/hiya/stingray/t/d1$a;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lcom/hiya/stingray/t/d1;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/manager/u3;->e0(Lcom/hiya/stingray/t/d1;)V

    :cond_0
    const-string v0, "PremiumManagerLog"

    .line 3
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const-string p2, "Updated status: %s"

    invoke-virtual {v1, p2, v3}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "Updated purchases: %s"

    invoke-virtual {p2, p1, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->u()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    aput-object v0, p2, v4

    const-string v0, "Updated active subscription: %s"

    invoke-virtual {p1, v0, p2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->T()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->p:Lcom/hiya/stingray/manager/v3;

    invoke-static {p1, v4, v2, v1}, Lcom/hiya/stingray/manager/v3;->f(Lcom/hiya/stingray/manager/v3;ZILjava/lang/Object;)V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->g0()V

    return-void
.end method

.method public static final synthetic l(Lcom/hiya/stingray/manager/u3;Lcom/android/billingclient/api/c;Ljava/lang/String;)Li/c/b0/b/e0;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/u3;->X(Lcom/android/billingclient/api/c;Ljava/lang/String;)Li/c/b0/b/e0;

    move-result-object p0

    return-object p0
.end method

.method private final l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->q:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->M()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic m(Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/u3$k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/u3;->Z(Lcom/hiya/stingray/manager/u3$k;)V

    return-void
.end method

.method public static final synthetic n(Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/u3$m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/u3;->a0(Lcom/hiya/stingray/manager/u3$m;)V

    return-void
.end method

.method public static final synthetic o(Lcom/hiya/stingray/manager/u3;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic p(Lcom/hiya/stingray/manager/u3;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->g:Ljava/util/List;

    return-void
.end method

.method public static final synthetic q(Lcom/hiya/stingray/manager/u3;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/u3;->k0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final r(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 3
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->h()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->a:Lcom/android/billingclient/api/c;

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/android/billingclient/api/a;->b()Lcom/android/billingclient/api/a$a;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/a$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/a$a;

    .line 8
    invoke-virtual {v2}, Lcom/android/billingclient/api/a$a;->a()Lcom/android/billingclient/api/a;

    move-result-object v2

    new-instance v3, Lcom/hiya/stingray/manager/u3$r;

    invoke-direct {v3, v0}, Lcom/hiya/stingray/manager/u3$r;-><init>(Lcom/android/billingclient/api/Purchase;)V

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final s()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Lcom/android/billingclient/api/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/u3$s;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/u3$s;-><init>(Lcom/hiya/stingray/manager/u3;)V

    invoke-static {v0}, Li/c/b0/b/e0;->f(Li/c/b0/b/h0;)Li/c/b0/b/e0;

    move-result-object v0

    const-string v1, "Single.create { emitter \u2026             })\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final t()Li/c/b0/b/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->a:Lcom/android/billingclient/api/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PremiumManagerLog"

    .line 2
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "connectClient(): client is ready, returning complete"

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.complete()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/hiya/stingray/manager/u3$t;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/u3$t;-><init>(Lcom/hiya/stingray/manager/u3;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final y()Lcom/hiya/stingray/manager/u3$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->i()Lcom/hiya/stingray/manager/u3$k;

    move-result-object v0

    return-object v0
.end method

.method private final z()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/hiya/stingray/manager/u3;->t:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/hiya/stingray/manager/u3;->r:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final B()Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->A()Lcom/hiya/stingray/manager/u3$m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$m;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->a()Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->b()Z

    move-result v0

    return v0
.end method

.method public final G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/u3$j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->f:Ljava/util/List;

    return-object v0
.end method

.method public final H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/u3$l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->A()Lcom/hiya/stingray/manager/u3$m;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$m;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final I()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/f;->n()Z

    move-result v0

    return v0
.end method

.method public final K()Lcom/hiya/stingray/t/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->e:Lcom/hiya/stingray/t/d1;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->g()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->F()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "DEBUG OVERRIDE"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->b()Lcom/hiya/stingray/t/d1$b;

    move-result-object v0

    sget-object v2, Lcom/hiya/stingray/t/d1$b;->SUBSCRIBED:Lcom/hiya/stingray/t/d1$b;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->e()Lcom/hiya/stingray/t/d1$c;

    move-result-object v0

    sget-object v3, Lcom/hiya/stingray/t/d1$c;->MONTHLY:Lcom/hiya/stingray/t/d1$c;

    if-ne v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    const v1, 0x7f110296

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->b()Lcom/hiya/stingray/t/d1$b;

    move-result-object v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->e()Lcom/hiya/stingray/t/d1$c;

    move-result-object v0

    sget-object v2, Lcom/hiya/stingray/t/d1$c;->ANNUAL:Lcom/hiya/stingray/t/d1$c;

    if-ne v0, v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    const v1, 0x7f110290

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->n:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->p:Lcom/hiya/stingray/manager/v3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/v3;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    const v1, 0x7f110297

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final M()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->b()Lcom/hiya/stingray/t/d1$b;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/d1$b;->SUBSCRIBED:Lcom/hiya/stingray/t/d1$b;

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/manager/k4;->k:Lcom/hiya/stingray/manager/k4$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/k4$a;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/d1;->c()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->u()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->u()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    :cond_3
    :goto_2
    const-string v1, "if (activeSubscription?.\u2026ubscription!!.id) else \"\""

    .line 5
    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/l;

    const/4 v3, 0x0

    const-string v4, "subscription_date"

    .line 6
    invoke-static {v4, v0}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    const-string v3, "subscription_info"

    .line 7
    invoke-static {v3, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v2

    aput-object v2, v1, v0

    .line 8
    invoke-static {v1}, Lkotlin/s/b0;->h([Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public N()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lcom/hiya/stingray/manager/u3$d;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    const-class v2, Lcom/hiya/stingray/manager/u3$f;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 3
    const-class v4, Lcom/hiya/stingray/manager/u3$e;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    aget-object v2, v1, v3

    .line 5
    iget-object v4, p0, Lcom/hiya/stingray/manager/u3;->o:Lcom/hiya/stingray/manager/b2;

    sget-object v5, Lcom/hiya/stingray/manager/u3;->w:Lkotlin/w/b/l;

    invoke-virtual {v4, v2, v5}, Lcom/hiya/stingray/manager/b2;->r(Ljava/lang/Class;Lkotlin/w/b/l;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/billingclient/api/c;->g(Landroid/content/Context;)Lcom/android/billingclient/api/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->c:Lcom/hiya/stingray/manager/u3$o;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$b;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$b;

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$b;->b()Lcom/android/billingclient/api/c$b;

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$b;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/manager/u3;->a:Lcom/android/billingclient/api/c;

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->c:Lcom/hiya/stingray/manager/u3$o;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$o;->a()Li/c/b0/k/b;

    move-result-object v0

    .line 8
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/hiya/stingray/manager/u3$y;->f:Lcom/hiya/stingray/manager/u3$y;

    .line 11
    sget-object v2, Lcom/hiya/stingray/manager/u3$z;->f:Lcom/hiya/stingray/manager/u3$z;

    .line 12
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->b:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 14
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->d:Lcom/hiya/stingray/manager/u3$b;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$b;->a()Li/c/b0/k/b;

    move-result-object v0

    .line 15
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 16
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/hiya/stingray/manager/u3$a0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u3$a0;-><init>(Lcom/hiya/stingray/manager/u3;)V

    .line 18
    sget-object v2, Lcom/hiya/stingray/manager/u3$b0;->f:Lcom/hiya/stingray/manager/u3$b0;

    .line 19
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->b:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 21
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->d:Lcom/hiya/stingray/manager/u3$b;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$b;->b()Li/c/b0/k/b;

    move-result-object v0

    .line 22
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 23
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/hiya/stingray/manager/u3$c0;->f:Lcom/hiya/stingray/manager/u3$c0;

    .line 25
    sget-object v2, Lcom/hiya/stingray/manager/u3$d0;->f:Lcom/hiya/stingray/manager/u3$d0;

    .line 26
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->b:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 28
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->s()Li/c/b0/b/e0;

    move-result-object v0

    .line 29
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 30
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/hiya/stingray/manager/u3$w;->f:Lcom/hiya/stingray/manager/u3$w;

    sget-object v2, Lcom/hiya/stingray/manager/u3$x;->f:Lcom/hiya/stingray/manager/u3$x;

    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->b:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final O(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appsFlyerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getSharedInstance()Lcom/revenuecat/purchases/Purchases;

    move-result-object v1

    invoke-virtual {v1}, Lcom/revenuecat/purchases/Purchases;->collectDeviceIdentifiers()V

    .line 2
    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getSharedInstance()Lcom/revenuecat/purchases/Purchases;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/revenuecat/purchases/Purchases;->setAppsflyerID(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getSharedInstance()Lcom/revenuecat/purchases/Purchases;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/revenuecat/purchases/Purchases;->setAttributes(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public P()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->b()Lcom/hiya/stingray/t/d1$b;

    move-result-object v0

    sget-object v3, Lcom/hiya/stingray/t/d1$b;->SUBSCRIBED:Lcom/hiya/stingray/t/d1$b;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->n:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->p:Lcom/hiya/stingray/manager/v3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/v3;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public final Q()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-static {v4}, Lcom/hiya/stingray/util/d0;->c(Landroid/content/Context;)Lcom/google/common/base/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/base/j;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Locale.getDefault()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final R(Lg/g/b/c/q;Lg/g/b/c/i;ZZ)Z
    .locals 1

    const-string v0, "reputationLevel"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg/g/b/c/q;->OK:Lg/g/b/c/q;

    if-eq p1, v0, :cond_0

    sget-object v0, Lg/g/b/c/q;->UNCERTAIN:Lg/g/b/c/q;

    if-ne p1, v0, :cond_2

    :cond_0
    sget-object p1, Lg/g/b/c/i;->PERSON:Lg/g/b/c/i;

    if-eq p2, p1, :cond_1

    sget-object p1, Lg/g/b/c/i;->UNKNOWN:Lg/g/b/c/i;

    if-ne p2, p1, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final S(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;)Z
    .locals 2

    const-string v0, "identityData"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reputationDataItem"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/z0;->OK:Lcom/hiya/stingray/t/z0;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object p2

    sget-object v0, Lcom/hiya/stingray/t/z0;->UNCERTAIN:Lcom/hiya/stingray/t/z0;

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p2

    sget-object v0, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p2

    sget-object v0, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    if-ne p2, v0, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-eq p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public T()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->b()Lcom/hiya/stingray/t/d1$b;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/d1$b;->SUBSCRIBED:Lcom/hiya/stingray/t/d1$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final V(Lg/g/a/a/m/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->n:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/a4;->h(Lg/g/a/a/m/c;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->g0()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->k:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/manager/u3$h;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/u3$h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->n:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->p:Lcom/hiya/stingray/manager/v3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/hiya/stingray/manager/v3;->f(Lcom/hiya/stingray/manager/v3;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final W(Lcom/hiya/stingray/manager/u3$p;)Lcom/hiya/stingray/manager/u3$i;
    .locals 6

    const-string v0, "subscription"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->f:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hiya/stingray/manager/u3$j;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$j;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/hiya/stingray/manager/u3$j;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3$j;->a()Lcom/hiya/stingray/manager/u3$i;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final Y()Li/c/b0/b/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/manager/u3;->i0(Z)Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final b0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/e;->h(Z)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->g0()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->k:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/manager/u3$h;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/u3$h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final c0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/e;->i(Z)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->g0()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->k:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/manager/u3$h;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/u3$h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final d0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->l:Lcom/hiya/stingray/q/d/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/f;->L(Z)V

    return-void
.end method

.method public final e0(Lcom/hiya/stingray/t/d1;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/u3;->e:Lcom/hiya/stingray/t/d1;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/e;->g()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/q/d/e;->n(Lcom/hiya/stingray/t/d1;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->b()Lcom/hiya/stingray/t/d1$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lcom/hiya/stingray/manager/u3;->e:Lcom/hiya/stingray/t/d1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d1;->b()Lcom/hiya/stingray/t/d1$b;

    move-result-object p1

    :cond_1
    if-eq v0, p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->k:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/manager/u3$h;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/u3$h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->l0()V

    :cond_2
    return-void
.end method

.method public final f0(Landroid/app/Activity;Lcom/hiya/stingray/manager/u3$p;)Li/c/b0/b/e;
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscription"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PremiumManagerLog"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/u3$h0;

    invoke-direct {v0, p0, p2, p1}, Lcom/hiya/stingray/manager/u3$h0;-><init>(Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/u3$p;Landroid/app/Activity;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Completable.create { emi\u2026             })\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h0()Li/c/b0/b/e;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->y()Lcom/hiya/stingray/manager/u3$k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$k;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->z()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$k;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/manager/u3;->f:Ljava/util/List;

    .line 4
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.complete()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hiya/stingray/manager/u3;->f:Ljava/util/List;

    :cond_1
    const-string v0, "PremiumManagerLog"

    .line 6
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No cache for products, fetching."

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/hiya/stingray/manager/u3$i0;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/u3$i0;-><init>(Lcom/hiya/stingray/manager/u3;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026             })\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i0(Z)Li/c/b0/b/e;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/d/e;->g()Lcom/hiya/stingray/t/d1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/manager/u3;->m:Lcom/hiya/stingray/q/d/e;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/d/e;->e()Lcom/hiya/stingray/manager/u3$m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->A()Lcom/hiya/stingray/manager/u3$m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$m;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-direct {p0}, Lcom/hiya/stingray/manager/u3;->C()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 4
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.complete()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "PremiumManagerLog"

    .line 5
    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No cache for purchases or encrypted cache is empty, fetching..."

    invoke-virtual {p1, v1, v0}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance p1, Lcom/hiya/stingray/manager/u3$j0;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/manager/u3$j0;-><init>(Lcom/hiya/stingray/manager/u3;)V

    invoke-static {p1}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.create { emi\u2026             })\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final u()Lcom/hiya/stingray/manager/u3$p;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->v()Lcom/hiya/stingray/manager/u3$l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/hiya/stingray/manager/u3$p;->values()[Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/hiya/stingray/manager/u3;->j:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->v()Lcom/hiya/stingray/manager/u3$l;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    invoke-static {v5, v6}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final v()Lcom/hiya/stingray/manager/u3$l;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/u3;->H()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hiya/stingray/manager/u3$l;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$l;->a()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/hiya/stingray/manager/u3$l;

    :cond_2
    return-object v1
.end method

.method public final w()Li/c/b0/b/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/hiya/stingray/manager/u3;->j0(Lcom/hiya/stingray/manager/u3;ZILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/u3$u;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u3$u;-><init>(Lcom/hiya/stingray/manager/u3;)V

    invoke-static {v1}, Li/c/b0/b/p;->e(Li/c/b0/b/s;)Li/c/b0/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->e(Li/c/b0/b/t;)Li/c/b0/b/p;

    move-result-object v0

    const-string v1, "updatePurchases().andThe\u2026r.onComplete()\n        })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final x()Li/c/b0/b/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/hiya/stingray/manager/u3;->j0(Lcom/hiya/stingray/manager/u3;ZILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/u3$v;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u3$v;-><init>(Lcom/hiya/stingray/manager/u3;)V

    invoke-static {v1}, Li/c/b0/b/p;->e(Li/c/b0/b/s;)Li/c/b0/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->e(Li/c/b0/b/t;)Li/c/b0/b/p;

    move-result-object v0

    const-string v1, "updatePurchases().andThe\u2026r.onComplete()\n        })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
