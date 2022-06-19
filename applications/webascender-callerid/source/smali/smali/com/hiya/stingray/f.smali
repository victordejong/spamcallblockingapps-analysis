.class public final Lcom/hiya/stingray/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/ui/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/f$b;,
        Lcom/hiya/stingray/f$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/hiya/stingray/f$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/q2;

.field private final c:Lcom/hiya/stingray/t/i1/f0;

.field private final d:Lcom/hiya/stingray/t/i1/m0;

.field private final e:Lcom/hiya/stingray/t/i1/t;

.field private final f:Lcom/hiya/stingray/manager/u3;

.field private final g:Lcom/hiya/stingray/t/i1/c0;

.field private final h:Lcom/hiya/stingray/util/a0;

.field private final i:Lcom/hiya/stingray/manager/o1;

.field private final j:Lcom/hiya/stingray/manager/w1;

.field private final k:Lcom/hiya/stingray/manager/y1;

.field private final l:Lcom/hiya/stingray/manager/e1;

.field private final m:Lcom/hiya/stingray/manager/q1;

.field private final n:Lcom/hiya/stingray/manager/o2;

.field private final o:Lcom/hiya/stingray/manager/h4;

.field private final p:Li/c/b0/c/a;

.field private final q:Lcom/hiya/stingray/manager/h2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/f$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/f;->r:Lcom/hiya/stingray/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/q2;Lcom/hiya/stingray/t/i1/f0;Lcom/hiya/stingray/t/i1/m0;Lcom/hiya/stingray/t/i1/t;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/t/i1/c0;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/w1;Lcom/hiya/stingray/manager/y1;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/q1;Lcom/hiya/stingray/manager/o2;Lcom/hiya/stingray/manager/h4;Li/c/b0/c/a;Lcom/hiya/stingray/manager/h2;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventProfileManager"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyCallerIdMapper"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationMapper"

    invoke-static {v4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayTypeMapper"

    invoke-static {v5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {v6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identityTypeMapper"

    invoke-static {v7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogManager"

    invoke-static {v9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeBlockManager"

    invoke-static {v10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactManager"

    invoke-static {v11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {v12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callScreenerManager"

    invoke-static {v13, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {v14, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAccountManager"

    invoke-static {v15, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataIngestingAgent"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Lcom/hiya/stingray/f;->a:Landroid/content/Context;

    iput-object v2, v0, Lcom/hiya/stingray/f;->b:Lcom/hiya/stingray/manager/q2;

    iput-object v3, v0, Lcom/hiya/stingray/f;->c:Lcom/hiya/stingray/t/i1/f0;

    iput-object v4, v0, Lcom/hiya/stingray/f;->d:Lcom/hiya/stingray/t/i1/m0;

    iput-object v5, v0, Lcom/hiya/stingray/f;->e:Lcom/hiya/stingray/t/i1/t;

    iput-object v6, v0, Lcom/hiya/stingray/f;->f:Lcom/hiya/stingray/manager/u3;

    iput-object v7, v0, Lcom/hiya/stingray/f;->g:Lcom/hiya/stingray/t/i1/c0;

    iput-object v8, v0, Lcom/hiya/stingray/f;->h:Lcom/hiya/stingray/util/a0;

    iput-object v9, v0, Lcom/hiya/stingray/f;->i:Lcom/hiya/stingray/manager/o1;

    iput-object v10, v0, Lcom/hiya/stingray/f;->j:Lcom/hiya/stingray/manager/w1;

    iput-object v11, v0, Lcom/hiya/stingray/f;->k:Lcom/hiya/stingray/manager/y1;

    iput-object v12, v0, Lcom/hiya/stingray/f;->l:Lcom/hiya/stingray/manager/e1;

    iput-object v13, v0, Lcom/hiya/stingray/f;->m:Lcom/hiya/stingray/manager/q1;

    iput-object v14, v0, Lcom/hiya/stingray/f;->n:Lcom/hiya/stingray/manager/o2;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/hiya/stingray/f;->o:Lcom/hiya/stingray/manager/h4;

    iput-object v15, v0, Lcom/hiya/stingray/f;->p:Li/c/b0/c/a;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/hiya/stingray/f;->q:Lcom/hiya/stingray/manager/h2;

    return-void
.end method

.method public static final synthetic c(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/o1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->i:Lcom/hiya/stingray/manager/o1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/w1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->j:Lcom/hiya/stingray/manager/w1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/y1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->k:Lcom/hiya/stingray/manager/y1;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/stingray/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic g(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/h2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->q:Lcom/hiya/stingray/manager/h2;

    return-object p0
.end method

.method public static final synthetic h(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/o2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->n:Lcom/hiya/stingray/manager/o2;

    return-object p0
.end method

.method public static final synthetic i(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/t/i1/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->e:Lcom/hiya/stingray/t/i1/t;

    return-object p0
.end method

.method public static final synthetic j(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/t/i1/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->g:Lcom/hiya/stingray/t/i1/c0;

    return-object p0
.end method

.method public static final synthetic k(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/t/i1/f0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->c:Lcom/hiya/stingray/t/i1/f0;

    return-object p0
.end method

.method public static final synthetic l(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/u3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->f:Lcom/hiya/stingray/manager/u3;

    return-object p0
.end method

.method public static final synthetic m(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/f;->h:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method public static final synthetic n(Lcom/hiya/stingray/f;Landroid/content/Context;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/f;->r(Landroid/content/Context;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;)V

    return-void
.end method

.method public static final synthetic o(Lcom/hiya/stingray/f;Lcom/hiya/stingray/t/h0;Lcom/hiya/stingray/service/a/a;Lg/g/b/c/k;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/f;->t(Lcom/hiya/stingray/t/h0;Lcom/hiya/stingray/service/a/a;Lg/g/b/c/k;Z)V

    return-void
.end method

.method public static final synthetic p(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/ui/b;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;Lg/g/b/c/k;Ljava/lang/Integer;ZLcom/hiya/stingray/t/e0;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/hiya/stingray/f;->v(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/ui/b;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;Lg/g/b/c/k;Ljava/lang/Integer;ZLcom/hiya/stingray/t/e0;)V

    return-void
.end method

.method private final q(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f;->b:Lcom/hiya/stingray/manager/q2;

    .line 2
    new-instance v1, Lcom/hiya/stingray/t/u0;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->b()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->d()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->e()Z

    move-result v5

    .line 7
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hiya/stingray/t/u0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/q2;->a(Lcom/hiya/stingray/t/u0;)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/hiya/stingray/f$c;->f:Lcom/hiya/stingray/f$c;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/stingray/f$d;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/f$d;-><init>(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/hiya/stingray/f$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/hiya/stingray/f$e;-><init>(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 12
    new-instance v7, Lcom/hiya/stingray/f$f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/f$f;-><init>(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/b/c/k;)V

    invoke-virtual {v0, v7}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p3

    .line 13
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p4

    invoke-virtual {p3, p4}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p3

    .line 14
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p4

    invoke-virtual {p3, p4}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p3

    .line 15
    new-instance p4, Lcom/hiya/stingray/f$g;

    invoke-direct {p4, p0, p1, p2}, Lcom/hiya/stingray/f$g;-><init>(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;)V

    .line 16
    sget-object p1, Lcom/hiya/stingray/f$h;->f:Lcom/hiya/stingray/f$h;

    .line 17
    invoke-virtual {p3, p4, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/hiya/stingray/f;->p:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private final r(Landroid/content/Context;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f;->d:Lcom/hiya/stingray/t/i1/m0;

    .line 2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/hiya/stingray/t/h0;->e()Lcom/hiya/stingray/t/y0;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 5
    :goto_1
    invoke-virtual {v0, v1, v3, v4}, Lcom/hiya/stingray/t/i1/m0;->a(Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/s0;

    move-result-object v7

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/f;->e:Lcom/hiya/stingray/t/i1/t;

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/f;->g:Lcom/hiya/stingray/t/i1/c0;

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 9
    :goto_2
    invoke-virtual {p2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v1, v3, p2, v4}, Lcom/hiya/stingray/t/i1/c0;->a(Lcom/hiya/stingray/t/n0;Ljava/lang/String;Z)Lcom/hiya/stingray/t/p0;

    move-result-object p2

    if-eqz p3, :cond_3

    .line 11
    invoke-virtual {p3}, Lcom/hiya/stingray/t/h0;->e()Lcom/hiya/stingray/t/y0;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object p3

    goto :goto_3

    :cond_3
    move-object p3, v2

    :goto_3
    const-string v1, "localNotificationItem"

    .line 12
    invoke-static {v7, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/hiya/stingray/t/s0;->e()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Lcom/hiya/stingray/t/s0;->e()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "localNotificationItem.identityData!!"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v1

    const-string v2, "localNotificationItem.id\u2026                    .kind"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :goto_4
    iget-object v2, p0, Lcom/hiya/stingray/f;->f:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v2

    .line 14
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/hiya/stingray/t/i1/t;->d(Lcom/hiya/stingray/t/p0;Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/o;

    move-result-object v8

    .line 15
    sget-object v5, Lcom/hiya/stingray/notification/NotificationReceiver;->d:Lcom/hiya/stingray/notification/NotificationReceiver$a;

    const-string p2, "notificationDisplayContentType"

    .line 16
    invoke-static {v8, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v9, Lcom/hiya/stingray/notification/p;->BLOCKED_CALL:Lcom/hiya/stingray/notification/p;

    move-object v6, p1

    move-object v10, p4

    .line 18
    invoke-virtual/range {v5 .. v10}, Lcom/hiya/stingray/notification/NotificationReceiver$a;->a(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/notification/p;Lg/g/b/c/f;)Landroid/content/Intent;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 20
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2
.end method

.method private final s(Ljava/lang/String;Landroid/content/Context;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;Lg/g/b/c/k;Ljava/lang/Integer;Lcom/hiya/stingray/ui/o;ZLcom/hiya/stingray/t/e0;)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/hiya/stingray/f;->d:Lcom/hiya/stingray/t/i1/m0;

    .line 2
    invoke-virtual {p3}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    .line 3
    invoke-virtual {p3}, Lcom/hiya/stingray/t/h0;->e()Lcom/hiya/stingray/t/y0;

    move-result-object v4

    .line 4
    invoke-static/range {p5 .. p5}, Lcom/hiya/stingray/t/i1/h0;->d(Lg/g/b/c/k;)Lcom/hiya/stingray/util/i$a;

    move-result-object v5

    move-object v2, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/hiya/stingray/t/i1/m0;->b(Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Lcom/hiya/stingray/util/i$a;Ljava/lang/Integer;Lcom/hiya/stingray/t/e0;)Lcom/hiya/stingray/t/s0;

    move-result-object v8

    .line 6
    sget-object v6, Lcom/hiya/stingray/notification/NotificationReceiver;->d:Lcom/hiya/stingray/notification/NotificationReceiver$a;

    const-string v1, "localNotificationItem"

    .line 7
    invoke-static {v8, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p2

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p4

    .line 8
    invoke-virtual/range {v6 .. v11}, Lcom/hiya/stingray/notification/NotificationReceiver$a;->c(Landroid/content/Context;Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/f;)Landroid/content/Intent;

    move-result-object v1

    move-object v2, p2

    .line 9
    invoke-virtual {p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final t(Lcom/hiya/stingray/t/h0;Lcom/hiya/stingray/service/a/a;Lg/g/b/c/k;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f;->l:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/h0;->e()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    const-string v2, "callerIdItem.reputationDataItem"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v2

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/f;->m:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/q1;->k()Z

    move-result v4

    .line 5
    sget-object p1, Lcom/hiya/stingray/service/a/a;->BLOCKED_CALL_SCREENER:Lcom/hiya/stingray/service/a/a;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-static {p3}, Lcom/hiya/stingray/t/i1/h0;->d(Lg/g/b/c/k;)Lcom/hiya/stingray/util/i$a;

    move-result-object v6

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/f;->f:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v3, 0x0

    move-object v7, p2

    move v8, p4

    .line 8
    invoke-static/range {v0 .. v9}, Lcom/hiya/stingray/util/g;->e(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/z0;ZZZLcom/hiya/stingray/util/i$a;Lcom/hiya/stingray/service/a/a;ZLjava/lang/Boolean;)V

    return-void
.end method

.method private final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/f;->h:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/util/i0/b;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->e(Ljava/lang/Class;)V

    return-void
.end method

.method private final v(Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/ui/b;Lcom/hiya/stingray/ui/o;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;Lg/g/b/c/k;Ljava/lang/Integer;ZLcom/hiya/stingray/t/e0;)V
    .locals 12

    .line 1
    invoke-virtual/range {p4 .. p4}, Lcom/hiya/stingray/t/h0;->b()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    const-string v1, "callerIdItem.identityData"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/o0;->VOICEMAIL:Lcom/hiya/stingray/t/o0;

    if-eq v0, v1, :cond_1

    if-nez p8, :cond_0

    sget-object v0, Lcom/hiya/stingray/ui/b;->SAVED_CONTACT:Lcom/hiya/stingray/ui/b;

    move-object v1, p2

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    .line 3
    iget-object v4, v0, Lcom/hiya/stingray/f;->a:Landroid/content/Context;

    move-object v2, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, p3

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 4
    invoke-direct/range {v2 .. v11}, Lcom/hiya/stingray/f;->s(Ljava/lang/String;Landroid/content/Context;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;Lg/g/b/c/k;Ljava/lang/Integer;Lcom/hiya/stingray/ui/o;ZLcom/hiya/stingray/t/e0;)V

    return-void

    :cond_1
    :goto_0
    move-object v0, p0

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/f;->u()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/client/callerid/ui/b0/j;J)V
    .locals 0

    const-string p2, "number"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/f;->l:Lcom/hiya/stingray/manager/e1;

    const-string p2, "phone_call_pickup"

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/e1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
    .locals 8

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Lcom/hiya/stingray/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallEnded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/f;->l:Lcom/hiya/stingray/manager/e1;

    .line 4
    invoke-static {p2}, Lcom/hiya/stingray/t/i1/h0;->d(Lg/g/b/c/k;)Lcom/hiya/stingray/util/i$a;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/f;->n:Lcom/hiya/stingray/manager/o2;

    iget-object v2, p0, Lcom/hiya/stingray/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_PRIVATE:Lcom/hiya/stingray/service/a/a;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    .line 6
    :goto_0
    invoke-static {v0, p2, v1}, Lcom/hiya/stingray/util/g;->f(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/util/i$a;Lcom/hiya/stingray/service/a/a;)V

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/f;->n:Lcom/hiya/stingray/manager/o2;

    iget-object v0, p0, Lcom/hiya/stingray/f;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/hiya/stingray/f;->q:Lcom/hiya/stingray/manager/h2;

    .line 9
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_PRIVATE:Lcom/hiya/stingray/service/a/a;

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/hiya/stingray/manager/h2;->s(Ljava/lang/String;Lcom/hiya/stingray/service/a/a;)V

    .line 12
    iget-object p2, p0, Lcom/hiya/stingray/f;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, v0}, Lcom/hiya/stingray/f;->r(Landroid/content/Context;Lcom/hiya/client/callerid/ui/b0/j;Lcom/hiya/stingray/t/h0;Lg/g/b/c/f;)V

    .line 13
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    sget-object v0, Lcom/hiya/stingray/f;->r:Lcom/hiya/stingray/f$a;

    iget-object v1, p0, Lcom/hiya/stingray/f;->i:Lcom/hiya/stingray/manager/o1;

    iget-object v2, p0, Lcom/hiya/stingray/f;->o:Lcom/hiya/stingray/manager/h4;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-wide v3, p3

    invoke-static/range {v0 .. v7}, Lcom/hiya/stingray/f$a;->d(Lcom/hiya/stingray/f$a;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;JLi/c/b0/b/d0;ILjava/lang/Object;)Li/c/b0/b/p;

    move-result-object p2

    .line 15
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p3

    invoke-virtual {p2, p3}, Li/c/b0/b/p;->l(Li/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object p2

    .line 16
    new-instance p3, Lcom/hiya/stingray/f$j;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/f$j;-><init>(Lcom/hiya/stingray/f;)V

    invoke-virtual {p2, p3}, Li/c/b0/b/p;->i(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p2

    .line 17
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p3

    invoke-virtual {p2, p3}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p2

    .line 18
    new-instance p3, Lcom/hiya/stingray/f$k;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/f$k;-><init>(Lcom/hiya/stingray/f;)V

    .line 19
    sget-object p4, Lcom/hiya/stingray/f$l;->f:Lcom/hiya/stingray/f$l;

    .line 20
    invoke-virtual {p2, p3, p4}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p2

    .line 21
    iget-object p3, p0, Lcom/hiya/stingray/f;->p:Li/c/b0/c/a;

    invoke-virtual {p3, p2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_1

    .line 22
    :cond_1
    sget-object v0, Lcom/hiya/stingray/f;->r:Lcom/hiya/stingray/f$a;

    iget-object v1, p0, Lcom/hiya/stingray/f;->i:Lcom/hiya/stingray/manager/o1;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-wide v3, p3

    invoke-static/range {v0 .. v7}, Lcom/hiya/stingray/f$a;->b(Lcom/hiya/stingray/f$a;Lcom/hiya/stingray/manager/o1;Ljava/lang/String;JLi/c/b0/b/d0;ILjava/lang/Object;)Li/c/b0/b/p;

    move-result-object p2

    .line 23
    new-instance p3, Lcom/hiya/stingray/f$m;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/f$m;-><init>(Lcom/hiya/stingray/f;)V

    invoke-virtual {p2, p3}, Li/c/b0/b/p;->k(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object p2

    .line 24
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p3

    invoke-virtual {p2, p3}, Li/c/b0/b/p;->s(Li/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object p2

    .line 25
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p3

    invoke-virtual {p2, p3}, Li/c/b0/b/p;->l(Li/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object p2

    .line 26
    new-instance p3, Lcom/hiya/stingray/f$n;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/f$n;-><init>(Lcom/hiya/stingray/f;)V

    .line 27
    sget-object p4, Lcom/hiya/stingray/f$o;->f:Lcom/hiya/stingray/f$o;

    .line 28
    invoke-virtual {p2, p3, p4}, Li/c/b0/b/p;->p(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p2

    .line 29
    iget-object p3, p0, Lcom/hiya/stingray/f;->p:Li/c/b0/c/a;

    invoke-virtual {p3, p2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_1

    .line 30
    :cond_2
    iget-object p2, p0, Lcom/hiya/stingray/f;->q:Lcom/hiya/stingray/manager/h2;

    .line 31
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p3

    .line 32
    sget-object p4, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    .line 33
    invoke-virtual {p2, p3, p4}, Lcom/hiya/stingray/manager/h2;->s(Ljava/lang/String;Lcom/hiya/stingray/service/a/a;)V

    .line 34
    :goto_1
    iget-object p2, p0, Lcom/hiya/stingray/f;->q:Lcom/hiya/stingray/manager/h2;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/hiya/stingray/f;->n:Lcom/hiya/stingray/manager/o2;

    iget-object p4, p0, Lcom/hiya/stingray/f;->a:Landroid/content/Context;

    invoke-virtual {p2, p1, p3, p4}, Lcom/hiya/stingray/manager/h2;->d(Ljava/lang/String;Lcom/hiya/stingray/manager/o2;Landroid/content/Context;)Li/c/b0/b/e;

    move-result-object p1

    .line 35
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 36
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 37
    sget-object p2, Lcom/hiya/stingray/f$p;->f:Lcom/hiya/stingray/f$p;

    sget-object p3, Lcom/hiya/stingray/f$i;->f:Lcom/hiya/stingray/f$i;

    invoke-virtual {p1, p2, p3}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/hiya/stingray/f;->p:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_2

    .line 39
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/f;->q(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V

    :goto_2
    return-void
.end method
