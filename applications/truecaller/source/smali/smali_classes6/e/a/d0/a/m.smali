.class public final Le/a/d0/a/m;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d0/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d0/a/l;",
        ">;",
        "Le/a/d0/a/k;"
    }
.end annotation


# instance fields
.field public final A:Le/a/o/c;

.field public final B:Le/a/k/h;

.field public final C:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Le/a/a3/a;

.field public final E:Le/a/l/p2/v0;

.field public final J:Le/a/d0/a/f;

.field public final K:Le/a/z2/a;

.field public final L:Le/a/k/c/c2;

.field public final M:Le/a/u3/g;

.field public final N:Le/a/k/d;

.field public final O:Le/a/i/b0/a;

.field public final P:Le/a/d0/a/d;

.field public d:Le/a/d0/a/b;

.field public e:Z

.field public f:Le/a/d0/a/z;

.field public g:Lcom/truecaller/blocking/FilterMatch;

.field public h:Ljava/lang/Long;

.field public final i:Le/a/p5/h0;

.field public final j:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/r2/l;

.field public final l:Le/a/o5/b0;

.field public final m:Le/a/k3/h;

.field public final n:Le/a/i/f0/k/a;

.field public final o:Ls1/w/f;

.field public final p:Le/a/i/f0/d;

.field public final q:Le/a/g5/p;

.field public final r:Le/a/q2/a;

.field public final s:Le/a/p5/u;

.field public final t:Lcom/truecaller/settings/CallingSettings;

.field public final u:Le/a/o5/c2/k;

.field public final v:Le/a/o5/c2/k$c;

.field public final w:Le/a/b0/e/f;

.field public final x:Le/a/a0/n;

.field public final y:Le/a/a0/p;

.field public final z:Le/a/k5/a;


# direct methods
.method public constructor <init>(Le/a/p5/h0;Le/a/r2/f;Le/a/r2/l;Le/a/o5/b0;Le/a/k3/h;Le/a/i/f0/k/a;Ls1/w/f;Le/a/i/f0/d;Le/a/g5/p;Le/a/q2/a;Le/a/p5/u;Lcom/truecaller/settings/CallingSettings;Le/a/o5/c2/k;Le/a/o5/c2/k$c;Le/a/b0/e/f;Le/a/a0/n;Le/a/a0/p;Le/a/k5/a;Le/a/o/c;Le/a/k/h;Le/a/r2/f;Le/a/a3/a;Le/a/l/p2/v0;Le/a/d0/a/f;Le/a/z2/a;Le/a/k/c/c2;Le/a/u3/g;Le/a/k/d;Le/a/i/b0/a;Le/a/d0/a/d;)V
    .locals 16
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/h0;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/r2/l;",
            "Le/a/o5/b0;",
            "Le/a/k3/h;",
            "Le/a/i/f0/k/a;",
            "Ls1/w/f;",
            "Le/a/i/f0/d;",
            "Le/a/g5/p;",
            "Le/a/q2/a;",
            "Le/a/p5/u;",
            "Lcom/truecaller/settings/CallingSettings;",
            "Le/a/o5/c2/k;",
            "Le/a/o5/c2/k$c;",
            "Le/a/b0/e/f;",
            "Le/a/a0/n;",
            "Le/a/a0/p;",
            "Le/a/k5/a;",
            "Le/a/o/c;",
            "Le/a/k/h;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/a3/a;",
            "Le/a/l/p2/v0;",
            "Le/a/d0/a/f;",
            "Le/a/z2/a;",
            "Le/a/k/c/c2;",
            "Le/a/u3/g;",
            "Le/a/k/d;",
            "Le/a/i/b0/a;",
            "Le/a/d0/a/d;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

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

    const-string v0, "resourceProvider"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManager"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actorsThreads"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberTypeLabelProvider"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignReceiver"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsProvider"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partner"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerTheme"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryFetcher"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryBuilder"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezoneHelper"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManager"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trueContextPresenterProvider"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPlayerConfigProvider"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessVideoCallerIDAnalytics"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCampaignsManager"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdSimManager"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 1
    invoke-direct {v0, v7}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object v1, v0, Le/a/d0/a/m;->i:Le/a/p5/h0;

    iput-object v2, v0, Le/a/d0/a/m;->j:Le/a/r2/f;

    iput-object v3, v0, Le/a/d0/a/m;->k:Le/a/r2/l;

    iput-object v4, v0, Le/a/d0/a/m;->l:Le/a/o5/b0;

    iput-object v5, v0, Le/a/d0/a/m;->m:Le/a/k3/h;

    iput-object v6, v0, Le/a/d0/a/m;->n:Le/a/i/f0/k/a;

    iput-object v7, v0, Le/a/d0/a/m;->o:Ls1/w/f;

    iput-object v8, v0, Le/a/d0/a/m;->p:Le/a/i/f0/d;

    iput-object v9, v0, Le/a/d0/a/m;->q:Le/a/g5/p;

    iput-object v10, v0, Le/a/d0/a/m;->r:Le/a/q2/a;

    iput-object v11, v0, Le/a/d0/a/m;->s:Le/a/p5/u;

    iput-object v12, v0, Le/a/d0/a/m;->t:Lcom/truecaller/settings/CallingSettings;

    iput-object v13, v0, Le/a/d0/a/m;->u:Le/a/o5/c2/k;

    iput-object v14, v0, Le/a/d0/a/m;->v:Le/a/o5/c2/k$c;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/d0/a/m;->w:Le/a/b0/e/f;

    iput-object v15, v0, Le/a/d0/a/m;->x:Le/a/a0/n;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/d0/a/m;->y:Le/a/a0/p;

    iput-object v2, v0, Le/a/d0/a/m;->z:Le/a/k5/a;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Le/a/d0/a/m;->A:Le/a/o/c;

    iput-object v2, v0, Le/a/d0/a/m;->B:Le/a/k/h;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Le/a/d0/a/m;->C:Le/a/r2/f;

    iput-object v2, v0, Le/a/d0/a/m;->D:Le/a/a3/a;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    iput-object v1, v0, Le/a/d0/a/m;->E:Le/a/l/p2/v0;

    iput-object v2, v0, Le/a/d0/a/m;->J:Le/a/d0/a/f;

    move-object/from16 v1, p25

    move-object/from16 v2, p26

    iput-object v1, v0, Le/a/d0/a/m;->K:Le/a/z2/a;

    iput-object v2, v0, Le/a/d0/a/m;->L:Le/a/k/c/c2;

    move-object/from16 v1, p27

    move-object/from16 v2, p28

    iput-object v1, v0, Le/a/d0/a/m;->M:Le/a/u3/g;

    iput-object v2, v0, Le/a/d0/a/m;->N:Le/a/k/d;

    move-object/from16 v1, p29

    move-object/from16 v2, p30

    iput-object v1, v0, Le/a/d0/a/m;->O:Le/a/i/b0/a;

    iput-object v2, v0, Le/a/d0/a/m;->P:Le/a/d0/a/d;

    .line 2
    sget-object v1, Le/a/d0/a/b;->b:Le/a/d0/a/b;

    iput-object v1, v0, Le/a/d0/a/m;->d:Le/a/d0/a/b;

    return-void
.end method


# virtual methods
.method public final Ij(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/d0/a/x;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    new-instance v0, Le/a/d0/a/x$b;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Le/a/d0/a/x$b;-><init>(Ljava/lang/String;Lcom/truecaller/callerid/window/InfoLineStyle;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final Jj(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/v;",
            "Ls1/w/d<",
            "-",
            "Le/a/k/a/k/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/d0/a/m$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/d0/a/m$a;

    iget v4, v3, Le/a/d0/a/m$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/d0/a/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/d0/a/m$a;

    invoke-direct {v3, v0, v2}, Le/a/d0/a/m$a;-><init>(Le/a/d0/a/m;Ls1/w/d;)V

    :goto_0
    move-object v12, v3

    iget-object v2, v12, Le/a/d0/a/m$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v12, Le/a/d0/a/m$a;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "number"

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v12, Le/a/d0/a/m$a;->i:Ljava/lang/Object;

    check-cast v1, Ls1/z/b/l;

    iget-object v4, v12, Le/a/d0/a/m$a;->h:Ljava/lang/Object;

    check-cast v4, Le/a/d0/v;

    iget-object v6, v12, Le/a/d0/a/m$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d0/a/m;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v1

    goto :goto_2

    :cond_3
    iget-object v1, v12, Le/a/d0/a/m$a;->h:Ljava/lang/Object;

    check-cast v1, Le/a/d0/v;

    iget-object v4, v12, Le/a/d0/a/m$a;->g:Ljava/lang/Object;

    check-cast v4, Le/a/d0/a/m;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v0, v12, Le/a/d0/a/m$a;->g:Ljava/lang/Object;

    iput-object v1, v12, Le/a/d0/a/m$a;->h:Ljava/lang/Object;

    iput v7, v12, Le/a/d0/a/m$a;->e:I

    invoke-virtual {v0, v1, v12}, Le/a/d0/a/m;->Lj(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    return-object v3

    :cond_5
    move-object v4, v0

    :goto_1
    check-cast v2, Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v2}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v2

    .line 5
    new-instance v7, Le/a/d0/a/m$b;

    invoke-direct {v7, v1, v2}, Le/a/d0/a/m$b;-><init>(Le/a/d0/v;Z)V

    .line 6
    iget-boolean v2, v1, Le/a/d0/v;->e:Z

    if-nez v2, :cond_6

    .line 7
    iget-object v2, v4, Le/a/d0/a/m;->L:Le/a/k/c/c2;

    iget-object v1, v1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    invoke-interface {v2, v1, v7}, Le/a/k/c/c2;->l(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Le/a/k/a/k/a$a;

    move-result-object v1

    return-object v1

    .line 8
    :cond_6
    iget-object v2, v4, Le/a/d0/a/m;->L:Le/a/k/c/c2;

    .line 9
    iget-object v9, v1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    .line 10
    iget-object v10, v1, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    invoke-static {v10, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v10

    .line 11
    sget-object v11, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->POPUP_CALLER_ID:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    iput-object v4, v12, Le/a/d0/a/m$a;->g:Ljava/lang/Object;

    iput-object v1, v12, Le/a/d0/a/m$a;->h:Ljava/lang/Object;

    iput-object v7, v12, Le/a/d0/a/m$a;->i:Ljava/lang/Object;

    iput v6, v12, Le/a/d0/a/m$a;->e:I

    .line 12
    invoke-interface {v2, v9, v10, v11, v12}, Le/a/k/c/c2;->c(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_7

    return-object v3

    :cond_7
    move-object v6, v4

    move-object v11, v7

    move-object v4, v1

    .line 13
    :goto_2
    check-cast v2, Le/a/k/a/k/a;

    if-eqz v2, :cond_9

    .line 14
    iget-object v13, v6, Le/a/d0/a/m;->N:Le/a/k/d;

    .line 15
    iget-object v1, v6, Le/a/d0/a/m;->h:Ljava/lang/Long;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_3

    :cond_8
    const-wide/16 v9, 0x0

    :goto_3
    move-wide v14, v9

    .line 16
    move-object v1, v2

    check-cast v1, Le/a/k/a/k/a$c;

    .line 17
    iget-object v1, v1, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    .line 18
    iget-object v7, v4, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v17

    .line 19
    sget-object v7, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->POPUP_CALLER_ID:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    invoke-virtual {v7}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v1

    .line 20
    invoke-interface/range {v13 .. v18}, Le/a/k/d;->e(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v2, :cond_a

    goto :goto_5

    .line 21
    :cond_a
    iget-object v1, v6, Le/a/d0/a/m;->L:Le/a/k/c/c2;

    .line 22
    iget-object v2, v4, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    .line 23
    iget-object v4, v4, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v6

    .line 24
    new-instance v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 25
    sget-object v7, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->LOOP_PARTLY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 26
    sget-object v8, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 27
    invoke-direct {v4, v7, v8}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 28
    new-instance v7, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    invoke-direct {v7, v4}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 29
    sget-object v8, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->POPUP_CALLER_ID:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v13, 0x20

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 30
    iput-object v4, v12, Le/a/d0/a/m$a;->g:Ljava/lang/Object;

    iput-object v4, v12, Le/a/d0/a/m$a;->h:Ljava/lang/Object;

    iput-object v4, v12, Le/a/d0/a/m$a;->i:Ljava/lang/Object;

    iput v5, v12, Le/a/d0/a/m$a;->e:I

    move-object v4, v1

    move-object v5, v2

    .line 31
    invoke-static/range {v4 .. v14}, Le/a/p5/s0/g;->m0(Le/a/k/c/c2;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZZLs1/z/b/l;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_b

    return-object v3

    .line 32
    :cond_b
    :goto_4
    check-cast v2, Le/a/k/a/k/a;

    :goto_5
    return-object v2
.end method

.method public final Kj(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/v;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Le/a/d0/a/x;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d0/a/m$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d0/a/m$c;

    iget v1, v0, Le/a/d0/a/m$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d0/a/m$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d0/a/m$c;

    invoke-direct {v0, p0, p2}, Le/a/d0/a/m$c;-><init>(Le/a/d0/a/m;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d0/a/m$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d0/a/m$c;->e:I

    const-string v3, "it"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Le/a/d0/a/m$c;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d0/a/m$c;->j:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iget-object v2, v0, Le/a/d0/a/m$c;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Le/a/d0/a/m$c;->h:Ljava/lang/Object;

    check-cast v4, Le/a/d0/v;

    iget-object v7, v0, Le/a/d0/a/m$c;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d0/a/m;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, v2

    goto/16 :goto_6

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_11

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x75

    .line 7
    invoke-virtual {v2, v7}, Lcom/truecaller/data/entity/Contact;->i0(I)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_4

    iget-object v7, p0, Le/a/d0/a/m;->s:Le/a/p5/u;

    invoke-interface {v7}, Le/a/p5/u;->d()Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    if-eqz v7, :cond_5

    .line 8
    new-instance v7, Le/a/d0/a/x$b;

    iget-object v9, p0, Le/a/d0/a/m;->i:Le/a/p5/h0;

    const v10, 0x7f12015e

    new-array v11, v8, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "resourceProvider.getStri\u2026ring.CallerIDOn2GMessage)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v9, v6, v5}, Le/a/d0/a/x$b;-><init>(Ljava/lang/String;Lcom/truecaller/callerid/window/InfoLineStyle;I)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_5
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 10
    new-instance v7, Le/a/d0/a/x$b;

    iget-object v9, p0, Le/a/d0/a/m;->i:Le/a/p5/h0;

    const v10, 0x7f12023b

    new-array v11, v8, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "resourceProvider.getString(R.string.CredPrivilege)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v9, v6, v5}, Le/a/d0/a/x$b;-><init>(Ljava/lang/String;Lcom/truecaller/callerid/window/InfoLineStyle;I)V

    .line 11
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Le/a/d0/a/x$b;

    iget-object v9, p0, Le/a/d0/a/m;->i:Le/a/p5/h0;

    const v10, 0x7f120572

    new-array v11, v8, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "resourceProvider.getStri\u2026string.PriorityCallTitle)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/truecaller/callerid/window/InfoLineStyle;->PRIORITY:Lcom/truecaller/callerid/window/InfoLineStyle;

    invoke-direct {v7, v9, v10}, Le/a/d0/a/x$b;-><init>(Ljava/lang/String;Lcom/truecaller/callerid/window/InfoLineStyle;)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_7
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Le/a/d0/a/x$b;

    iget-object v9, p0, Le/a/d0/a/m;->i:Le/a/p5/h0;

    const v10, 0x7f12011f

    new-array v11, v8, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "resourceProvider.getStri\u2026.string.BusinessVerified)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v9, v6, v5}, Le/a/d0/a/x$b;-><init>(Ljava/lang/String;Lcom/truecaller/callerid/window/InfoLineStyle;I)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_8
    :goto_2
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->f0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Le/a/d0/a/m;->Ij(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_3

    :cond_9
    move v9, v8

    goto :goto_4

    :cond_a
    :goto_3
    move v9, v4

    :goto_4
    if-nez v9, :cond_b

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    move v8, v4

    .line 16
    :cond_c
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_5

    :cond_d
    move-object v7, v6

    :goto_5
    if-eqz v7, :cond_e

    .line 18
    new-instance v8, Le/a/d0/a/x$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v6, v5}, Le/a/d0/a/x$b;-><init>(Ljava/lang/String;Lcom/truecaller/callerid/window/InfoLineStyle;I)V

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_e
    iput-object p0, v0, Le/a/d0/a/m$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d0/a/m$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d0/a/m$c;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d0/a/m$c;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/d0/a/m$c;->e:I

    invoke-virtual {p0, p1, p2, v0}, Le/a/d0/a/m;->Nj(Le/a/d0/v;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_f

    return-object v1

    :cond_f
    move-object v7, p0

    move-object v4, p1

    move-object p1, v2

    .line 20
    :goto_6
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->C()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1, p2}, Le/a/d0/a/m;->Ij(Ljava/lang/String;Ljava/util/List;)V

    .line 21
    iput-object p2, v0, Le/a/d0/a/m$c;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/d0/a/m$c;->h:Ljava/lang/Object;

    iput-object v6, v0, Le/a/d0/a/m$c;->i:Ljava/lang/Object;

    iput-object v6, v0, Le/a/d0/a/m$c;->j:Ljava/lang/Object;

    iput v5, v0, Le/a/d0/a/m$c;->e:I

    invoke-virtual {v7, v4, p2, v0}, Le/a/d0/a/m;->Mj(Le/a/d0/v;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    return-object v1

    :cond_10
    move-object p1, p2

    :goto_7
    move-object p2, p1

    :cond_11
    return-object p2
.end method

.method public final synthetic Lj(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/v;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/blocking/FilterMatch;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d0/a/m$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d0/a/m$d;

    iget v1, v0, Le/a/d0/a/m$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d0/a/m$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d0/a/m$d;

    invoke-direct {v0, p0, p2}, Le/a/d0/a/m$d;-><init>(Le/a/d0/a/m;Ls1/w/d;)V

    :goto_0
    move-object v5, v0

    iget-object p2, v5, Le/a/d0/a/m$d;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v5, Le/a/d0/a/m$d;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v5, Le/a/d0/a/m$d;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/m;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d0/a/m;->g:Lcom/truecaller/blocking/FilterMatch;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Le/a/d0/a/m;->D:Le/a/a3/a;

    iget-object p1, p1, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string p2, "callState.number"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    iput-object p0, v5, Le/a/d0/a/m$d;->g:Ljava/lang/Object;

    iput v2, v5, Le/a/d0/a/m$d;->e:I

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Le/a/n/g0;->x(Le/a/a3/a;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/truecaller/blocking/FilterMatch;

    .line 6
    iput-object p2, p1, Le/a/d0/a/m;->g:Lcom/truecaller/blocking/FilterMatch;

    :goto_2
    return-object p2
.end method

.method public final synthetic Mj(Le/a/d0/v;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/v;",
            "Ljava/util/List<",
            "Le/a/d0/a/x;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p3, Le/a/d0/a/m$e;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/d0/a/m$e;

    iget v2, v1, Le/a/d0/a/m$e;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d0/a/m$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d0/a/m$e;

    invoke-direct {v1, p0, p3}, Le/a/d0/a/m$e;-><init>(Le/a/d0/a/m;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/d0/a/m$e;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d0/a/m$e;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/d0/a/m$e;->j:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v1, Le/a/d0/a/m$e;->i:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/data/entity/Contact;

    iget-object v2, v1, Le/a/d0/a/m$e;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v1, v1, Le/a/d0/a/m$e;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d0/a/m;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_5

    const-string p3, "callState.contact ?: return"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->i()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 6
    iget-object v3, p0, Le/a/d0/a/m;->z:Le/a/k5/a;

    iput-object p0, v1, Le/a/d0/a/m$e;->g:Ljava/lang/Object;

    iput-object p2, v1, Le/a/d0/a/m$e;->h:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d0/a/m$e;->i:Ljava/lang/Object;

    iput-object p3, v1, Le/a/d0/a/m$e;->j:Ljava/lang/Object;

    iput v4, v1, Le/a/d0/a/m$e;->e:I

    invoke-interface {v3, p1, v1}, Le/a/k5/a;->a(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_3

    return-object v2

    :cond_3
    move-object v2, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v1

    move-object v1, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 7
    iget-object p3, v1, Le/a/d0/a/m;->z:Le/a/k5/a;

    invoke-interface {p3, p2}, Le/a/k5/a;->b(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 8
    :goto_2
    new-instance p3, Le/a/d0/a/x$a;

    invoke-direct {p3, p2, p1}, Le/a/d0/a/x$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final Nj(Le/a/d0/v;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/v;",
            "Ljava/util/List<",
            "Le/a/d0/a/x;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Ls1/s;->a:Ls1/s;

    instance-of v4, v2, Le/a/d0/a/m$f;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/d0/a/m$f;

    iget v5, v4, Le/a/d0/a/m$f;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/d0/a/m$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/d0/a/m$f;

    invoke-direct {v4, v0, v2}, Le/a/d0/a/m$f;-><init>(Le/a/d0/a/m;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/d0/a/m$f;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/d0/a/m$f;->e:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v1, v4, Le/a/d0/a/m$f;->j:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    iget-object v5, v4, Le/a/d0/a/m$f;->i:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v4, Le/a/d0/a/m$f;->h:Ljava/lang/Object;

    check-cast v6, Le/a/d0/v;

    iget-object v4, v4, Le/a/d0/a/m$f;->g:Ljava/lang/Object;

    check-cast v4, Le/a/d0/a/m;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/d0/a/m$f;->j:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    iget-object v6, v4, Le/a/d0/a/m$f;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v9, v4, Le/a/d0/a/m$f;->h:Ljava/lang/Object;

    check-cast v9, Le/a/d0/v;

    iget-object v10, v4, Le/a/d0/a/m$f;->g:Ljava/lang/Object;

    check-cast v10, Le/a/d0/a/m;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v9

    move-object/from16 v9, v16

    goto :goto_1

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_d

    const-string v6, "callState.contact ?: return"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v6

    if-nez v6, :cond_4

    return-object v3

    .line 6
    :cond_4
    iput-object v0, v4, Le/a/d0/a/m$f;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d0/a/m$f;->h:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v4, Le/a/d0/a/m$f;->i:Ljava/lang/Object;

    iput-object v2, v4, Le/a/d0/a/m$f;->j:Ljava/lang/Object;

    iput v8, v4, Le/a/d0/a/m$f;->e:I

    invoke-virtual {v0, v1, v4}, Le/a/d0/a/m;->Lj(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_5

    return-object v5

    :cond_5
    move-object v10, v0

    :goto_1
    check-cast v9, Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v9}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result v9

    if-eqz v9, :cond_6

    return-object v3

    .line 7
    :cond_6
    iget-object v9, v10, Le/a/d0/a/m;->x:Le/a/a0/n;

    iput-object v10, v4, Le/a/d0/a/m$f;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d0/a/m$f;->h:Ljava/lang/Object;

    iput-object v6, v4, Le/a/d0/a/m$f;->i:Ljava/lang/Object;

    iput-object v2, v4, Le/a/d0/a/m$f;->j:Ljava/lang/Object;

    iput v7, v4, Le/a/d0/a/m$f;->e:I

    invoke-static {v9, v2, v4}, Le/a/l4/k;->Y(Le/a/a0/n;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_7

    return-object v5

    :cond_7
    move-object v5, v6

    move-object v6, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v10

    .line 8
    :goto_2
    check-cast v2, Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 9
    iget-object v9, v4, Le/a/d0/a/m;->y:Le/a/a0/p;

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v15, 0x0

    move-object v11, v2

    invoke-static/range {v9 .. v15}, Le/a/l4/k;->s(Le/a/a0/p;ILcom/truecaller/data/entity/SpamCategoryModel;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 11
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :cond_9
    :goto_3
    if-eqz v8, :cond_a

    goto :goto_4

    .line 12
    :cond_a
    new-instance v8, Le/a/d0/a/x$c;

    invoke-direct {v8, v7}, Le/a/d0/a/x$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    if-eqz v2, :cond_b

    .line 13
    iget-object v5, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/d0/a/l;

    if-eqz v5, :cond_b

    invoke-interface {v5, v2}, Le/a/d0/a/l;->setSpamCategoryIcon(Lcom/truecaller/data/entity/SpamCategoryModel;)V

    .line 14
    :cond_b
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v6}, Le/a/d0/v;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 15
    :cond_c
    iget-object v1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d0/a/l;

    if-eqz v1, :cond_d

    const v2, 0x7f0601e7

    const v4, 0x7f0800e0

    invoke-interface {v1, v2, v4}, Le/a/d0/a/l;->c5(II)V

    :cond_d
    return-object v3
.end method

.method public final Oj(Le/a/d0/v;)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d0/a/m$g;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d0/a/m$g;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/d0/a/l;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/d0/a/t;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/d0/a/t;-><init>(Le/a/d0/a/m;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
