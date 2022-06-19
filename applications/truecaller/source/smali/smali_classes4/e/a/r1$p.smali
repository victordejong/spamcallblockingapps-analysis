.class public final Le/a/r1$p;
.super Le/a/f2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# instance fields
.field public final d:Le/a/r1;


# direct methods
.method public constructor <init>(Le/a/r1;Landroid/app/Service;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/f2;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/r1$p;->d:Le/a/r1;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/videocallerid/upload/VideoUploadService;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Le/a/k/p/g;

    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v3, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 4
    new-instance v15, Le/a/k/c/g2;

    iget-object v4, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v5

    invoke-virtual {v3}, Le/a/r1;->Mc()Le/a/k/c/a;

    move-result-object v6

    invoke-virtual {v3}, Le/a/r1;->Kc()Le/a/k/c/n1;

    move-result-object v7

    .line 5
    new-instance v8, Le/a/k/c/a0;

    iget-object v4, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    .line 6
    sget v9, Le/a/k/o/f;->a:I

    .line 7
    new-instance v9, Le/a/b0/b/g/b;

    invoke-direct {v9}, Le/a/b0/b/g/b;-><init>()V

    const/4 v10, 0x0

    .line 8
    invoke-virtual {v9, v10}, Le/a/b0/b/g/b;->e(Z)Le/a/b0/b/g/b;

    .line 9
    invoke-virtual {v9, v10}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 10
    invoke-static {v9}, Le/a/b0/b/a/a;->b(Le/a/b0/b/g/b;)Lu3/e0$a;

    move-result-object v9

    const-string v10, "VideoCallerIdClient"

    .line 11
    invoke-static {v10}, Le/a/n/g0;->F(Ljava/lang/String;)Ljava/util/List;

    .line 12
    new-instance v10, Lu3/e0;

    invoke-direct {v10, v9}, Lu3/e0;-><init>(Lu3/e0$a;)V

    .line 13
    invoke-direct {v8, v4, v10}, Le/a/k/c/a0;-><init>(Ls1/w/f;Lu3/e0;)V

    .line 14
    invoke-virtual {v3}, Le/a/r1;->ub()Le/a/k/n/g/j;

    move-result-object v9

    iget-object v4, v3, Le/a/r1;->Fi:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Le/a/k/p/i;

    invoke-virtual {v3}, Le/a/r1;->Lc()Le/a/k/k;

    move-result-object v11

    invoke-virtual {v3}, Le/a/r1;->fc()Le/a/k/c/m0;

    move-result-object v12

    invoke-virtual {v3}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v13

    invoke-virtual {v3}, Le/a/r1;->Gc()Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    move-result-object v14

    move-object v4, v15

    invoke-direct/range {v4 .. v14}, Le/a/k/c/g2;-><init>(Ls1/w/f;Le/a/k/c/s1;Le/a/k/c/k1;Le/a/k/c/y;Le/a/k/n/g/e;Le/a/k/p/i;Le/a/k/j;Le/a/k/c/m0;Le/a/k/c/r0;Le/a/k/c/h2/d;)V

    .line 15
    iget-object v3, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 16
    invoke-virtual {v3}, Le/a/r1;->Mc()Le/a/k/c/a;

    move-result-object v3

    .line 17
    iget-object v4, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 18
    invoke-virtual {v4}, Le/a/r1;->Gc()Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    move-result-object v4

    .line 19
    invoke-direct {v1, v2, v15, v3, v4}, Le/a/k/p/g;-><init>(Ls1/w/f;Le/a/k/c/e2;Le/a/k/c/s1;Le/a/k/c/h2/d;)V

    move-object/from16 v2, p1

    .line 20
    iput-object v1, v2, Lcom/truecaller/videocallerid/upload/VideoUploadService;->d:Le/a/k/p/d;

    return-void
.end method

.method public b(Lcom/truecaller/voip/callconnection/VoipCallConnectionService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->i8:Ljavax/inject/Provider;

    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/q/v;

    .line 4
    iput-object v0, p1, Lcom/truecaller/voip/callconnection/VoipCallConnectionService;->d:Le/a/d/q/v;

    return-void
.end method

.method public c(Lcom/truecaller/voip/legacy/incall/LegacyVoipService;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    .line 4
    iput-object v2, v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->d:Ls1/w/f;

    .line 5
    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 7
    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    .line 8
    iput-object v2, v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->e:Ls1/w/f;

    .line 9
    new-instance v2, Le/a/d/b/a/b;

    move-object v3, v2

    iget-object v4, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 10
    iget-object v4, v4, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 11
    invoke-static {v4}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v6, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 12
    new-instance v7, Le/a/d/x/d;

    move-object v5, v7

    invoke-virtual {v6}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v8

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    const-string v10, "Executors.newSingleThreadExecutor()"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v10, Lq3/a/g1;

    invoke-direct {v10, v9}, Lq3/a/g1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object v9, v6, Le/a/r1;->Q7:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/d/c0/o1;

    invoke-virtual {v6}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v6

    invoke-direct {v7, v8, v10, v9, v6}, Le/a/d/x/d;-><init>(Landroid/content/Context;Lq3/a/g0;Le/a/d/c0/o1;Le/a/d/c0/f0;)V

    .line 16
    iget-object v6, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 17
    iget-object v6, v6, Le/a/r1;->S7:Ljavax/inject/Provider;

    .line 18
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/x/r/o;

    iget-object v7, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 19
    invoke-virtual {v7}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v7

    .line 20
    iget-object v9, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 21
    new-instance v10, Le/a/d/c0/r1;

    move-object v8, v10

    invoke-virtual {v9}, Le/a/r1;->Uc()Le/a/d/c0/z0;

    move-result-object v11

    invoke-virtual {v9}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v9

    invoke-direct {v10, v11, v9}, Le/a/d/c0/r1;-><init>(Le/a/d/c0/y0;Le/a/d/c0/j1;)V

    .line 22
    new-instance v10, Le/a/p5/d;

    move-object v9, v10

    invoke-direct {v10}, Le/a/p5/d;-><init>()V

    iget-object v10, v0, Le/a/r1$p;->d:Le/a/r1;

    invoke-static {v10}, Le/a/r1;->W8(Le/a/r1;)Le/a/d/c0/u;

    move-result-object v10

    iget-object v12, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 23
    new-instance v13, Le/a/d/c0/p;

    move-object v11, v13

    iget-object v14, v12, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v14}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v14

    invoke-virtual {v12}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v13, v14, v12}, Le/a/d/c0/p;-><init>(Ls1/w/f;Landroid/content/Context;)V

    .line 24
    iget-object v12, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 25
    invoke-virtual {v12}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v12

    .line 26
    iget-object v13, v0, Le/a/r1$p;->d:Le/a/r1;

    invoke-static {v13}, Le/a/r1;->t8(Le/a/r1;)Le/a/d/c0/x1/f;

    move-result-object v13

    iget-object v14, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 27
    iget-object v14, v14, Le/a/r1;->U7:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/d/x/r/n;

    iget-object v15, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 29
    invoke-virtual {v15}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v15

    .line 30
    iget-object v1, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 31
    invoke-virtual {v1}, Le/a/r1;->Xc()Le/a/d/c0/n1;

    move-result-object v16

    .line 32
    iget-object v1, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 33
    invoke-virtual {v1}, Le/a/r1;->Vc()Le/a/d/c0/h1;

    move-result-object v17

    .line 34
    iget-object v1, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 35
    new-instance v19, Le/a/d/c0/v1;

    move-object/from16 v18, v19

    move-object/from16 v25, v2

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v20

    invoke-static {}, Le/a/p5/s0/g;->S0()Le/a/d/p/a;

    move-result-object v21

    invoke-virtual {v1}, Le/a/r1;->Uc()Le/a/d/c0/z0;

    move-result-object v22

    iget-object v2, v1, Le/a/r1;->I7:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Le/a/d/c0/a2/a;

    iget-object v1, v1, Le/a/r1;->Q7:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Le/a/d/c0/o1;

    invoke-direct/range {v19 .. v24}, Le/a/d/c0/v1;-><init>(Ls1/w/f;Le/a/d/p/a;Le/a/d/c0/y0;Le/a/d/c0/a2/a;Le/a/d/c0/o1;)V

    .line 36
    iget-object v1, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 37
    iget-object v1, v1, Le/a/r1;->I7:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Le/a/d/c0/a2/a;

    iget-object v1, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 39
    invoke-virtual {v1}, Le/a/r1;->Pc()Le/a/d/c0/y1/c;

    move-result-object v20

    .line 40
    invoke-direct/range {v3 .. v20}, Le/a/d/b/a/b;-><init>(Ls1/w/f;Le/a/d/x/l;Le/a/d/x/r/o;Le/a/d/c0/j1;Le/a/d/c0/q1;Le/a/p5/c;Le/a/d/c0/t;Le/a/d/c0/o;Le/a/p5/c0;Le/a/d/c0/x1/e;Le/a/d/x/r/n;Le/a/d/c0/f0;Le/a/d/c0/m1;Le/a/d/c0/g1;Le/a/d/c0/u1;Le/a/d/c0/a2/a;Le/a/d/c0/y1/b;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    .line 41
    iput-object v2, v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->f:Le/a/d/b/a/f;

    .line 42
    new-instance v2, Le/a/p5/d;

    invoke-direct {v2}, Le/a/p5/d;-><init>()V

    .line 43
    iput-object v2, v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->g:Le/a/p5/c;

    .line 44
    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 45
    iget-object v2, v2, Le/a/r1;->i8:Ljavax/inject/Provider;

    .line 46
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/q/v;

    .line 47
    iput-object v2, v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->h:Le/a/d/q/v;

    .line 48
    invoke-virtual/range {p0 .. p0}, Le/a/r1$p;->l()Le/a/g4/a/b;

    move-result-object v2

    .line 49
    iput-object v2, v1, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->i:Le/a/g4/a/b;

    return-void
.end method

.method public d(Lcom/truecaller/whoviewedme/GenerateProfileViewService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    sget v1, Le/a/r1;->Ni:I

    .line 3
    invoke-virtual {v0}, Le/a/r1;->ed()Le/a/r5/j0;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/truecaller/whoviewedme/GenerateProfileViewService;->d:Le/a/r5/i0;

    .line 5
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    new-instance v1, Le/a/r5/n;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Le/a/p5/d;

    invoke-direct {v3}, Le/a/p5/d;-><init>()V

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Le/a/r5/n;-><init>(Landroid/content/ContentResolver;Le/a/p5/c;Ls1/w/f;)V

    .line 7
    iput-object v1, p1, Lcom/truecaller/whoviewedme/GenerateProfileViewService;->e:Le/a/r5/j;

    .line 8
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->i7()Le/a/k3/j/j;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lcom/truecaller/whoviewedme/GenerateProfileViewService;->f:Le/a/k3/j/j;

    .line 10
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 11
    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    .line 13
    iput-object v0, p1, Lcom/truecaller/whoviewedme/GenerateProfileViewService;->g:Le/a/q2/a;

    return-void
.end method

.method public e(Lcom/truecaller/premium/PremiumNotificationService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/truecaller/premium/PremiumNotificationService;->d:Ls1/w/f;

    .line 5
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->ub:Ljavax/inject/Provider;

    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/n2/e;

    .line 8
    iput-object v0, p1, Lcom/truecaller/premium/PremiumNotificationService;->e:Le/a/l/n2/e;

    .line 9
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 10
    invoke-virtual {v0}, Le/a/r1;->Fb()Le/a/l/o0;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/truecaller/premium/PremiumNotificationService;->f:Le/a/l/n0;

    .line 12
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 13
    iget-object v0, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    .line 14
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    .line 15
    iput-object v0, p1, Lcom/truecaller/premium/PremiumNotificationService;->g:Le/a/b0/o/a;

    .line 16
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 17
    invoke-virtual {v0}, Le/a/r1;->Pb()Le/a/l/p2/c1;

    move-result-object v0

    .line 18
    iput-object v0, p1, Lcom/truecaller/premium/PremiumNotificationService;->h:Le/a/l/p2/b1;

    .line 19
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 20
    iget-object v0, v0, Le/a/r1;->y3:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i4/e;

    .line 22
    iput-object v0, p1, Lcom/truecaller/premium/PremiumNotificationService;->i:Le/a/i4/e;

    .line 23
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 24
    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    .line 26
    iput-object v0, p1, Lcom/truecaller/premium/PremiumNotificationService;->j:Le/a/q2/a;

    .line 27
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 28
    iget-object v0, v0, Le/a/r1;->g3:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/clevertap/CleverTapManager;

    .line 30
    iput-object v0, p1, Lcom/truecaller/premium/PremiumNotificationService;->k:Lcom/truecaller/clevertap/CleverTapManager;

    return-void
.end method

.method public f(Lcom/truecaller/voip/service/call/CallService;)V
    .locals 7

    .line 1
    new-instance v6, Le/a/d/z/b/c;

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 4
    iget-object v0, v0, Le/a/r1;->b8:Ljavax/inject/Provider;

    .line 5
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/d/v/d;

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->f8:Ljavax/inject/Provider;

    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/a/d/w/d;

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 8
    invoke-virtual {v0}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v4

    .line 9
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 10
    invoke-virtual {v0}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v5

    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Le/a/d/z/b/c;-><init>(Ls1/w/f;Le/a/d/v/d;Le/a/d/w/d;Le/a/p5/c0;Le/a/d/c0/f0;)V

    .line 12
    iput-object v6, p1, Lcom/truecaller/voip/service/call/CallService;->d:Le/a/d/z/b/a;

    .line 13
    invoke-virtual {p0}, Le/a/r1$p;->l()Le/a/g4/a/b;

    move-result-object v0

    .line 14
    iput-object v0, p1, Lcom/truecaller/voip/service/call/CallService;->e:Le/a/g4/a/b;

    .line 15
    new-instance v0, Le/a/p5/d;

    invoke-direct {v0}, Le/a/p5/d;-><init>()V

    .line 16
    iput-object v0, p1, Lcom/truecaller/voip/service/call/CallService;->f:Le/a/p5/c;

    return-void
.end method

.method public g(Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->d:Ls1/w/f;

    .line 5
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 7
    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    .line 8
    iput-object v0, p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->e:Ls1/w/f;

    .line 9
    new-instance v0, Le/a/d/b/b/b;

    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 10
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 11
    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 12
    iget-object v1, v1, Le/a/r1;->S7:Ljavax/inject/Provider;

    .line 13
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/a/d/x/r/o;

    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 14
    new-instance v4, Le/a/d/c0/r1;

    invoke-virtual {v1}, Le/a/r1;->Uc()Le/a/d/c0/z0;

    move-result-object v5

    invoke-virtual {v1}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Le/a/d/c0/r1;-><init>(Le/a/d/c0/y0;Le/a/d/c0/j1;)V

    .line 15
    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 16
    invoke-virtual {v1}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v5

    .line 17
    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->t8(Le/a/r1;)Le/a/d/c0/x1/f;

    move-result-object v6

    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 18
    iget-object v1, v1, Le/a/r1;->U7:Ljavax/inject/Provider;

    .line 19
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/d/x/r/n;

    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 20
    new-instance v8, Le/a/d/c0/p;

    iget-object v9, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v9}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v9

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v9, v1}, Le/a/d/c0/p;-><init>(Ls1/w/f;Landroid/content/Context;)V

    .line 21
    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 22
    invoke-virtual {v1}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v9

    .line 23
    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 24
    invoke-virtual {v1}, Le/a/r1;->Xc()Le/a/d/c0/n1;

    move-result-object v10

    .line 25
    iget-object v1, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 26
    iget-object v1, v1, Le/a/r1;->yg:Ljavax/inject/Provider;

    .line 27
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Le/a/s2/a;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Le/a/d/b/b/b;-><init>(Ls1/w/f;Le/a/d/x/r/o;Le/a/d/c0/q1;Le/a/d/c0/j1;Le/a/d/c0/x1/e;Le/a/d/x/r/n;Le/a/d/c0/o;Le/a/d/c0/f0;Le/a/d/c0/m1;Le/a/s2/a;)V

    .line 28
    iput-object v0, p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->f:Le/a/d/b/b/h;

    .line 29
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 30
    invoke-virtual {v0}, Le/a/r1;->Xc()Le/a/d/c0/n1;

    move-result-object v0

    .line 31
    iput-object v0, p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->g:Le/a/d/c0/m1;

    .line 32
    invoke-virtual {p0}, Le/a/r1$p;->l()Le/a/g4/a/b;

    move-result-object v0

    .line 33
    iput-object v0, p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->h:Le/a/g4/a/b;

    .line 34
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 35
    invoke-virtual {v0}, Le/a/r1;->Qc()Le/a/d/c0/o0;

    move-result-object v0

    .line 36
    iput-object v0, p1, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->i:Le/a/d/c0/n0;

    return-void
.end method

.method public h(Lcom/truecaller/whoviewedme/ReceiveProfileViewService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    sget v1, Le/a/r1;->Ni:I

    .line 3
    invoke-virtual {v0}, Le/a/r1;->ed()Le/a/r5/j0;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->d:Le/a/r5/i0;

    .line 5
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->Oa:Ljavax/inject/Provider;

    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z4/d;

    .line 8
    iput-object v0, p1, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->e:Le/a/z4/d;

    .line 9
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->R6()Le/a/k3/j/b;

    .line 10
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 11
    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    .line 13
    iput-object v0, p1, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->f:Le/a/q2/a;

    .line 14
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 15
    invoke-virtual {v0}, Le/a/r1;->fd()Le/a/r5/l0;

    move-result-object v0

    .line 16
    iput-object v0, p1, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->g:Le/a/r5/l0;

    .line 17
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->i7()Le/a/k3/j/j;

    move-result-object v0

    .line 18
    iput-object v0, p1, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->h:Le/a/k3/j/j;

    .line 19
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 20
    new-instance v1, Le/a/r5/n;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Le/a/p5/d;

    invoke-direct {v3}, Le/a/p5/d;-><init>()V

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Le/a/r5/n;-><init>(Landroid/content/ContentResolver;Le/a/p5/c;Ls1/w/f;)V

    .line 21
    iput-object v1, p1, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->i:Le/a/r5/j;

    return-void
.end method

.method public i(Lcom/truecaller/ghost_call/GhostCallService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->Ab:Ljavax/inject/Provider;

    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/x/w;

    .line 4
    iput-object v0, p1, Lcom/truecaller/ghost_call/GhostCallService;->d:Le/a/x/w;

    .line 5
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    invoke-virtual {v0}, Le/a/r1;->rc()Le/a/h4/o;

    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/truecaller/ghost_call/GhostCallService;->e:Le/a/h4/n;

    .line 8
    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 9
    iget-object v0, v0, Le/a/r1;->Cb:Ljavax/inject/Provider;

    .line 10
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/x/l;

    .line 11
    iput-object v0, p1, Lcom/truecaller/ghost_call/GhostCallService;->f:Le/a/x/l;

    return-void
.end method

.method public j(Lcom/truecaller/voip/service/invitation/InvitationService;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v12, Le/a/d/z/c/e;

    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 4
    iget-object v2, v2, Le/a/r1;->f8:Ljavax/inject/Provider;

    .line 5
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/d/w/d;

    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    invoke-virtual {v2}, Le/a/r1;->Rc()Le/a/d/e;

    move-result-object v5

    .line 7
    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 8
    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v6

    .line 9
    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 10
    new-instance v7, Le/a/d/y/c/n;

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v9

    .line 11
    new-instance v10, Le/a/d/c0/m0;

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v11

    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    invoke-direct {v10, v11, v2}, Le/a/d/c0/m0;-><init>(Landroid/content/Context;Ls1/w/f;)V

    .line 12
    invoke-direct {v7, v8, v9, v10}, Le/a/d/y/c/n;-><init>(Landroid/content/Context;Le/a/d/c0/j1;Le/a/d/c0/m0;)V

    .line 13
    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 14
    invoke-virtual {v2}, Le/a/r1;->H9()Le/a/d/c0/f;

    move-result-object v8

    .line 15
    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 16
    new-instance v9, Le/a/d/c0/z1/c;

    invoke-virtual {v2}, Le/a/r1;->Qc()Le/a/d/c0/o0;

    move-result-object v14

    iget-object v10, v2, Le/a/r1;->f8:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Le/a/d/w/d;

    .line 17
    new-instance v10, Le/a/d/c0/z1/h;

    iget-object v11, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v11}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v11

    invoke-virtual {v2}, Le/a/r1;->H9()Le/a/d/c0/f;

    move-result-object v13

    invoke-static {}, Le/a/p5/s0/g;->S0()Le/a/d/p/a;

    move-result-object v1

    move-object/from16 v19, v8

    iget-object v8, v2, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/b0/e/l;

    invoke-direct {v10, v11, v13, v1, v8}, Le/a/d/c0/z1/h;-><init>(Ls1/w/f;Le/a/d/c0/e;Le/a/d/p/a;Le/a/b0/e/l;)V

    .line 18
    invoke-virtual {v2}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v17

    invoke-virtual {v2}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v18

    move-object v13, v9

    move-object/from16 v16, v10

    invoke-direct/range {v13 .. v18}, Le/a/d/c0/z1/c;-><init>(Le/a/d/c0/n0;Le/a/d/w/d;Le/a/d/c0/z1/f;Le/a/d/c0/j1;Le/a/d/c0/f0;)V

    .line 19
    iget-object v1, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 20
    invoke-virtual {v1}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v10

    .line 21
    iget-object v1, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 22
    iget-object v1, v1, Le/a/r1;->yg:Ljavax/inject/Provider;

    .line 23
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Le/a/s2/a;

    move-object v2, v12

    move-object/from16 v8, v19

    invoke-direct/range {v2 .. v11}, Le/a/d/z/c/e;-><init>(Ls1/w/f;Le/a/d/w/d;Le/a/d/g;Le/a/p5/c0;Le/a/d/y/c/k;Le/a/d/c0/e;Le/a/d/c0/z1/b;Le/a/d/c0/f0;Le/a/s2/a;)V

    move-object/from16 v1, p1

    .line 24
    iput-object v12, v1, Lcom/truecaller/voip/service/invitation/InvitationService;->d:Le/a/d/z/c/b;

    .line 25
    invoke-virtual/range {p0 .. p0}, Le/a/r1$p;->l()Le/a/g4/a/b;

    move-result-object v2

    .line 26
    iput-object v2, v1, Lcom/truecaller/voip/service/invitation/InvitationService;->e:Le/a/g4/a/b;

    return-void
.end method

.method public k(Lcom/truecaller/incallui/service/InCallUIService;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    new-instance v15, Le/a/f/y/o;

    move-object v3, v15

    iget-object v4, v2, Le/a/r1;->ji:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/f/y/v;

    iget-object v5, v2, Le/a/r1;->k2:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/f/y/c;

    invoke-virtual {v2}, Le/a/r1;->Da()Le/a/f/g;

    move-result-object v6

    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v7

    iget-object v8, v2, Le/a/r1;->li:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/f/z/m0/a;

    .line 3
    new-instance v16, Le/a/f3/o;

    move-object/from16 v9, v16

    iget-object v10, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v10}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v17

    iget-object v10, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v10}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v18

    iget-object v10, v2, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v10}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v19

    iget-object v10, v2, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v10}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v20

    iget-object v10, v2, Le/a/r1;->r1:Ljavax/inject/Provider;

    invoke-static {v10}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v21

    invoke-virtual {v2}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v22

    invoke-direct/range {v16 .. v22}, Le/a/f3/o;-><init>(Ls1/w/f;Ls1/w/f;Lo3/a;Landroid/content/Context;Lo3/a;Le/a/p5/a0;)V

    .line 4
    new-instance v11, Le/a/f/z/f0;

    move-object v10, v11

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Le/a/f/z/f0;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v12, Le/a/p5/d;

    move-object v11, v12

    invoke-direct {v12}, Le/a/p5/d;-><init>()V

    iget-object v12, v2, Le/a/r1;->h2:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/f/w/c;

    .line 6
    new-instance v14, Le/a/f/z/l0;

    move-object v13, v14

    move-object/from16 v16, v15

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Le/a/f/z/l0;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v2}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v14

    invoke-virtual {v2}, Le/a/r1;->Ba()Le/a/f/z/e;

    move-result-object v15

    move-object/from16 v0, v16

    move-object/from16 v25, v0

    iget-object v0, v2, Le/a/r1;->k6:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Le/a/o/c;

    iget-object v0, v2, Le/a/r1;->i2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-virtual {v2}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v18

    iget-object v0, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v19

    invoke-virtual {v2}, Le/a/r1;->Ic()Le/a/k/i;

    move-result-object v20

    .line 8
    new-instance v0, Le/a/f/z/n;

    move-object/from16 v21, v0

    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v1

    move-object/from16 v26, v3

    invoke-virtual {v2}, Le/a/r1;->jc()Le/a/a0/q;

    move-result-object v3

    move-object/from16 v27, v4

    invoke-virtual {v2}, Le/a/r1;->Ga()Le/a/f/z/b0;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Le/a/f/z/n;-><init>(Le/a/p5/c0;Le/a/a0/p;Le/a/f/z/a0;)V

    .line 9
    invoke-virtual {v2}, Le/a/r1;->A9()Le/a/k/f;

    move-result-object v22

    iget-object v0, v2, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Le/a/b0/e/l;

    invoke-virtual {v2}, Le/a/r1;->wa()Le/a/k3/f;

    move-result-object v24

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct/range {v3 .. v24}, Le/a/f/y/o;-><init>(Le/a/f/y/v;Le/a/f/y/c;Le/a/f/z/k;Le/a/p5/c0;Le/a/f/z/m0/a;Le/a/f3/c;Le/a/f/z/f0;Le/a/p5/c;Le/a/f/w/c;Le/a/f/z/l0;Le/a/p5/g;Le/a/f/z/d;Le/a/o/c;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/u3/g;Ls1/w/f;Le/a/k/h;Le/a/f/z/m;Le/a/k/d;Le/a/b0/e/l;Le/a/k3/e;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    .line 10
    iput-object v1, v0, Lcom/truecaller/incallui/service/InCallUIService;->d:Le/a/f/y/i;

    .line 11
    new-instance v1, Le/a/f/z/o0/a;

    move-object/from16 v2, p0

    iget-object v3, v2, Le/a/r1$p;->d:Le/a/r1;

    invoke-virtual {v3}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Le/a/r1$p;->l()Le/a/g4/a/b;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Le/a/f/z/o0/a;-><init>(Landroid/content/Context;Le/a/g4/a/b;)V

    .line 12
    iput-object v1, v0, Lcom/truecaller/incallui/service/InCallUIService;->e:Le/a/f/z/o0/a;

    .line 13
    sget v1, Le/a/f/b;->a:I

    .line 14
    sget-object v1, Le/a/f/b$a;->a:Le/a/f/z/j;

    if-eqz v1, :cond_0

    .line 15
    iput-object v1, v0, Lcom/truecaller/incallui/service/InCallUIService;->f:Le/a/f/z/j;

    .line 16
    iget-object v1, v2, Le/a/r1$p;->d:Le/a/r1;

    .line 17
    iget-object v3, v1, Le/a/r1;->Yf:Ljavax/inject/Provider;

    .line 18
    iput-object v3, v0, Lcom/truecaller/incallui/service/InCallUIService;->g:Ljavax/inject/Provider;

    .line 19
    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/truecaller/incallui/service/InCallUIService;->h:Le/a/p5/a0;

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Partner helper should be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()Le/a/g4/a/b;
    .locals 7

    .line 1
    new-instance v6, Le/a/g4/a/b;

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 4
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 5
    invoke-static {v0}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/a/u3/g;

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Le/a/r1$p;->d:Le/a/r1;

    .line 8
    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v5

    move-object v0, v6

    .line 9
    invoke-direct/range {v0 .. v5}, Le/a/g4/a/b;-><init>(Ls1/w/f;Ls1/w/f;Le/a/u3/g;Landroid/content/Context;Le/a/p5/g;)V

    return-object v6
.end method
