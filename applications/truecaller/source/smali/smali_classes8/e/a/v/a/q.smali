.class public final Le/a/v/a/q;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/f;
.implements Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/v/a/g;",
        ">;",
        "Le/a/v/a/f;",
        "Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;"
    }
.end annotation


# instance fields
.field public final A:Le/a/p5/c;

.field public final B:Le/a/y/c/b;

.field public final C:Le/a/v/a/s0/b;

.field public final D:Le/a/v/p/d;

.field public final E:Le/a/p5/c0;

.field public final J:Landroid/net/Uri;

.field public final K:Le/a/v/a/y/h;

.field public d:Le/a/v/a/s;

.field public e:Ljava/lang/Integer;

.field public f:Lcom/truecaller/details_view/analytics/SourceType;

.field public final g:Le/a/v/a/h;

.field public final h:Le/a/v/a/j;

.field public final i:Ls1/w/f;

.field public final j:Ls1/w/f;

.field public final k:Le/a/a3/a;

.field public final l:Le/a/v/a/x/a;

.field public final m:Le/a/b0/e/l;

.field public final n:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/g5/n;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Landroid/content/ContentResolver;

.field public final p:Landroid/net/Uri;

.field public final q:Le/a/k3/j/b;

.field public final r:Landroid/os/Handler;

.field public final s:Le/a/v/a/t;

.field public final t:Le/a/v/p/l;

.field public final u:Le/a/b0/q/l0;

.field public final v:Le/a/v/p/a;

.field public final w:Le/a/k3/e;

.field public final x:Le/a/v/p/o;

.field public final y:Le/a/v/a/z/a;

.field public final z:Le/a/v/a/j0/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/a3/a;Le/a/v/a/x/a;Le/a/b0/e/l;Le/a/r2/f;Landroid/content/ContentResolver;Landroid/net/Uri;Le/a/k3/j/b;Landroid/os/Handler;Le/a/v/a/t;Le/a/v/p/l;Le/a/b0/q/l0;Le/a/v/p/a;Le/a/k3/e;Le/a/v/p/o;Le/a/v/a/z/a;Le/a/v/a/j0/b;Le/a/p5/c;Le/a/y/c/b;Le/a/v/a/s0/b;Le/a/v/p/d;Le/a/p5/c0;Landroid/net/Uri;Le/a/v/a/y/h;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p8    # Landroid/net/Uri;
        .annotation runtime Ljavax/inject/Named;
            value = "aggregated_contact_table_uri"
        .end annotation
    .end param
    .param p24    # Landroid/net/Uri;
        .annotation runtime Ljavax/inject/Named;
            value = "history_event_table_uri"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/a3/a;",
            "Le/a/v/a/x/a;",
            "Le/a/b0/e/l;",
            "Le/a/r2/f<",
            "Le/a/g5/n;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Le/a/k3/j/b;",
            "Landroid/os/Handler;",
            "Le/a/v/a/t;",
            "Le/a/v/p/l;",
            "Le/a/b0/q/l0;",
            "Le/a/v/p/a;",
            "Le/a/k3/e;",
            "Le/a/v/p/o;",
            "Le/a/v/a/z/a;",
            "Le/a/v/a/j0/b;",
            "Le/a/p5/c;",
            "Le/a/y/c/b;",
            "Le/a/v/a/s0/b;",
            "Le/a/v/p/d;",
            "Le/a/p5/c0;",
            "Landroid/net/Uri;",
            "Le/a/v/a/y/h;",
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

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManager"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionButtonProvider"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDataSaver"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactTableUri"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewModelLoader"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchHelper"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManagerDelegate"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyEventFactory"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewModelComparator"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionsMenuFactory"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashManager"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetProvider"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactHelper"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyEventTableUri"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsAdsLoader"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/v/a/q;->i:Ls1/w/f;

    iput-object v2, v0, Le/a/v/a/q;->j:Ls1/w/f;

    iput-object v3, v0, Le/a/v/a/q;->k:Le/a/a3/a;

    iput-object v4, v0, Le/a/v/a/q;->l:Le/a/v/a/x/a;

    iput-object v5, v0, Le/a/v/a/q;->m:Le/a/b0/e/l;

    iput-object v6, v0, Le/a/v/a/q;->n:Le/a/r2/f;

    iput-object v7, v0, Le/a/v/a/q;->o:Landroid/content/ContentResolver;

    iput-object v8, v0, Le/a/v/a/q;->p:Landroid/net/Uri;

    iput-object v9, v0, Le/a/v/a/q;->q:Le/a/k3/j/b;

    iput-object v10, v0, Le/a/v/a/q;->r:Landroid/os/Handler;

    iput-object v11, v0, Le/a/v/a/q;->s:Le/a/v/a/t;

    iput-object v12, v0, Le/a/v/a/q;->t:Le/a/v/p/l;

    iput-object v13, v0, Le/a/v/a/q;->u:Le/a/b0/q/l0;

    iput-object v14, v0, Le/a/v/a/q;->v:Le/a/v/p/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/v/a/q;->w:Le/a/k3/e;

    iput-object v15, v0, Le/a/v/a/q;->x:Le/a/v/p/o;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    iput-object v1, v0, Le/a/v/a/q;->y:Le/a/v/a/z/a;

    iput-object v2, v0, Le/a/v/a/q;->z:Le/a/v/a/j0/b;

    move-object/from16 v1, p19

    move-object/from16 v2, p20

    iput-object v1, v0, Le/a/v/a/q;->A:Le/a/p5/c;

    iput-object v2, v0, Le/a/v/a/q;->B:Le/a/y/c/b;

    move-object/from16 v1, p21

    move-object/from16 v2, p22

    iput-object v1, v0, Le/a/v/a/q;->C:Le/a/v/a/s0/b;

    iput-object v2, v0, Le/a/v/a/q;->D:Le/a/v/p/d;

    move-object/from16 v1, p23

    move-object/from16 v2, p24

    iput-object v1, v0, Le/a/v/a/q;->E:Le/a/p5/c0;

    iput-object v2, v0, Le/a/v/a/q;->J:Landroid/net/Uri;

    move-object/from16 v1, p25

    iput-object v1, v0, Le/a/v/a/q;->K:Le/a/v/a/y/h;

    .line 2
    new-instance v1, Le/a/v/a/h;

    invoke-direct {v1, v0, v10}, Le/a/v/a/h;-><init>(Le/a/v/a/q;Landroid/os/Handler;)V

    iput-object v1, v0, Le/a/v/a/q;->g:Le/a/v/a/h;

    .line 3
    new-instance v1, Le/a/v/a/j;

    invoke-direct {v1, v0, v10}, Le/a/v/a/j;-><init>(Le/a/v/a/q;Landroid/os/Handler;)V

    iput-object v1, v0, Le/a/v/a/q;->h:Le/a/v/a/j;

    return-void
.end method

.method public static final synthetic Ij(Le/a/v/a/q;)Le/a/v/a/s;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "detailsViewModel"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final Jj(Le/a/v/a/q;Lcom/truecaller/data/entity/Contact;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p0

    const-string p1, "numbers"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/truecaller/data/entity/Number;

    const-string v1, "it"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final Kj()V
    .locals 20

    move-object/from16 v9, p0

    .line 1
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    const-string v10, "detailsViewModel"

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    iget-object v1, v9, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/v/a/g;->i(Le/a/v/a/s;)V

    goto :goto_0

    :cond_0
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 2
    :cond_1
    :goto_0
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/v/a/g;->x()V

    .line 3
    :cond_2
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_12

    iget-object v1, v9, Le/a/v/a/q;->C:Le/a/v/a/s0/b;

    iget-object v2, v9, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v2, :cond_11

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v2, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v1

    .line 7
    iget-object v3, v2, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 8
    sget-object v4, Le/a/v/a/d$a;->a:Le/a/v/a/d$a;

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v4, Le/a/v/a/d$c;->a:Le/a/v/a/d$c;

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    sget-object v4, Le/a/v/a/d$b;->a:Le/a/v/a/d$b;

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->NUMBERS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->AD:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_5

    .line 12
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->FEEDBACK:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_5
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->CONTACT_INFO:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->SWISH:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->ABOUT:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->NOTES:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->CALL_HISTORY:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    .line 18
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->FEEDBACK:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_6
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->MODERATION_NOTICE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 20
    :cond_7
    sget-object v1, Le/a/v/a/d$e;->a:Le/a/v/a/d$e;

    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    iget-boolean v1, v2, Le/a/v/a/s;->k:Z

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_8

    .line 23
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->PREMIUM:Lcom/truecaller/details_view/ui/widget/WidgetType;

    goto :goto_2

    .line 24
    :cond_8
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->REQUEST_CONTACT:Lcom/truecaller/details_view/ui/widget/WidgetType;

    .line 25
    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->PRIVATE_NUMBER:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->AD:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->CONTACT_INFO:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->MODERATION_NOTICE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 30
    :cond_9
    sget-object v1, Le/a/v/a/d$d;->a:Le/a/v/a/d$d;

    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x7

    if-eqz v1, :cond_a

    new-array v1, v8, [Lcom/truecaller/details_view/ui/widget/WidgetType;

    .line 31
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->SOCIAL_MEDIA:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v13

    .line 32
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->AD:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v12

    .line 33
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->NUMBERS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v7

    .line 34
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->CONTACT_INFO:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v6

    .line 35
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->CALL_HISTORY:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v5

    .line 36
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->MODERATION_NOTICE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v4

    .line 37
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->LEARN_MORE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v2

    .line 38
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_5

    .line 39
    :cond_a
    sget-object v1, Le/a/v/a/d$g;->a:Le/a/v/a/d$g;

    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    instance-of v1, v3, Le/a/v/a/d$f$d;

    if-eqz v1, :cond_c

    :goto_3
    new-array v1, v8, [Lcom/truecaller/details_view/ui/widget/WidgetType;

    .line 40
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->SOCIAL_MEDIA:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v13

    .line 41
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->AD:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v12

    .line 42
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->NUMBERS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v7

    .line 43
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->CONTACT_INFO:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v6

    .line 44
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->CALL_HISTORY:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v5

    .line 45
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->MODERATION_NOTICE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v4

    .line 46
    sget-object v3, Lcom/truecaller/details_view/ui/widget/WidgetType;->LEARN_MORE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v3, v1, v2

    .line 47
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_5

    .line 48
    :cond_c
    instance-of v1, v3, Le/a/v/a/d$f$b;

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    instance-of v1, v3, Le/a/v/a/d$f$c;

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    instance-of v1, v3, Le/a/v/a/d$f$a;

    if-eqz v1, :cond_10

    .line 49
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->SPAM_STATS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->AD:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->COMMENTS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->FEEDBACK:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->NUMBERS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->CONTACT_INFO:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->ABOUT:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->NOTES:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->CALL_HISTORY:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->MODERATION_NOTICE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_5
    iget-object v1, v9, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v1, :cond_f

    invoke-interface {v0, v2, v1}, Le/a/v/a/g;->b(Ljava/util/List;Le/a/v/a/s;)V

    goto :goto_6

    :cond_f
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 61
    :cond_10
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 62
    :cond_11
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 63
    :cond_12
    :goto_6
    iget-object v14, v9, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v14, :cond_2c

    .line 64
    iget-object v0, v14, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 65
    instance-of v0, v0, Le/a/v/a/d$e;

    if-eqz v0, :cond_13

    .line 66
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/g;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Le/a/v/a/g;->f()V

    goto/16 :goto_e

    .line 67
    :cond_13
    iget-object v0, v9, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Le/a/v/a/g;

    if-eqz v15, :cond_22

    iget-object v8, v9, Le/a/v/a/q;->l:Le/a/v/a/x/a;

    .line 68
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v6, v14, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 71
    iget-object v0, v14, Le/a/v/a/s;->c:Le/a/v/a/r0/b;

    .line 72
    iget-object v5, v0, Le/a/v/a/r0/b;->b:Le/a/v/a/r0/a;

    const-string v0, "$this$canBeCalled"

    .line 73
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v0

    const-string v1, "numbers"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_8

    .line 76
    :cond_14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Number;

    if-eqz v1, :cond_16

    .line 77
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_16
    move-object v1, v11

    :goto_7
    invoke-static {v1}, Le/a/b0/q/c0;->e(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v0, v12

    goto :goto_9

    :cond_17
    :goto_8
    move v0, v13

    :goto_9
    if-eqz v0, :cond_18

    .line 78
    new-instance v4, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 79
    sget v1, Lcom/truecaller/details_view/R$id;->call_button:I

    .line 80
    sget v2, Lcom/truecaller/details_view/R$string;->details_view_action_button_call:I

    .line 81
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_tcx_action_call_outline_24dp:I

    .line 82
    sget-object v16, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->CALL:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 83
    iget-object v0, v5, Le/a/v/a/r0/a;->a:Le/a/v/a/r0/h;

    .line 84
    iget v12, v5, Le/a/v/a/r0/a;->b:I

    const/16 v18, 0x0

    move-object/from16 v19, v0

    move-object v0, v4

    move-object v13, v4

    move v4, v12

    move-object v12, v5

    move-object/from16 v5, v19

    move-object v11, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v10

    move-object v10, v7

    move-object/from16 v7, p0

    move-object v9, v8

    move-object/from16 v8, v18

    .line 85
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;-><init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V

    .line 86
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_18
    move-object v12, v5

    move-object v11, v6

    move-object v9, v8

    move-object/from16 v16, v10

    move-object v10, v7

    .line 87
    :goto_a
    new-instance v13, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 88
    sget v1, Lcom/truecaller/details_view/R$id;->message_button:I

    .line 89
    sget v2, Lcom/truecaller/details_view/R$string;->details_view_action_button_message:I

    .line 90
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_tcx_action_message_outline_24dp:I

    .line 91
    sget-object v6, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->MESSAGE:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 92
    iget-object v5, v12, Le/a/v/a/r0/a;->a:Le/a/v/a/r0/h;

    .line 93
    iget v4, v12, Le/a/v/a/r0/a;->b:I

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v7, p0

    .line 94
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;-><init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V

    .line 95
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v14, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 97
    instance-of v1, v0, Le/a/v/a/d$d;

    if-eqz v1, :cond_19

    goto :goto_b

    .line 98
    :cond_19
    instance-of v1, v0, Le/a/v/a/d$g;

    if-eqz v1, :cond_1a

    goto :goto_b

    .line 99
    :cond_1a
    instance-of v0, v0, Le/a/v/a/d$f$d;

    if-eqz v0, :cond_1b

    :goto_b
    const/16 v17, 0x1

    goto :goto_c

    :cond_1b
    const/16 v17, 0x0

    .line 100
    :goto_c
    iget-boolean v0, v14, Le/a/v/a/s;->f:Z

    if-eqz v0, :cond_1c

    if-nez v17, :cond_1c

    .line 101
    new-instance v13, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 102
    sget v1, Lcom/truecaller/details_view/R$id;->voip_button:I

    .line 103
    sget v2, Lcom/truecaller/details_view/R$string;->details_view_action_button_voip:I

    .line 104
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_tcx_action_voice_outline_24dp:I

    .line 105
    sget-object v6, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->VOIP:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 106
    iget-object v5, v12, Le/a/v/a/r0/a;->a:Le/a/v/a/r0/h;

    .line 107
    iget v4, v12, Le/a/v/a/r0/a;->b:I

    const/16 v0, 0xb

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v13

    move-object/from16 v7, p0

    .line 109
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;-><init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1c
    iget-boolean v0, v14, Le/a/v/a/s;->e:Z

    if-eqz v0, :cond_1d

    if-nez v17, :cond_1d

    .line 112
    iget-object v0, v14, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 113
    instance-of v0, v0, Le/a/v/a/d$f;

    if-nez v0, :cond_1d

    .line 114
    new-instance v13, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 115
    sget v1, Lcom/truecaller/details_view/R$id;->flash_button:I

    .line 116
    sget v2, Lcom/truecaller/details_view/R$string;->flash_text:I

    .line 117
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_tcx_action_flash_outline_24dp:I

    .line 118
    sget-object v6, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->FLASH:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 119
    iget-object v5, v12, Le/a/v/a/r0/a;->a:Le/a/v/a/r0/h;

    .line 120
    iget v4, v12, Le/a/v/a/r0/a;->b:I

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v7, p0

    .line 121
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;-><init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V

    .line 122
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_1d
    iget-object v0, v14, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 124
    instance-of v0, v0, Le/a/v/a/d$f$b;

    if-eqz v0, :cond_1e

    .line 125
    new-instance v13, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 126
    sget v1, Lcom/truecaller/details_view/R$id;->not_spam_button:I

    .line 127
    sget v2, Lcom/truecaller/details_view/R$string;->details_view_action_button_not_spam:I

    .line 128
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_tcx_not_spam_24dp:I

    .line 129
    sget-object v6, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->NOT_SPAM:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 130
    iget-object v5, v12, Le/a/v/a/r0/a;->a:Le/a/v/a/r0/h;

    .line 131
    iget v4, v12, Le/a/v/a/r0/a;->b:I

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v7, p0

    .line 132
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;-><init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V

    .line 133
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1e
    iget-object v0, v14, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 135
    instance-of v0, v0, Le/a/v/a/d$f$c;

    if-eqz v0, :cond_1f

    .line 136
    new-instance v13, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 137
    sget v1, Lcom/truecaller/details_view/R$id;->unblock_button:I

    .line 138
    sget v2, Lcom/truecaller/details_view/R$string;->details_view_action_button_unblock:I

    .line 139
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_tcx_block_24dp:I

    .line 140
    sget-object v6, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->UNBLOCK:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 141
    iget-object v5, v12, Le/a/v/a/r0/a;->a:Le/a/v/a/r0/h;

    .line 142
    iget v4, v12, Le/a/v/a/r0/a;->b:I

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v7, p0

    .line 143
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;-><init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V

    .line 144
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    if-nez v0, :cond_20

    .line 145
    new-instance v13, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 146
    sget v1, Lcom/truecaller/details_view/R$id;->block_button:I

    .line 147
    sget v2, Lcom/truecaller/details_view/R$string;->details_view_action_button_block:I

    .line 148
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_tcx_block_24dp:I

    .line 149
    sget-object v6, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->BLOCK:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 150
    iget-object v5, v12, Le/a/v/a/r0/a;->a:Le/a/v/a/r0/h;

    .line 151
    iget v4, v12, Le/a/v/a/r0/a;->b:I

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v7, p0

    .line 152
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;-><init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V

    .line 153
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_20
    :goto_d
    iget-object v0, v9, Le/a/v/a/x/a;->a:Le/a/w/c/a;

    invoke-virtual {v0, v11}, Le/a/w/c/a;->e(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 155
    new-instance v9, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 156
    sget v1, Lcom/truecaller/details_view/R$id;->invite_button:I

    .line 157
    sget v2, Lcom/truecaller/details_view/R$string;->details_view_action_button_invite:I

    .line 158
    sget v3, Lcom/truecaller/details_view/R$drawable;->ic_tcx_invite_outline_24dp:I

    .line 159
    sget-object v6, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->INVITE:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 160
    iget-object v5, v12, Le/a/v/a/r0/a;->a:Le/a/v/a/r0/h;

    .line 161
    iget v4, v12, Le/a/v/a/r0/a;->b:I

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v7, p0

    .line 162
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;-><init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V

    .line 163
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_21
    invoke-interface {v15, v10}, Le/a/v/a/g;->z(Ljava/util/List;)V

    goto :goto_f

    :cond_22
    :goto_e
    move-object/from16 v16, v10

    :goto_f
    move-object/from16 v0, p0

    .line 165
    iget-object v1, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v1, :cond_2b

    .line 166
    iget-object v2, v1, Le/a/v/a/s;->c:Le/a/v/a/r0/b;

    .line 167
    iget-object v2, v2, Le/a/v/a/r0/b;->d:Le/a/v/a/r0/d;

    if-eqz v2, :cond_26

    .line 168
    iget-object v3, v1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 169
    invoke-static {v3}, Le/a/m0/a1$k;->u0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_26

    .line 170
    iget-object v1, v1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 171
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_11

    :cond_24
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_26

    .line 172
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/g;

    if-eqz v1, :cond_25

    .line 173
    iget v2, v2, Le/a/v/a/r0/d;->a:I

    .line 174
    invoke-interface {v1, v2}, Le/a/v/a/g;->F(I)V

    sget-object v1, Ls1/s;->a:Ls1/s;

    goto :goto_12

    :cond_25
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_26

    goto :goto_13

    .line 175
    :cond_26
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/g;

    if-eqz v1, :cond_27

    invoke-interface {v1}, Le/a/v/a/g;->o()V

    .line 176
    :cond_27
    :goto_13
    iget-object v1, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v1, :cond_2a

    .line 177
    iget-object v1, v1, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 178
    instance-of v1, v1, Le/a/v/a/d$f;

    if-eqz v1, :cond_28

    goto :goto_14

    .line 179
    :cond_28
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/g;

    if-eqz v1, :cond_29

    invoke-interface {v1}, Le/a/v/a/g;->C()V

    :cond_29
    :goto_14
    return-void

    .line 180
    :cond_2a
    invoke-static/range {v16 .. v16}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_2b
    const/4 v1, 0x0

    .line 181
    invoke-static/range {v16 .. v16}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2c
    move-object v0, v9

    move-object/from16 v16, v10

    move-object v1, v11

    .line 182
    invoke-static/range {v16 .. v16}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final Lj(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/v/a/q$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/v/a/q$b;

    iget v1, v0, Le/a/v/a/q$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/v/a/q$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/v/a/q$b;

    invoke-direct {v0, p0, p1}, Le/a/v/a/q$b;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/v/a/q$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/v/a/q$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/v/a/q$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/q;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/v/a/q$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/q;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/v/a/q;->j:Ls1/w/f;

    new-instance v2, Le/a/v/a/q$c;

    invoke-direct {v2, p0, v5}, Le/a/v/a/q$c;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    iput-object p0, v0, Le/a/v/a/q$b;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/v/a/q$b;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    const-string v6, "withContext(ioContext) {\u2026ewModel.contact\n        }"

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 5
    iget-object v6, v2, Le/a/v/a/q;->s:Le/a/v/a/t;

    iput-object v2, v0, Le/a/v/a/q$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/v/a/q$b;->e:I

    check-cast v6, Le/a/v/a/u;

    invoke-virtual {v6, p1, v0}, Le/a/v/a/u;->c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, v2

    .line 6
    :goto_2
    check-cast p1, Le/a/v/a/s;

    .line 7
    iget-object v1, v0, Le/a/v/a/q;->x:Le/a/v/p/o;

    iget-object v2, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v2, :cond_c

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "left"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "right"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v3, p1, Le/a/v/a/s;->b:Le/a/v/a/d;

    iget-object v5, v2, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 10
    invoke-static {v3, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    .line 11
    iget-boolean v3, p1, Le/a/v/a/s;->k:Z

    iget-boolean v6, v2, Le/a/v/a/s;->k:Z

    if-ne v3, v6, :cond_a

    .line 12
    iget-object v1, v1, Le/a/v/p/o;->a:Le/a/v/p/c;

    .line 13
    iget-object v3, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    iget-object v2, v2, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    move v2, v4

    goto :goto_5

    :cond_6
    if-eqz v3, :cond_9

    if-nez v2, :cond_7

    goto :goto_4

    .line 15
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 17
    invoke-virtual {v3, v1, v5}, Lcom/truecaller/data/entity/Contact;->writeToParcel(Landroid/os/Parcel;I)V

    const-string v3, "Parcel.obtain().apply {\n\u2026Parcel(this, 0)\n        }"

    .line 18
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 20
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    invoke-virtual {v2, v6, v5}, Lcom/truecaller/data/entity/Contact;->writeToParcel(Landroid/os/Parcel;I)V

    .line 22
    invoke-static {v6, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    invoke-virtual {v6}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-ne v2, v3, :cond_8

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v5

    .line 24
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 25
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto :goto_5

    :cond_9
    :goto_4
    move v2, v5

    :goto_5
    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    move v4, v5

    :goto_6
    if-nez v4, :cond_b

    .line 26
    iput-object p1, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    .line 27
    invoke-virtual {v0}, Le/a/v/a/q;->Kj()V

    .line 28
    :cond_b
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_c
    const-string p1, "detailsViewModel"

    .line 29
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5
.end method

.method public final Mj(Z)Lq3/a/p1;
    .locals 6

    .line 1
    iget-object v1, p0, Le/a/v/a/q;->i:Ls1/w/f;

    new-instance v3, Le/a/v/a/q$d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/v/a/q$d;-><init>(Le/a/v/a/q;ZLs1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/q;->o:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/v/a/q;->g:Le/a/v/a/h;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    iget-object v0, p0, Le/a/v/a/q;->o:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/v/a/q;->h:Le/a/v/a/j;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public dd(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "actionButton"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->f:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "detailsViewModel"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/g;

    if-eqz v2, :cond_b

    iget-object v4, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, v4, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-interface {v2, v4}, Le/a/v/a/g;->s(Lcom/truecaller/data/entity/Contact;)V

    goto/16 :goto_3

    :cond_0
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 6
    :pswitch_1
    iget-object v2, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, v2, Le/a/v/a/s;->d:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 9
    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/flashsdk/models/FlashContact;

    .line 10
    iget-object v6, v2, Lcom/truecaller/flashsdk/models/FlashContact;->a:Ljava/lang/String;

    .line 11
    iget-object v7, v0, Le/a/v/a/q;->A:Le/a/p5/c;

    invoke-interface {v7}, Le/a/p5/c;->c()J

    move-result-wide v7

    iget-object v9, v0, Le/a/v/a/q;->B:Le/a/y/c/b;

    invoke-interface {v9, v6}, Le/a/y/c/b;->e(Ljava/lang/String;)Le/a/y/d/h;

    move-result-object v9

    .line 12
    iget-wide v9, v9, Le/a/y/d/h;->b:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xea60

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-eqz v4, :cond_2

    .line 13
    iget-object v4, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/v/a/g;

    if-eqz v4, :cond_b

    .line 14
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/FlashContact;->b:Ljava/lang/String;

    .line 15
    invoke-interface {v4, v6, v2}, Le/a/v/a/g;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 16
    :cond_2
    iget-object v4, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Le/a/v/a/g;

    if-eqz v11, :cond_b

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 17
    iget-object v14, v2, Lcom/truecaller/flashsdk/models/FlashContact;->b:Ljava/lang/String;

    sub-long v15, v9, v7

    .line 18
    invoke-interface/range {v11 .. v16}, Le/a/v/a/g;->y(JLjava/lang/String;J)V

    goto/16 :goto_3

    .line 19
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_b

    .line 20
    iget-object v4, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/v/a/g;

    if-eqz v4, :cond_b

    invoke-interface {v4, v2}, Le/a/v/a/g;->r(Ljava/util/List;)V

    goto/16 :goto_3

    .line 21
    :cond_4
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 22
    :pswitch_2
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/g;

    if-eqz v2, :cond_b

    iget-object v4, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v4, :cond_5

    .line 23
    iget-object v4, v4, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 24
    invoke-interface {v2, v4}, Le/a/v/a/g;->F2(Lcom/truecaller/data/entity/Contact;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 25
    :pswitch_3
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/g;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Le/a/v/a/g;->c()V

    goto/16 :goto_3

    .line 26
    :pswitch_4
    iget-object v2, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v2, :cond_8

    .line 27
    iget-object v2, v2, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 28
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->c1()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Le/a/v/a/q;->m:Le/a/b0/e/l;

    invoke-interface {v6}, Le/a/b0/e/l;->d()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    move v4, v5

    .line 29
    :goto_1
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v5

    const-string v6, "contact.displayNameOrNumber"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v2

    const-string v6, "contact.numbers"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/m0/a1$k;->x1(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 33
    check-cast v7, Ljava/lang/String;

    .line 34
    new-instance v8, Lcom/truecaller/contactfeedback/db/NumberAndType;

    const-string v9, "it"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v9, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->UNKNOWN_NUMBER_TYPE:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    invoke-direct {v8, v7, v9}, Lcom/truecaller/contactfeedback/db/NumberAndType;-><init>(Ljava/lang/String;Lcom/truecaller/contactfeedback/db/PhoneNumberType;)V

    .line 36
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_7
    sget-object v2, Lcom/truecaller/data/entity/FeedbackSource;->BLOCK_FLOW:Lcom/truecaller/data/entity/FeedbackSource;

    .line 38
    new-instance v7, Lcom/truecaller/spamcategories/SpamCategoryRequest;

    invoke-direct {v7, v5, v4, v6, v2}, Lcom/truecaller/spamcategories/SpamCategoryRequest;-><init>(Ljava/lang/String;ZLjava/util/List;Lcom/truecaller/data/entity/FeedbackSource;)V

    .line 39
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/g;

    if-eqz v2, :cond_b

    invoke-interface {v2, v7}, Le/a/v/a/g;->D(Lcom/truecaller/spamcategories/SpamCategoryRequest;)V

    goto :goto_3

    .line 40
    :cond_8
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 41
    :pswitch_5
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/g;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Le/a/v/a/g;->t()V

    goto :goto_3

    .line 42
    :pswitch_6
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/g;

    if-eqz v2, :cond_b

    iget-object v4, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v4, :cond_9

    .line 43
    iget-object v4, v4, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 44
    invoke-interface {v2, v4}, Le/a/v/a/g;->q(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_3

    :cond_9
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 45
    :pswitch_7
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/g;

    if-eqz v2, :cond_b

    iget-object v4, v0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz v4, :cond_a

    .line 46
    iget-object v4, v4, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 47
    invoke-interface {v2, v4}, Le/a/v/a/g;->a(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_3

    :cond_a
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_b
    :goto_3
    iget-object v2, v0, Le/a/v/a/q;->y:Le/a/v/a/z/a;

    .line 49
    iget-object v1, v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->f:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    .line 50
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    const-string v5, "actionButtonType"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const-string v6, "action"

    const-string v7, "context"

    const/4 v8, 0x4

    packed-switch v5, :pswitch_data_1

    .line 52
    new-instance v2, Ls1/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action button: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :pswitch_8
    iget-object v1, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    .line 54
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "flash"

    .line 55
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v5, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v5, v4, v3, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 57
    :pswitch_9
    iget-object v1, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    .line 58
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "voip"

    .line 59
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v5, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v5, v4, v3, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 61
    :pswitch_a
    iget-object v1, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v5, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;->NOTSPAM:Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;

    invoke-static {v4, v1, v5, v3, v8}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->c(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v3

    goto :goto_5

    .line 62
    :pswitch_b
    iget-object v1, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v5, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;->BLOCK:Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;

    invoke-static {v4, v1, v5, v3, v8}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->c(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v3

    goto :goto_5

    .line 63
    :pswitch_c
    iget-object v1, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v5, Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;->UNBLOCK:Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;

    invoke-static {v4, v1, v5, v3, v8}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->c(Lcom/truecaller/analytics/common/event/ViewActionEvent$a;Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;I)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v3

    goto :goto_5

    .line 64
    :pswitch_d
    iget-object v1, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    .line 65
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "message"

    .line 66
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v5, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v5, v4, v3, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 68
    :pswitch_e
    iget-object v1, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    .line 69
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "call"

    .line 70
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v5, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v5, v4, v3, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v3, v5

    :goto_5
    :pswitch_f
    if-eqz v3, :cond_c

    .line 72
    iget-object v1, v2, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v3, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

.method public onVisibilityChanged(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Le/a/v/a/q;->i:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/v/a/q$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/v/a/q$a;-><init>(Le/a/v/a/q;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method
