.class public final Le/a/w4/s/g0;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/w4/s/e0;
.implements Le/a/w4/s/p0$a;
.implements Le/a/w4/r/c;
.implements Le/a/k3/j/g$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/w4/s/h0;",
        ">;",
        "Le/a/w4/s/e0;",
        "Le/a/w4/s/p0$a;",
        "Le/a/w4/r/c;",
        "Le/a/k3/j/g$a;"
    }
.end annotation


# instance fields
.field public final A:Le/a/f4/g/r;

.field public final B:Le/a/k3/j/g;

.field public final C:Le/a/p5/h0;

.field public final D:I

.field public final E:Le/a/w4/t/a/e;

.field public final J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

.field public final K:Le/a/l4/c;

.field public final L:Landroid/os/Handler;

.field public final M:Le/a/o5/z;

.field public final N:Le/a/q2/a;

.field public final O:Le/a/a/i0;

.field public final P:Le/a/w4/s/p0;

.field public final Q:Le/a/h0/m;

.field public final R:Le/a/w4/r/a;

.field public final S:Le/a/o5/c2/k;

.field public final T:Le/a/z4/d;

.field public final U:Z

.field public final V:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final W:Le/a/o5/b0;

.field public final X:Le/a/k3/l/f;

.field public final Y:Le/a/a/c/j6;

.field public final Z:Le/a/g5/p;

.field public d:Le/a/w4/s/s0;

.field public e:Landroid/os/CancellationSignal;

.field public f:Z

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/w4/s/y;",
            ">;"
        }
    .end annotation
.end field

.field public final g0:Ljava/lang/String;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public final h0:Le/a/z2/a;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i0:Le/a/a0/n;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final j0:Le/a/a0/p;

.field public k:Ljava/lang/String;

.field public final k0:Le/a/a/c/y6;

.field public l:Ljava/lang/String;

.field public final l0:Le/a/b0/q/z;

.field public m:Ljava/lang/String;

.field public final m0:Le/a/a/i1/b;

.field public n:Lcom/truecaller/common/network/country/CountryListDto$a;

.field public final n0:Z

.field public o:Lcom/truecaller/common/network/country/CountryListDto$a;

.field public final o0:Le/a/a0/v;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lcom/truecaller/common/network/country/CountryListDto$a;

.field public s:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Le/a/w4/s/s;

.field public final y:Le/a/p5/g;

.field public final z:Le/a/o5/f0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/g;Le/a/o5/f0;Le/a/f4/g/r;Le/a/k3/j/g;Le/a/p5/h0;ILe/a/w4/t/a/e;Lcom/truecaller/search/global/CompositeAdapterDelegate;Le/a/l4/c;Landroid/os/Handler;Le/a/o5/z;Le/a/q2/a;Le/a/a/i0;Le/a/w4/s/p0;Le/a/h0/m;Le/a/w4/r/a;Le/a/o5/c2/k;Le/a/z4/d;ZLe/a/r2/f;Le/a/o5/b0;Le/a/k3/l/f;Le/a/a/c/j6;Le/a/g5/p;Ljava/lang/String;Le/a/z2/a;Le/a/a0/n;Le/a/a0/p;Le/a/a/c/y6;Le/a/b0/q/z;Le/a/a/i1/b;ZLe/a/a0/v;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Ljavax/inject/Named;
            value = "number_of_items"
        .end annotation
    .end param
    .param p10    # Le/a/l4/c;
        .annotation runtime Ljavax/inject/Named;
            value = "global_search_availability_manager"
        .end annotation
    .end param
    .param p20    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "is_scanner_enabled"
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "ad_unit_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/p5/g;",
            "Le/a/o5/f0;",
            "Le/a/f4/g/r;",
            "Le/a/k3/j/g;",
            "Le/a/p5/h0;",
            "I",
            "Le/a/w4/t/a/e;",
            "Lcom/truecaller/search/global/CompositeAdapterDelegate;",
            "Le/a/l4/c;",
            "Landroid/os/Handler;",
            "Le/a/o5/z;",
            "Le/a/q2/a;",
            "Le/a/a/i0;",
            "Le/a/w4/s/p0;",
            "Le/a/h0/m;",
            "Le/a/w4/r/a;",
            "Le/a/o5/c2/k;",
            "Le/a/z4/d;",
            "Z",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/o5/b0;",
            "Le/a/k3/l/f;",
            "Le/a/a/c/j6;",
            "Le/a/g5/p;",
            "Ljava/lang/String;",
            "Le/a/z2/a;",
            "Le/a/a0/n;",
            "Le/a/a0/p;",
            "Le/a/a/c/y6;",
            "Le/a/b0/q/z;",
            "Le/a/a/i1/b;",
            "Z",
            "Le/a/a0/v;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v0, p18

    const-string v0, "uiContext"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localContactsSearcher"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchMatcher"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterDelegate"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryManager"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "populateFilterMatchHelper"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsHelper"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerInfo"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyMessagesResourceProvider"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitId"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryFetcher"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryBuilder"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageDetailsProvider"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamDetailsBuilder"

    move-object/from16 v15, p34

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p18

    iput-object v1, v0, Le/a/w4/s/g0;->y:Le/a/p5/g;

    iput-object v2, v0, Le/a/w4/s/g0;->z:Le/a/o5/f0;

    iput-object v3, v0, Le/a/w4/s/g0;->A:Le/a/f4/g/r;

    iput-object v4, v0, Le/a/w4/s/g0;->B:Le/a/k3/j/g;

    iput-object v5, v0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    move/from16 v1, p7

    iput v1, v0, Le/a/w4/s/g0;->D:I

    iput-object v6, v0, Le/a/w4/s/g0;->E:Le/a/w4/t/a/e;

    iput-object v7, v0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    iput-object v8, v0, Le/a/w4/s/g0;->K:Le/a/l4/c;

    iput-object v9, v0, Le/a/w4/s/g0;->L:Landroid/os/Handler;

    iput-object v10, v0, Le/a/w4/s/g0;->M:Le/a/o5/z;

    iput-object v11, v0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    iput-object v12, v0, Le/a/w4/s/g0;->O:Le/a/a/i0;

    iput-object v13, v0, Le/a/w4/s/g0;->P:Le/a/w4/s/p0;

    iput-object v14, v0, Le/a/w4/s/g0;->Q:Le/a/h0/m;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/w4/s/g0;->R:Le/a/w4/r/a;

    iput-object v15, v0, Le/a/w4/s/g0;->S:Le/a/o5/c2/k;

    move-object/from16 v1, p19

    move-object/from16 v2, p21

    iput-object v1, v0, Le/a/w4/s/g0;->T:Le/a/z4/d;

    move/from16 v1, p20

    iput-boolean v1, v0, Le/a/w4/s/g0;->U:Z

    iput-object v2, v0, Le/a/w4/s/g0;->V:Le/a/r2/f;

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    iput-object v1, v0, Le/a/w4/s/g0;->W:Le/a/o5/b0;

    iput-object v2, v0, Le/a/w4/s/g0;->X:Le/a/k3/l/f;

    move-object/from16 v1, p24

    move-object/from16 v2, p25

    iput-object v1, v0, Le/a/w4/s/g0;->Y:Le/a/a/c/j6;

    iput-object v2, v0, Le/a/w4/s/g0;->Z:Le/a/g5/p;

    move-object/from16 v1, p26

    move-object/from16 v2, p27

    iput-object v1, v0, Le/a/w4/s/g0;->g0:Ljava/lang/String;

    iput-object v2, v0, Le/a/w4/s/g0;->h0:Le/a/z2/a;

    move-object/from16 v1, p28

    move-object/from16 v2, p29

    iput-object v1, v0, Le/a/w4/s/g0;->i0:Le/a/a0/n;

    iput-object v2, v0, Le/a/w4/s/g0;->j0:Le/a/a0/p;

    move-object/from16 v1, p30

    move-object/from16 v2, p31

    iput-object v1, v0, Le/a/w4/s/g0;->k0:Le/a/a/c/y6;

    iput-object v2, v0, Le/a/w4/s/g0;->l0:Le/a/b0/q/z;

    move-object/from16 v1, p32

    move-object/from16 v2, p34

    iput-object v1, v0, Le/a/w4/s/g0;->m0:Le/a/a/i1/b;

    move/from16 v1, p33

    iput-boolean v1, v0, Le/a/w4/s/g0;->n0:Z

    iput-object v2, v0, Le/a/w4/s/g0;->o0:Le/a/a0/v;

    .line 2
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, v0, Le/a/w4/s/g0;->e:Landroid/os/CancellationSignal;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/a/w4/s/g0;->g:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/a/w4/s/g0;->h:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/a/w4/s/g0;->i:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le/a/w4/s/g0;->j:Ljava/util/List;

    const-string v1, ""

    .line 7
    iput-object v1, v0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Le/a/w4/s/g0;->l:Ljava/lang/String;

    .line 9
    invoke-interface/range {p9 .. p9}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->f()Le/a/w4/s/s;

    move-result-object v1

    const-string v2, "adapterDelegate.main()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    return-void
.end method

.method public static final Ij(Le/a/w4/s/g0;Le/a/f4/g/t;)Le/a/f4/g/t;
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Contact;

    .line 4
    iget-object v3, p0, Le/a/w4/s/g0;->i0:Le/a/a0/n;

    const-string v4, "each"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Le/a/a0/n;->d(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, v3}, Le/a/m0/a1$k;->M0(Lcom/truecaller/data/entity/Contact;Ljava/util/List;)Lcom/truecaller/data/entity/Contact;

    :goto_1
    const-string v3, "if (categories.isEmpty()\u2026lse each.join(categories)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Le/a/f4/g/t;

    .line 7
    iget v5, p1, Le/a/f4/g/t;->g:I

    .line 8
    iget-object v6, p1, Le/a/f4/g/t;->a:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 10
    new-instance v8, Lcom/truecaller/data/dto/ContactDto$Pagination;

    .line 11
    iget-object v0, p1, Le/a/f4/g/t;->d:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Le/a/f4/g/t;->e:Ljava/lang/String;

    .line 13
    iget-object v2, p1, Le/a/f4/g/t;->f:Ljava/lang/String;

    .line 14
    invoke-direct {v8, v0, v1, v2}, Lcom/truecaller/data/dto/ContactDto$Pagination;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v9, p1, Le/a/f4/g/t;->b:Le/a/k3/k/a;

    move-object v4, p0

    .line 16
    invoke-direct/range {v4 .. v9}, Le/a/f4/g/t;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Pagination;Le/a/k3/k/a;)V

    return-object p0
.end method


# virtual methods
.method public Aa(Ljava/lang/Throwable;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Le/a/w4/s/g0;->s:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/w4/s/g0;->p:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    .line 4
    iput-boolean v0, p1, Le/a/w4/s/w;->h:Z

    .line 5
    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->Rj(Z)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 6
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    .line 7
    iput-boolean v0, p1, Le/a/w4/s/w;->h:Z

    .line 8
    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->Rj(Z)V

    .line 9
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Qj(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public Dg(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/w4/s/y;",
            ">;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Mj(Ljava/util/List;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/w4/s/r0;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, p1, p2}, Le/a/w4/s/w;->a(Le/a/w4/s/r0;I)V

    return-void
.end method

.method public Hf(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "Call"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/w4/s/h0;->Uz(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final Jj(II)Lcom/truecaller/data/entity/Contact;
    .locals 2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Adapter position was -1 nesting order: "

    .line 2
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->k()Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "showing all results ? "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean v1, p0, Le/a/w4/s/g0;->f:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " main adapter: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->f()Le/a/w4/s/s;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 5
    invoke-static {p1, p2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-object v0

    :cond_0
    const v1, 0x7f0a08a2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    check-cast p1, Le/a/w4/s/w;

    invoke-virtual {p1, p2}, Le/a/w4/s/w;->d(I)I

    move-result p1

    .line 7
    iget-object p2, p0, Le/a/w4/s/g0;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/w4/s/y;

    .line 8
    iget-object p1, p1, Le/a/w4/s/y;->a:Lcom/truecaller/data/entity/Contact;

    return-object p1

    :cond_1
    const v1, 0x7f0a08a9

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Le/a/w4/s/g0;->j:Ljava/util/List;

    iget-object v0, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, p2}, Le/a/w4/s/w;->d(I)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public Kb()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0}, Le/a/w4/s/w;->f()I

    move-result v0

    return v0
.end method

.method public final Kj(Ljava/lang/String;Le/m/e/t;)V
    .locals 2

    const-string v0, "eventType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventContent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->V:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-static {}, Le/a/l5/a/l0;->a()Le/a/l5/a/l0$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Le/a/l5/a/l0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l0$b;

    invoke-virtual {p2}, Le/m/e/q;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l0$b;

    invoke-virtual {v1}, Le/a/l5/a/l0$b;->a()Le/a/l5/a/l0;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final Lj(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->TRUECALLER:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Le/a/w4/s/s0;->e0()V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/truecaller/details_view/analytics/SourceType;->SearchResult:Lcom/truecaller/details_view/analytics/SourceType;

    invoke-interface {v0, p1, v2}, Le/a/w4/s/h0;->X9(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/truecaller/details_view/analytics/SourceType;->SearchResult:Lcom/truecaller/details_view/analytics/SourceType;

    invoke-interface {v0, p1, v2}, Le/a/w4/s/h0;->fz(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;)V

    .line 7
    :cond_3
    :goto_1
    iget p1, p1, Lcom/truecaller/data/entity/Contact;->z:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 8
    sget-object p2, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->CLOUD_CONTACT:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    :cond_4
    const-string p1, "action"

    const-string v0, "details"

    const-string v2, "subAction"

    const-string v3, "context"

    const-string v4, "searchResults"

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-static {v1}, Le/a/p5/g0;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    iget-object v1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    .line 11
    sget-object v5, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->NAME_CLICKED:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    .line 12
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v6, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v6, v0, v5, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {v1, v6}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 17
    :cond_5
    iget-object v1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    .line 18
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p1, v0, p2, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-interface {v1, p1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public M8(Le/a/w4/s/u;ILjava/lang/String;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->R:Le/a/w4/r/a;

    invoke-interface {v0, p3, p2}, Le/a/w4/r/a;->c(Ljava/lang/String;I)Le/a/i/f0/m/d;

    move-result-object p2

    .line 2
    iget-object p3, p1, Le/a/w4/s/u;->d:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p2, :cond_1

    .line 3
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 4
    instance-of v0, p3, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/content/ContextWrapper;

    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    :cond_0
    check-cast p3, Landroid/app/Activity;

    .line 5
    sget-object v0, Lcom/truecaller/ads/AdLayoutTypeX;->SMALL:Lcom/truecaller/ads/AdLayoutTypeX;

    invoke-static {p3, v0, p2}, Le/m/d/y/n;->x(Landroid/app/Activity;Le/a/i/g;Le/a/i/f0/m/d;)Landroid/view/View;

    move-result-object p2

    .line 6
    iget-object p3, p1, Le/a/w4/s/u;->d:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object p1, p1, Le/a/w4/s/u;->d:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p1, Le/a/w4/s/u;->d:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final Mj(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/w4/s/y;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    iget-object v0, p0, Le/a/w4/s/g0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->b(I)V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/w4/s/h0;->l2()V

    :cond_1
    return-void
.end method

.method public final Nj(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    iget-object v0, p0, Le/a/w4/s/g0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->l(I)V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/w4/s/h0;->l2()V

    :cond_1
    return-void
.end method

.method public O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/w4/s/h0;->nd()V

    :cond_0
    return-void
.end method

.method public Of(Ljava/lang/String;)V
    .locals 5

    const-string v0, "token"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/w4/s/h0;->wf(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "scanType"

    const-string v1, "multiScan"

    .line 4
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Le/a/q2/g$b$a;

    const-string v3, "SEARCH_scanNumber"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1, v4}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 6
    iget-object p1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    const-string v4, "analyticsEvent"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 7
    new-instance p1, Le/m/e/t;

    invoke-direct {p1}, Le/m/e/t;-><init>()V

    .line 8
    invoke-virtual {p1, v0, v1}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v3, p1}, Le/a/w4/s/g0;->Kj(Ljava/lang/String;Le/m/e/t;)V

    :cond_1
    return-void
.end method

.method public final Oj(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    iget-object v0, p0, Le/a/w4/s/g0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->c(I)V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/w4/s/h0;->l2()V

    :cond_1
    return-void
.end method

.method public Pi(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->l:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-nez v3, :cond_5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_5

    .line 4
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Filter_Action"

    const-string v2, "AddressField"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Le/a/q2/g$b$a;

    const-string v2, "SEARCHVIEW_Filtered"

    invoke-direct {v1, v2, v4, v0, v4}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 7
    iget-object v0, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    const-string v2, "event"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 8
    :cond_5
    iput-object p1, p0, Le/a/w4/s/g0;->l:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 10
    iput-object v4, p0, Le/a/w4/s/g0;->m:Ljava/lang/String;

    .line 11
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Qj(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Le/a/w4/s/g0;->Yj()V

    :cond_6
    return-void
.end method

.method public final Pj(Le/a/w4/s/r0$a;Le/a/w4/s/y;Lcom/truecaller/data/entity/Contact;ZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    move v1, v13

    .line 1
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v4

    const-string v2, "contact.displayNameOrNumber"

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v4}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "GUIUtils.bidiFormat(originalTitle)"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Le/a/w4/s/g0;->Z:Le/a/g5/p;

    invoke-interface {v2, v11}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v2

    .line 4
    invoke-interface {v9, v5}, Le/a/h/h0;->setTitle(Ljava/lang/String;)V

    .line 5
    iget-object v3, v0, Le/a/w4/s/g0;->h0:Le/a/z2/a;

    invoke-interface {v3, v11}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v9, v12}, Le/a/h/j0;->i2(Z)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v0, Le/a/w4/s/g0;->h0:Le/a/z2/a;

    invoke-interface {v3, v11}, Le/a/z2/a;->a(Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    invoke-interface {v9, v3}, Le/a/h/i0;->K(Z)V

    .line 8
    :goto_1
    invoke-interface/range {p1 .. p1}, Le/a/h/q;->p0()V

    const/4 v14, 0x0

    if-eqz p4, :cond_4

    if-eqz v10, :cond_2

    .line 9
    iget-object v1, v10, Le/a/w4/s/y;->c:Lcom/truecaller/blocking/FilterMatch;

    goto :goto_2

    :cond_2
    move-object v1, v14

    :goto_2
    if-eqz v1, :cond_3

    .line 10
    iget v1, v1, Lcom/truecaller/blocking/FilterMatch;->f:I

    goto :goto_3

    :cond_3
    move v1, v13

    .line 11
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 12
    iget-object v2, v0, Le/a/w4/s/g0;->o0:Le/a/a0/v;

    invoke-interface {v2, v11, v1}, Le/a/a0/v;->a(Lcom/truecaller/data/entity/Contact;I)Le/a/a0/u;

    move-result-object v1

    .line 13
    iget-object v2, v1, Le/a/a0/u;->a:Ljava/lang/String;

    .line 14
    iget-object v1, v1, Le/a/a0/u;->b:Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 15
    invoke-interface {v9, v2, v14, v1}, Le/a/h/f0;->Z3(Ljava/lang/String;Ljava/lang/Integer;Lcom/truecaller/data/entity/SpamCategoryModel;)V

    goto/16 :goto_7

    :cond_4
    if-eqz p5, :cond_5

    .line 16
    iget-object v1, v0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    new-array v2, v13, [Ljava/lang/Object;

    const v3, 0x7f120036

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026ring.BlockCallerIDMySpam)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080711

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2, v14}, Le/a/h/f0;->Z3(Ljava/lang/String;Ljava/lang/Integer;Lcom/truecaller/data/entity/SpamCategoryModel;)V

    goto/16 :goto_7

    :cond_5
    if-eqz v2, :cond_6

    .line 18
    invoke-interface {v9, v2}, Le/a/w4/s/r0$a;->M1(Le/a/b0/p/c;)V

    goto :goto_7

    :cond_6
    if-eqz v1, :cond_a

    .line 19
    iget-object v2, v0, Le/a/w4/s/g0;->E:Le/a/w4/t/a/e;

    iget-object v3, v0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Le/a/n/g0;->X(Le/a/h/g0;Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Address;->getDisplayableAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v14

    :goto_4
    invoke-interface {v9, v1}, Le/a/h/r;->H2(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    if-eqz v10, :cond_9

    .line 22
    iget-object v1, v10, Le/a/w4/s/y;->b:Ljava/lang/String;

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    const-string v1, ""

    :goto_5
    move-object v4, v1

    .line 23
    invoke-static {v4}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "GUIUtils.bidiFormat(originalDetails)"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {v9, v5}, Le/a/h/r;->H2(Ljava/lang/String;)V

    .line 25
    iget-object v2, v0, Le/a/w4/s/g0;->E:Le/a/w4/t/a/e;

    iget-object v3, v0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Le/a/n/g0;->W(Le/a/h/p;Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    goto :goto_7

    .line 26
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 27
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Address;->getDisplayableAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    move-object v1, v14

    :goto_6
    invoke-interface {v9, v1}, Le/a/h/r;->H2(Ljava/lang/String;)V

    .line 28
    iget-object v2, v0, Le/a/w4/s/g0;->E:Le/a/w4/t/a/e;

    iget-object v3, v0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Le/a/n/g0;->X(Le/a/h/g0;Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    :goto_7
    if-nez p4, :cond_d

    if-eqz p5, :cond_c

    goto :goto_8

    :cond_c
    move v12, v13

    :cond_d
    :goto_8
    const/4 v1, 0x6

    .line 29
    invoke-static {v11, v12, v13, v14, v1}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    invoke-interface {v9, v1}, Le/a/w4/s/r0$a;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    const-string v1, "$this$getAvailabilityIdentifier"

    .line 30
    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v14

    .line 32
    :cond_e
    invoke-interface {v9, v14}, Le/a/w4/s/r0$a;->j(Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Le/a/w4/s/g0;->n0:Z

    if-nez v1, :cond_f

    .line 34
    invoke-interface {v9, v11}, Le/a/w4/s/r0$a;->I4(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_9

    .line 35
    :cond_f
    invoke-interface/range {p1 .. p1}, Le/a/w4/s/r0$a;->b2()V

    :goto_9
    return-void
.end method

.method public final Qj(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    iget-object v0, p0, Le/a/w4/s/g0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->i(I)V

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/w4/s/h0;->l2()V

    :cond_1
    return-void
.end method

.method public Rf()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_1

    iget-object v2, p0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v3, 0x7f120611

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/w4/s/h0;->We(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/w4/s/s0;->e0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Rj(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/w4/s/g0;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Le/a/w4/s/g0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object v0

    check-cast v0, Le/a/w4/s/w;

    .line 3
    iput-boolean p1, v0, Le/a/w4/s/w;->e:Z

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/w4/s/h0;->l2()V

    :cond_1
    return-void
.end method

.method public final Sj(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/w4/s/g0;->f:Z

    .line 4
    iget-object v2, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2}, Le/a/w4/s/s0;->e0()V

    .line 6
    invoke-interface {v2, v0}, Le/a/w4/s/s0;->l7(Z)V

    .line 7
    invoke-interface {v2, v1}, Le/a/w4/s/s0;->g7(Z)V

    .line 8
    iget-object v3, p0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v4, 0x7f120bdf

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/w4/s/s0;->X4(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v3, p0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v4, 0x7f120bde

    new-array v0, v0, [Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v3, p1, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {v3, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Le/a/w4/s/s0;->r7(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/w4/s/h0;->pA()V

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/w4/s/h0;->l2()V

    :cond_2
    return-void
.end method

.method public T1()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/w4/s/s0;->t7()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Le/a/w4/s/s0;->Y4(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Le/a/w4/s/s0;->W4(Z)V

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "Selected"

    goto :goto_0

    :cond_3
    const-string v0, "Deselected"

    .line 6
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Location_Action"

    .line 7
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Le/a/q2/g$b$a;

    const-string v2, "SEARCHVIEW_Location"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 9
    iget-object v1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    const-string v2, "analyticsEvent"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public final Tj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/w4/s/h0;->Ke(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/w4/s/h0;->Qz(Z)V

    :cond_1
    return-void
.end method

.method public U6()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/w4/s/s0;->e0()V

    :cond_0
    return-void
.end method

.method public final Uj(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->p:Ljava/lang/String;

    iget-object v1, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/w4/s/g0;->q:Ljava/lang/String;

    iget-object v1, p0, Le/a/w4/s/g0;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/w4/s/g0;->r:Lcom/truecaller/common/network/country/CountryListDto$a;

    iget-object v1, p0, Le/a/w4/s/g0;->o:Lcom/truecaller/common/network/country/CountryListDto$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    iput-object v0, p0, Le/a/w4/s/g0;->p:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/w4/s/g0;->l:Ljava/lang/String;

    iput-object v0, p0, Le/a/w4/s/g0;->q:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Le/a/w4/s/g0;->o:Lcom/truecaller/common/network/country/CountryListDto$a;

    iput-object v0, p0, Le/a/w4/s/g0;->r:Lcom/truecaller/common/network/country/CountryListDto$a;

    :cond_2
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/a/w4/s/g0;->m:Ljava/lang/String;

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    .line 7
    iget-object v2, p0, Le/a/w4/s/g0;->l0:Le/a/b0/q/z;

    iget-object v3, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-interface {v2, v3}, Le/a/b0/q/z;->g(Ljava/lang/String;)Z

    move-result v2

    .line 8
    iget-object v3, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Le/a/p5/g0;->H(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v4

    .line 9
    :cond_4
    :goto_0
    iget-object p2, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_CTGM:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_CGMT:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    :goto_1
    invoke-interface {p2, v2}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->g(Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;)V

    if-eqz v3, :cond_7

    .line 10
    iget-object p2, p0, Le/a/w4/s/g0;->A:Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "UUID.randomUUID()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "globalSearch"

    invoke-interface {p2, v2, v3}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object p2

    .line 11
    iput-boolean v1, p2, Le/a/f4/g/p;->g:Z

    .line 12
    iput-boolean v4, p2, Le/a/f4/g/p;->h:Z

    .line 13
    iput-boolean v1, p2, Le/a/f4/g/p;->i:Z

    .line 14
    iget-object v2, p0, Le/a/w4/s/g0;->l:Ljava/lang/String;

    .line 15
    iput-object v2, p2, Le/a/f4/g/p;->r:Ljava/lang/String;

    .line 16
    iget-object v2, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    .line 17
    iput-object v2, p2, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 18
    iput-object p1, p2, Le/a/f4/g/p;->s:Ljava/lang/String;

    const/4 p1, 0x4

    .line 19
    iput p1, p2, Le/a/f4/g/p;->o:I

    .line 20
    iget-object p1, p0, Le/a/w4/s/g0;->o:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object p1, v0

    :goto_2
    invoke-virtual {p2, p1}, Le/a/f4/g/p;->c(Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object p1

    .line 21
    new-instance p2, Le/a/w4/s/g0$d;

    invoke-direct {p2, p0}, Le/a/w4/s/g0$d;-><init>(Le/a/w4/s/g0;)V

    .line 22
    iput-object p2, p1, Le/a/f4/g/p;->n:Le/a/f4/g/p$b;

    .line 23
    invoke-virtual {p1, v0, v1, v1, p0}, Le/a/f4/g/p;->f(Le/a/j4/a/d;ZZLe/a/f4/g/p$c;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/s/g0;->s:Landroid/os/AsyncTask;

    .line 24
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    .line 25
    iput-boolean v4, p1, Le/a/w4/s/w;->g:Z

    .line 26
    invoke-virtual {p0, v1}, Le/a/w4/s/g0;->Rj(Z)V

    goto :goto_3

    .line 27
    :cond_7
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    .line 28
    iput-boolean v1, p1, Le/a/w4/s/w;->g:Z

    .line 29
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    .line 30
    iput-boolean v4, p1, Le/a/w4/s/w;->h:Z

    .line 31
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    .line 32
    iput-boolean v4, p1, Le/a/w4/s/w;->e:Z

    .line 33
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Qj(Ljava/util/List;)V

    .line 34
    iput-object v0, p0, Le/a/w4/s/g0;->p:Ljava/lang/String;

    :goto_3
    return-void
.end method

.method public V6(Le/a/w4/s/r0$a;I)Z
    .locals 6

    const-string v0, "searchResultView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/truecaller/data/entity/Contact;

    .line 2
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Le/a/w4/s/g0;->Pj(Le/a/w4/s/r0$a;Le/a/w4/s/y;Lcom/truecaller/data/entity/Contact;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public final Vj(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le/a/w4/s/g0;->M:Le/a/o5/z;

    iget-object v4, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-interface {v0, v4}, Le/a/o5/z;->e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0, v2}, Le/a/w4/s/g0;->Zj(Lcom/truecaller/common/network/country/CountryListDto$a;Z)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->S:Le/a/o5/c2/k;

    invoke-virtual {v0}, Le/a/o5/c2/k;->e()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/w4/s/g0;->s:Landroid/os/AsyncTask;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    :cond_3
    iput-object v3, p0, Le/a/w4/s/g0;->s:Landroid/os/AsyncTask;

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/w4/s/g0;->z:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Le/a/w4/s/g0;->L:Landroid/os/Handler;

    new-instance v1, Le/a/w4/s/g0$c;

    invoke-direct {v1, p0, p1}, Le/a/w4/s/g0$c;-><init>(Le/a/w4/s/g0;Z)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public W0(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSearch, onError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public We(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v2, "StringUtils.trimToEmpty(token)"

    .line 4
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    const-string p1, "previousSearchToken"

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-nez p1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_5

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-static {p1}, Le/a/p5/g0;->E(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "Search_Type"

    if-eqz p1, :cond_4

    const-string p1, "NumberSearch"

    .line 8
    invoke-static {v0, p1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    goto :goto_3

    :cond_4
    const-string p1, "NameSearch"

    .line 9
    invoke-static {v0, p1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    :goto_3
    move-object v5, p1

    .line 10
    iget-object v8, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    const/4 v6, 0x0

    const-string v3, "SEARCHVIEW_SearchPerformed"

    const-string v7, "event.build()"

    move-object v4, v6

    .line 11
    invoke-static/range {v3 .. v8}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    .line 12
    :cond_5
    iget-object p1, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    move p1, v2

    goto :goto_4

    :cond_6
    move p1, v1

    :goto_4
    if-eqz p1, :cond_7

    .line 13
    invoke-virtual {p0}, Le/a/w4/s/g0;->Tj()V

    goto :goto_5

    .line 14
    :cond_7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_8

    invoke-interface {p1, v2}, Le/a/w4/s/h0;->Ke(Z)V

    .line 15
    :cond_8
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_9

    invoke-interface {p1, v1}, Le/a/w4/s/h0;->Qz(Z)V

    .line 16
    :cond_9
    :goto_5
    invoke-virtual {p0}, Le/a/w4/s/g0;->Yj()V

    return-void
.end method

.method public final Wj(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Nj(Ljava/util/List;)V

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Le/a/w4/s/g0;->t:Z

    if-eqz v0, :cond_2

    .line 4
    iput-boolean v1, p0, Le/a/w4/s/g0;->u:Z

    return-void

    .line 5
    :cond_2
    iput-boolean v1, p0, Le/a/w4/s/g0;->t:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    new-instance v5, Le/a/w4/s/g0$e;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/w4/s/g0$e;-><init>(Le/a/w4/s/g0;Ljava/lang/String;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Xj(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Oj(Ljava/util/List;)V

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Le/a/w4/s/g0;->v:Z

    if-eqz v0, :cond_2

    .line 4
    iput-boolean v1, p0, Le/a/w4/s/g0;->w:Z

    return-void

    .line 5
    :cond_2
    iput-boolean v1, p0, Le/a/w4/s/g0;->v:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    new-instance v5, Le/a/w4/s/g0$f;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/w4/s/g0$f;-><init>(Le/a/w4/s/g0;Ljava/lang/String;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/w4/s/h0;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1, p0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->h(Le/a/w4/s/e0;)V

    .line 5
    iget-object p1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    const-string v0, "globalSearch"

    const-string v1, "viewId"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Le/a/q2/y0/a/a;

    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v0, v2, v2}, Le/a/q2/y0/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    invoke-interface {p1, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 10
    iget-object p1, p0, Le/a/w4/s/g0;->R:Le/a/w4/r/a;

    invoke-interface {p1, p0}, Le/a/w4/r/a;->b(Le/a/w4/r/c;)V

    .line 11
    iget-object p1, p0, Le/a/w4/s/g0;->y:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->x()Z

    move-result p1

    .line 12
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Le/a/w4/s/g0;->U:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Le/a/w4/s/s0;->e5(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 13
    iget-boolean p1, p0, Le/a/w4/s/g0;->U:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/w4/s/g0;->T:Le/a/z4/d;

    const-string v0, "general_hasShownScannerTooltip"

    invoke-interface {p1, v0}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/w4/s/s0;->E8()V

    .line 15
    :cond_2
    iget-object p1, p0, Le/a/w4/s/g0;->R:Le/a/w4/r/a;

    iget-object v0, p0, Le/a/w4/s/g0;->g0:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/w4/r/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public Y1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    return-void
.end method

.method public final Yj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Le/a/w4/s/g0;->e:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->Mj(Ljava/util/List;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Le/a/w4/s/g0;->B:Le/a/k3/j/g;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3, p0}, Le/a/k3/j/g;->a(Ljava/lang/String;Ljava/lang/Integer;Le/a/k3/j/g$a;)Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/g0;->e:Landroid/os/CancellationSignal;

    .line 6
    :goto_1
    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->Wj(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->Xj(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v2}, Le/a/w4/s/g0;->Vj(Z)V

    return-void
.end method

.method public Za(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, p1}, Le/a/w4/s/w;->g(I)I

    move-result p1

    return p1
.end method

.method public final Zj(Lcom/truecaller/common/network/country/CountryListDto$a;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->n:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/w4/s/g0;->M:Le/a/o5/z;

    invoke-interface {v0}, Le/a/o5/z;->d()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/g0;->n:Lcom/truecaller/common/network/country/CountryListDto$a;

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/w4/s/g0;->n:Lcom/truecaller/common/network/country/CountryListDto$a;

    :goto_0
    iput-object p1, p0, Le/a/w4/s/g0;->o:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz p2, :cond_2

    .line 5
    iput-object p1, p0, Le/a/w4/s/g0;->n:Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 6
    :cond_2
    iget-object p2, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 8
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/w4/s/s0;->V4(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public bj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->T:Le/a/z4/d;

    const-string v1, "general_hasShownScannerTooltip"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->s:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/w4/s/g0;->s:Landroid/os/AsyncTask;

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/w4/s/g0;->R:Le/a/w4/r/a;

    invoke-interface {v0}, Le/a/w4/r/a;->a()V

    return-void
.end method

.method public gc(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i9(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/k<",
            "+",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ls1/k;

    .line 6
    new-instance v3, Le/a/w4/s/y;

    .line 7
    iget-object v4, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v4, Lcom/truecaller/data/entity/Contact;

    .line 9
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Le/a/w4/s/y;-><init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/blocking/FilterMatch;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->Mj(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Le/a/w4/s/g0;->P:Le/a/w4/s/p0;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "contacts"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Le/a/w4/s/p0;->a:Lq3/a/p1;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "new populate request arrived"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lq3/a/p1;->d(Ljava/util/concurrent/CancellationException;)V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance v9, Le/a/p5/p0;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v9, v1}, Le/a/p5/p0;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 17
    sget-object v1, Le/a/w4/s/p0;->g:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v10, v1, v2

    .line 18
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, v0, Le/a/w4/s/p0;->d:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/w4/s/q0;

    const/4 v11, 0x0

    move-object v6, v4

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v6 .. v11}, Le/a/w4/s/q0;-><init>(Le/a/w4/s/p0;Ljava/util/List;Le/a/p5/p0;Ls1/a/l;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, v0, Le/a/w4/s/p0;->a:Lq3/a/p1;

    :cond_2
    :goto_1
    return-void
.end method

.method public jg()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/w4/s/g0;->U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/w4/s/h0;->so()V

    :cond_0
    return-void
.end method

.method public k2(Le/a/w4/s/s;)V
    .locals 1

    const-string v0, "adapterDelegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Le/a/w4/s/g0;->m:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Le/a/w4/s/g0;->f:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/w4/s/g0;->L:Landroid/os/Handler;

    new-instance v0, Le/a/w4/s/g0$b;

    invoke-direct {v0, p0}, Le/a/w4/s/g0$b;-><init>(Le/a/w4/s/g0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, p1}, Le/a/w4/s/w;->g(I)I

    move-result v0

    const-string v2, "action"

    const-string v3, "message"

    const-string v4, "context"

    const-string v5, "searchResults"

    const/4 v6, 0x0

    const v7, 0x7fffffff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    invoke-virtual {p1, v7}, Le/a/w4/s/w;->q(I)V

    .line 4
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    const-string v0, "adapterDelegate.truecallerSearch()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    const p1, 0x7f120be7

    .line 5
    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Sj(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->d()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    invoke-virtual {p1, v7}, Le/a/w4/s/w;->q(I)V

    .line 7
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->d()Le/a/w4/s/s;

    move-result-object p1

    const-string v0, "adapterDelegate.messages()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    const p1, 0x7f120be6

    .line 8
    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Sj(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->a()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    invoke-virtual {p1, v7}, Le/a/w4/s/w;->q(I)V

    .line 10
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->a()Le/a/w4/s/s;

    move-result-object p1

    const-string v0, "adapterDelegate.groups()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    const p1, 0x7f120be4

    .line 11
    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Sj(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->e()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    invoke-virtual {p1, v7}, Le/a/w4/s/w;->q(I)V

    .line 13
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->e()Le/a/w4/s/s;

    move-result-object p1

    const-string v0, "adapterDelegate.contacts()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    const p1, 0x7f120be3

    .line 14
    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Sj(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_5
    iget-object p1, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/w4/s/s0;->ka()V

    goto/16 :goto_0

    .line 17
    :pswitch_6
    invoke-virtual {p0, v0, p1}, Le/a/w4/s/g0;->Jj(II)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->TRUECALLER:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    invoke-virtual {p0, p1, v0}, Le/a/w4/s/g0;->Lj(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;)V

    goto/16 :goto_0

    .line 18
    :pswitch_7
    iget-object v0, p0, Le/a/w4/s/g0;->i:Ljava/util/List;

    iget-object v1, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    check-cast v1, Le/a/w4/s/w;

    invoke-virtual {v1, p1}, Le/a/w4/s/w;->d(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/k;

    .line 19
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 20
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 21
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Le/a/w4/s/h0;

    if-eqz v7, :cond_0

    iget-wide v8, p1, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 22
    iget-wide v10, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 23
    iget v12, p1, Lcom/truecaller/messaging/data/types/Message;->t:I

    invoke-interface/range {v7 .. v12}, Le/a/w4/s/h0;->Y9(JJI)V

    .line 24
    :cond_0
    iget-object p1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    .line 25
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v0, v3, v6, v5}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    goto :goto_0

    .line 29
    :pswitch_8
    iget-object p1, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p1}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p1

    check-cast p1, Le/a/w4/s/w;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p1, Le/a/w4/s/w;->h:Z

    .line 31
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/w4/s/h0;->l2()V

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->Vj(Z)V

    goto :goto_0

    .line 33
    :pswitch_9
    iget-object v0, p0, Le/a/w4/s/g0;->h:Ljava/util/List;

    iget-object v1, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    check-cast v1, Le/a/w4/s/w;

    invoke-virtual {v1, p1}, Le/a/w4/s/w;->d(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    .line 34
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_2

    iget-wide v7, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-interface {v0, v7, v8}, Le/a/w4/s/h0;->T2(J)V

    .line 35
    :cond_2
    iget-object p1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    .line 36
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v0, v3, v6, v5}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    goto :goto_0

    .line 40
    :pswitch_a
    invoke-virtual {p0, v0, p1}, Le/a/w4/s/g0;->Jj(II)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->PHONE_BOOK:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    invoke-virtual {p0, p1, v0}, Le/a/w4/s/g0;->Lj(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a08a2
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "extra_results"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    .line 3
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/w4/s/h0;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Le/a/w4/s/h0;->Or(Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/w4/s/h0;

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-interface {p2, p1}, Le/a/w4/s/h0;->wf(Ljava/lang/String;)V

    .line 5
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "scanType"

    const-string p3, "singleScan"

    .line 6
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Le/a/q2/g$b$a;

    const-string v1, "SEARCH_scanNumber"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 8
    iget-object p1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    const-string v2, "analyticsEvent"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 9
    new-instance p1, Le/m/e/t;

    invoke-direct {p1}, Le/m/e/t;-><init>()V

    .line 10
    invoke-virtual {p1, p2, p3}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1, p1}, Le/a/w4/s/g0;->Kj(Ljava/lang/String;Le/m/e/t;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->j()Le/a/w4/s/s;

    move-result-object v0

    const/4 v1, 0x1

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, v1}, Le/a/w4/s/w;->o(I)V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/w4/s/h0;->l2()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Le/a/w4/s/g0;->f:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->f()Le/a/w4/s/s;

    move-result-object v0

    const-string v3, "adapterDelegate.main()"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/w4/s/g0;->x:Le/a/w4/s/s;

    .line 5
    iget-object v0, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->e()Le/a/w4/s/s;

    move-result-object v0

    iget v3, p0, Le/a/w4/s/g0;->D:I

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, v3}, Le/a/w4/s/w;->q(I)V

    .line 6
    iget-object v0, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->a()Le/a/w4/s/s;

    move-result-object v0

    iget v3, p0, Le/a/w4/s/g0;->D:I

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, v3}, Le/a/w4/s/w;->q(I)V

    .line 7
    iget-object v0, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->d()Le/a/w4/s/s;

    move-result-object v0

    iget v3, p0, Le/a/w4/s/g0;->D:I

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, v3}, Le/a/w4/s/w;->q(I)V

    .line 8
    iget-object v0, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {v0}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object v0

    iget v3, p0, Le/a/w4/s/g0;->D:I

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, v3}, Le/a/w4/s/w;->q(I)V

    .line 9
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Le/a/w4/s/s0;->g7(Z)V

    .line 10
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Le/a/w4/s/s0;->l7(Z)V

    .line 11
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/w4/s/h0;->pA()V

    .line 12
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/w4/s/h0;->l2()V

    .line 13
    :cond_3
    iput-boolean v1, p0, Le/a/w4/s/g0;->f:Z

    return-void

    .line 14
    :cond_4
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/w4/s/s0;->g5()Z

    move-result v0

    if-ne v0, v2, :cond_6

    .line 15
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/w4/s/s0;->a5()V

    .line 16
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w4/s/h0;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/w4/s/h0;->finish()V

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p0}, Le/a/w4/s/g0;->Tj()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/w4/s/g0;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v2}, Le/a/w4/s/s0;->g7(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Le/a/w4/s/s0;->l7(Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/w4/s/g0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->We(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->K:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->I1()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->K:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->Y()V

    return-void
.end method

.method public p2(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p3, "contacts"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Le/a/w4/s/g0;->s:Landroid/os/AsyncTask;

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Le/a/w4/s/g0;->J:Lcom/truecaller/search/global/CompositeAdapterDelegate;

    invoke-interface {p3}, Lcom/truecaller/search/global/CompositeAdapterDelegate;->m()Le/a/w4/s/s;

    move-result-object p3

    check-cast p3, Le/a/w4/s/w;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p3, Le/a/w4/s/w;->h:Z

    .line 4
    invoke-virtual {p0, v0}, Le/a/w4/s/g0;->Rj(Z)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    if-nez p2, :cond_1

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le/a/w4/s/g0;->j:Ljava/util/List;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    :goto_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    iput-object p4, p0, Le/a/w4/s/g0;->m:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 8
    iget-object p1, p0, Le/a/w4/s/g0;->O:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->Y3()V

    .line 9
    :cond_2
    invoke-virtual {p0, p3}, Le/a/w4/s/g0;->Qj(Ljava/util/List;)V

    return-void
.end method

.method public pe(Le/a/w4/s/r0$a;I)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v0, p2

    const-string v1, "searchResultView"

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v6, Le/a/w4/s/g0;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/k;

    .line 2
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    move-object v14, v1

    check-cast v14, Lcom/truecaller/messaging/data/types/Message;

    .line 4
    iget-object v1, v6, Le/a/w4/s/g0;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 5
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 6
    check-cast v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 7
    iget-object v13, v14, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "message.participant"

    invoke-static {v13, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v14, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v2, v1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 9
    iget v2, v14, Lcom/truecaller/messaging/data/types/Message;->g:I

    const-string v4, "null cannot be cast to non-null type com.truecaller.messaging.transport.history.HistoryTransportInfo"

    .line 10
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    if-eq v2, v3, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 11
    iget-object v2, v6, Le/a/w4/s/g0;->Y:Le/a/a/c/j6;

    .line 12
    iget v1, v1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    .line 13
    invoke-interface {v2, v1}, Le/a/a/c/j6;->j(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v6, Le/a/w4/s/g0;->Y:Le/a/a/c/j6;

    .line 15
    iget v1, v1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    .line 16
    invoke-interface {v2, v1}, Le/a/a/c/j6;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v2, v6, Le/a/w4/s/g0;->Y:Le/a/a/c/j6;

    .line 18
    iget v1, v1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    .line 19
    invoke-interface {v2, v1}, Le/a/a/c/j6;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v14}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message.buildMessageText()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v12, v1

    .line 21
    iget-object v1, v13, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v13, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    :goto_1
    move-object v10, v1

    const-string v1, "participant.name ?: participant.normalizedAddress"

    invoke-static {v10, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    const-string v2, "ParticipantUtils.getDisplayName(participant)"

    if-eqz v1, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {v13}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v11, v1

    .line 24
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 25
    new-instance v4, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Z)V

    goto :goto_3

    :cond_5
    new-instance v1, Le/a/x2/c;

    iget-object v4, v6, Le/a/w4/s/g0;->z:Le/a/o5/f0;

    invoke-direct {v1, v4}, Le/a/x2/c;-><init>(Le/a/o5/f0;)V

    invoke-virtual {v1, v13}, Le/a/x2/c;->b(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    .line 26
    :goto_3
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    iget v5, v13, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_9

    iget-object v5, v13, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v7, "participant.normalizedAddress"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    move v5, v3

    goto :goto_4

    :cond_6
    move v5, v1

    :goto_4
    if-eqz v5, :cond_7

    goto :goto_5

    .line 29
    :cond_7
    invoke-static {v13}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x10

    if-ge v2, v7, :cond_8

    goto :goto_6

    :cond_8
    const/16 v2, 0xc

    .line 31
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 32
    :cond_9
    :goto_5
    iget-object v2, v6, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v5, 0x7f120437

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v2, v5, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "resourceProvider.getStri\u2026ring.ParticipantSelfName)"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    const-string v2, ": "

    .line 33
    invoke-static {v0, v5, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    const-string v0, ""

    :goto_7
    move-object v9, v0

    .line 34
    invoke-interface {v15, v4}, Le/a/w4/s/r0$a;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 35
    invoke-interface {v15, v11}, Le/a/h/h0;->setTitle(Ljava/lang/String;)V

    .line 36
    iget-object v0, v6, Le/a/w4/s/g0;->h0:Le/a/z2/a;

    invoke-interface {v0, v13}, Le/a/z2/a;->d(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    invoke-interface {v15, v3}, Le/a/h/j0;->i2(Z)V

    goto :goto_8

    .line 38
    :cond_b
    iget-object v0, v6, Le/a/w4/s/g0;->h0:Le/a/z2/a;

    invoke-interface {v0, v13}, Le/a/z2/a;->c(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    invoke-interface {v15, v0}, Le/a/h/i0;->K(Z)V

    .line 39
    :goto_8
    invoke-virtual {v13}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v0

    .line 40
    iget-object v2, v6, Le/a/w4/s/g0;->Q:Le/a/h0/m;

    invoke-interface {v2}, Le/a/h0/m;->u()Z

    move-result v2

    invoke-virtual {v13, v2}, Lcom/truecaller/data/entity/messaging/Participant;->k(Z)Z

    move-result v2

    .line 41
    iget v4, v13, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    const/4 v8, 0x0

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, v6, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v2, 0x7f120039

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_c
    if-eqz v2, :cond_d

    .line 43
    iget-object v0, v6, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v2, 0x7f120036

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_d
    move-object v0, v8

    :goto_9
    const v2, 0x7f080711

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v0, v2, v8}, Le/a/h/f0;->Z3(Ljava/lang/String;Ljava/lang/Integer;Lcom/truecaller/data/entity/SpamCategoryModel;)V

    .line 45
    new-instance v7, Ls1/z/c/y;

    invoke-direct {v7}, Ls1/z/c/y;-><init>()V

    iput-boolean v1, v7, Ls1/z/c/y;->a:Z

    .line 46
    invoke-static {v14}, Le/a/c/p/a;->z1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v5

    .line 47
    new-instance v4, Le/a/w4/s/g0$a;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v12

    move-object v8, v4

    move-object/from16 v4, p1

    move-object/from16 v16, v7

    move v7, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Le/a/w4/s/g0$a;-><init>(Le/a/w4/s/g0;Ls1/z/c/y;Ljava/lang/String;Le/a/w4/s/r0$a;Ljava/lang/String;)V

    .line 48
    invoke-interface {v15, v12, v9, v7, v8}, Le/a/h/z;->U2(Ljava/lang/String;Ljava/lang/String;ZLs1/z/b/l;)V

    .line 49
    iget-object v8, v6, Le/a/w4/s/g0;->E:Le/a/w4/t/a/e;

    iget-object v0, v6, Le/a/w4/s/g0;->k:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, v16

    move-object/from16 v7, p1

    const/16 v16, 0x0

    move-object/from16 p2, v9

    move-object v9, v0

    move-object v0, v12

    move v12, v4

    move-object v4, v13

    move v13, v2

    move-object v2, v14

    move v14, v3

    invoke-static/range {v7 .. v14}, Le/a/n/g0;->X(Le/a/h/g0;Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    .line 50
    iget-object v8, v6, Le/a/w4/s/g0;->E:Le/a/w4/t/a/e;

    iget-object v9, v6, Le/a/w4/s/g0;->k:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v0

    move-object v11, v0

    move v12, v1

    invoke-static/range {v7 .. v14}, Le/a/n/g0;->W(Le/a/h/p;Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    .line 51
    iget-object v0, v6, Le/a/w4/s/g0;->W:Le/a/o5/b0;

    iget-object v1, v2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v3, "message.date"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-wide v7, v1, Lw3/b/a/e0/e;->a:J

    .line 53
    invoke-interface {v0, v7, v8}, Le/a/o5/b0;->v(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Le/a/h/n;->o0(Ljava/lang/String;)V

    .line 54
    iget v0, v4, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eqz v0, :cond_e

    move-object/from16 v8, v16

    goto :goto_a

    .line 55
    :cond_e
    iget-object v8, v4, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 56
    :goto_a
    invoke-interface {v15, v8}, Le/a/w4/s/r0$a;->j(Ljava/lang/String;)V

    .line 57
    iget-object v0, v6, Le/a/w4/s/g0;->k0:Le/a/a/c/y6;

    .line 58
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, v0, Le/a/a/c/y6;->a:Ljava/util/Map;

    .line 60
    new-instance v1, Le/a/a/c/f8;

    .line 61
    iget-wide v3, v2, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 62
    iget v2, v2, Lcom/truecaller/messaging/data/types/Message;->t:I

    const/4 v7, 0x3

    if-eq v2, v7, :cond_f

    const/4 v7, 0x1

    .line 63
    :cond_f
    invoke-direct {v1, v3, v4, v7}, Le/a/a/c/f8;-><init>(JI)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    .line 65
    :goto_b
    invoke-interface {v15, v0}, Le/a/w4/s/r0$a;->g4(Z)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_12

    iget-boolean v0, v5, Ls1/z/c/y;->a:Z

    if-nez v0, :cond_12

    move-object/from16 v0, p2

    .line 67
    invoke-interface {v15, v0}, Le/a/w4/s/r0$a;->G3(Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public qb(Le/a/w4/s/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    return-void
.end method

.method public s6(Le/a/w4/s/r0$a;I)Z
    .locals 7

    const-string v0, "searchResultView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Le/a/w4/s/y;

    .line 2
    iget-object v3, v2, Le/a/w4/s/y;->a:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Le/a/w4/s/g0;->X:Le/a/k3/l/f;

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {p2, v1}, Le/a/k3/l/f;->d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object p2

    .line 5
    invoke-virtual {v3, p2}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 6
    :cond_0
    iget-object p2, v2, Le/a/w4/s/y;->c:Lcom/truecaller/blocking/FilterMatch;

    .line 7
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 8
    iget-object v1, p2, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 9
    sget-object v4, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    :goto_1
    if-eqz p2, :cond_3

    .line 10
    iget-object p2, p2, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 11
    sget-object v1, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne p2, v1, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Le/a/w4/s/g0;->Pj(Le/a/w4/s/r0$a;Le/a/w4/s/y;Lcom/truecaller/data/entity/Contact;ZZ)V

    return v6
.end method

.method public t9()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public tc(Lcom/truecaller/common/network/country/CountryListDto$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/g0;->o:Lcom/truecaller/common/network/country/CountryListDto$a;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v1}, Le/a/w4/s/g0;->Zj(Lcom/truecaller/common/network/country/CountryListDto$a;Z)V

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/w4/s/g0;->o:Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    invoke-static {p1, v0}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 7
    iput-object v0, p0, Le/a/w4/s/g0;->m:Ljava/lang/String;

    .line 8
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, p1}, Le/a/w4/s/g0;->Qj(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0}, Le/a/w4/s/g0;->Yj()V

    .line 10
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Filter_Action"

    const-string v2, "CountryChanged"

    .line 11
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Le/a/q2/g$b$a;

    const-string v2, "SEARCHVIEW_Filtered"

    invoke-direct {v1, v2, v0, p1, v0}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 13
    iget-object p1, p0, Le/a/w4/s/g0;->N:Le/a/q2/a;

    const-string v0, "event"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    :cond_3
    return-void
.end method

.method public tj(Le/a/w4/s/r0$a;I)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const-string v1, "searchResultView"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Le/a/w4/s/g0;->h:Ljava/util/List;

    move/from16 v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/truecaller/messaging/data/types/Conversation;

    .line 2
    iget-object v1, v12, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v12, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1}, Le/a/c/p/a;->F1([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v13

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v14

    :goto_2
    if-eqz v2, :cond_3

    .line 6
    iget-object v1, v0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v2, 0x7f1203a8

    new-array v3, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v15, v1

    .line 7
    iget-object v1, v12, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 9
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 10
    :goto_3
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    invoke-direct {v2, v1, v14}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Z)V

    .line 11
    invoke-interface {v11, v2}, Le/a/w4/s/r0$a;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 12
    invoke-interface {v11, v15}, Le/a/h/h0;->setTitle(Ljava/lang/String;)V

    .line 13
    iget-object v1, v0, Le/a/w4/s/g0;->m0:Le/a/a/i1/b;

    .line 14
    iget-object v2, v12, Lcom/truecaller/messaging/data/types/Conversation;->j:Ljava/lang/String;

    .line 15
    iget v3, v12, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    .line 16
    iget-object v4, v12, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    .line 17
    invoke-interface {v1, v2, v3, v4}, Le/a/a/i1/b;->t(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v12}, Le/a/c/p/a;->q1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    iget-object v1, v0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v2, 0x7f120d62

    new-array v3, v13, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "resourceProvider.getStri\u2026ging_im_group_invitation)"

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v6, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 21
    iget-object v1, v0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v3, 0x7f08065b

    invoke-interface {v1, v3}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x68

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move-object v3, v6

    .line 22
    invoke-static/range {v1 .. v10}, Le/a/l4/k;->k0(Le/a/w4/s/r0$a;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;ILjava/lang/Object;)V

    goto :goto_4

    .line 23
    :cond_5
    invoke-static {v12}, Le/a/c/p/a;->k1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v4, 0x7f120390

    new-array v5, v13, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    sget-object v6, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 26
    iget-object v1, v0, Le/a/w4/s/g0;->C:Le/a/p5/h0;

    const v3, 0x7f080659

    invoke-interface {v1, v3}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x68

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move-object v3, v6

    .line 27
    invoke-static/range {v1 .. v10}, Le/a/l4/k;->k0(Le/a/w4/s/r0$a;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;ILjava/lang/Object;)V

    goto :goto_4

    .line 28
    :cond_6
    sget-object v6, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 29
    iget-object v1, v0, Le/a/w4/s/g0;->m0:Le/a/a/i1/b;

    invoke-interface {v1, v12}, Le/a/a/i1/b;->k(Lcom/truecaller/messaging/data/types/Conversation;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 30
    iget-object v1, v0, Le/a/w4/s/g0;->m0:Le/a/a/i1/b;

    iget v3, v12, Lcom/truecaller/messaging/data/types/Conversation;->f:I

    iget-object v5, v12, Lcom/truecaller/messaging/data/types/Conversation;->g:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Le/a/a/i1/b;->b(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move-object v3, v6

    .line 31
    invoke-static/range {v1 .. v10}, Le/a/l4/k;->k0(Le/a/w4/s/r0$a;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZLjava/util/List;ILjava/lang/Object;)V

    .line 32
    :goto_4
    iget-object v1, v0, Le/a/w4/s/g0;->m0:Le/a/a/i1/b;

    invoke-interface {v1, v12}, Le/a/a/i1/b;->m(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Le/a/w4/s/r0$a;->f(Ljava/lang/String;)V

    .line 33
    iget-object v1, v12, Lcom/truecaller/messaging/data/types/Conversation;->M:Lw3/b/a/b;

    const-string v2, "conversation.archivedDate"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    move v13, v14

    .line 35
    :cond_7
    invoke-interface {v11, v13}, Le/a/w4/s/r0$a;->g4(Z)V

    .line 36
    iget-object v2, v0, Le/a/w4/s/g0;->E:Le/a/w4/t/a/e;

    iget-object v3, v0, Le/a/w4/s/g0;->k:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-object v4, v15

    move-object v5, v15

    invoke-static/range {v1 .. v8}, Le/a/n/g0;->X(Le/a/h/g0;Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    return v14
.end method

.method public z6(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v0, "ARG_SEARCH_COUNTRY"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 5
    iget-object v0, p0, Le/a/w4/s/g0;->M:Le/a/o5/z;

    invoke-interface {v0}, Le/a/o5/z;->d()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Le/a/w4/s/g0;->Zj(Lcom/truecaller/common/network/country/CountryListDto$a;Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/w4/s/g0;->M:Le/a/o5/z;

    invoke-interface {v0, v2}, Le/a/o5/z;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Le/a/w4/s/g0;->Zj(Lcom/truecaller/common/network/country/CountryListDto$a;Z)V

    :goto_0
    const-string v0, "ARG_SEARCH_TEXT"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    iget-object v2, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Le/a/w4/s/s0;->L9(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Le/a/w4/s/g0;->We(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Le/a/w4/s/g0;->Tj()V

    :goto_1
    const-string v0, "ARG_SHOW_KEYBOARD"

    .line 14
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 15
    iget-boolean v0, p0, Le/a/w4/s/g0;->f:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/w4/s/s0;->p0()V

    .line 17
    :cond_3
    iget-object p1, p0, Le/a/w4/s/g0;->O:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->j4()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 18
    :cond_4
    iget-object p1, p0, Le/a/w4/s/g0;->O:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->W1()V

    .line 19
    iget-object p1, p0, Le/a/w4/s/g0;->d:Le/a/w4/s/s0;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/w4/s/s0;->R5()V

    :cond_5
    return-void
.end method
