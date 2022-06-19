.class public final Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;
.super Ln3/v/y0;
.source "SourceFile"

# interfaces
.implements Ln3/v/a0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00bd\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001Y\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BS\u0008\u0007\u0012\u0006\u0010:\u001a\u000205\u0012\u0006\u0010y\u001a\u00020t\u0012\u0006\u0010s\u001a\u00020n\u0012\u0006\u0010R\u001a\u00020O\u0012\u0006\u0010%\u001a\u00020 \u0012\u0006\u0010j\u001a\u00020e\u0012\u0006\u0010d\u001a\u00020a\u0012\u0008\u0008\u0001\u0010A\u001a\u00020>\u0012\u0006\u0010`\u001a\u00020]\u00a2\u0006\u0004\u0008|\u0010}J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\'\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0007J\u0015\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0007J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00032\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u0019\u0010%\u001a\u00020 8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u001c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\'0&8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010(R\u001f\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00030*8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u001f\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000f008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u00101\u001a\u0004\u00082\u00103R\u0019\u0010:\u001a\u0002058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u0016\u0010=\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u001c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u000f0B8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010J\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010<R\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u001f\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u000f0*8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008S\u0010,\u001a\u0004\u0008T\u0010.R\u001c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u000f0V8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010WR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0016\u0010d\u001a\u00020a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0019\u0010j\u001a\u00020e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008f\u0010g\u001a\u0004\u0008h\u0010iR\"\u0010m\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0k0*8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010,R\u0019\u0010s\u001a\u00020n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010p\u001a\u0004\u0008q\u0010rR\u0019\u0010y\u001a\u00020t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008u\u0010v\u001a\u0004\u0008w\u0010xR%\u0010{\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0k0*8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010,\u001a\u0004\u0008z\u0010.\u00a8\u0006~"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;",
        "Ln3/v/y0;",
        "Ln3/v/a0;",
        "",
        "filterActionInfo",
        "Ls1/s;",
        "d",
        "(Ljava/lang/String;)V",
        "eventCategory",
        "actionType",
        "actionInfo",
        "e",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "onResume",
        "()V",
        "",
        "shouldExpand",
        "i",
        "(Z)V",
        "query",
        "h",
        "bottomSheetEvent",
        "c",
        "searchEvent",
        "searchInfo",
        "f",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Lcom/truecaller/insights/ui/filters/states/SmsFilterState;",
        "Lcom/truecaller/insights/ui/filters/states/SmsFilterState;",
        "quickCurrentFiltersState",
        "g",
        "currentFiltersState",
        "Le/a/c/a/j/a/c;",
        "t",
        "Le/a/c/a/j/a/c;",
        "getQuickFiltersUseCase",
        "()Le/a/c/a/j/a/c;",
        "quickFiltersUseCase",
        "",
        "Le/a/c/w/o0/k/e;",
        "Ljava/util/Set;",
        "appliedFilters",
        "Lq3/a/x2/f;",
        "n",
        "Lq3/a/x2/f;",
        "getSearchQuery",
        "()Lq3/a/x2/f;",
        "searchQuery",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/lifecycle/LiveData;",
        "getRefreshLv",
        "()Landroidx/lifecycle/LiveData;",
        "refreshLv",
        "Le/a/c/a/p/b/g;",
        "p",
        "Le/a/c/a/p/b/g;",
        "getSmartFeedUseCase",
        "()Le/a/c/a/p/b/g;",
        "smartFeedUseCase",
        "a",
        "Z",
        "upcomingExpanded",
        "Le/a/c/a/i/h;",
        "w",
        "Le/a/c/a/i/h;",
        "analyticsLogger",
        "Lq3/a/x2/a1;",
        "Lq3/a/x2/a1;",
        "transactionHiddenStateFlow",
        "Le/a/c/a/j/d/b;",
        "m",
        "Le/a/c/a/j/d/b;",
        "senderSearchQuery",
        "b",
        "senderSearchTriggered",
        "Le/a/c/a/j/d/a;",
        "k",
        "Le/a/c/a/j/d/a;",
        "categoryExpansionState",
        "Le/a/c/c0/o;",
        "s",
        "Le/a/c/c0/o;",
        "insightsConfig",
        "l",
        "getAreCategoriesExpanded",
        "areCategoriesExpanded",
        "Ln3/v/k0;",
        "Ln3/v/k0;",
        "_refreshSource",
        "com/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a",
        "o",
        "Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;",
        "expandCallback",
        "Le/a/c/a/i/a;",
        "x",
        "Le/a/c/a/i/a;",
        "delayedAnalyticLogger",
        "Le/a/c/h/d;",
        "v",
        "Le/a/c/h/d;",
        "importantTabBadgeUpdater",
        "Le/a/c/a/i/j;",
        "u",
        "Le/a/c/a/i/j;",
        "getAnalyticsUsecase",
        "()Le/a/c/a/i/j;",
        "analyticsUsecase",
        "",
        "j",
        "quickCurrentFilters",
        "Le/a/c/a/j/a/d;",
        "r",
        "Le/a/c/a/j/a/d;",
        "getSendersUseCase",
        "()Le/a/c/a/j/a/d;",
        "sendersUseCase",
        "Le/a/c/a/j/a/b;",
        "q",
        "Le/a/c/a/j/a/b;",
        "getCategoriesUseCase",
        "()Le/a/c/a/j/a/b;",
        "categoriesUseCase",
        "getCurrentFilters",
        "currentFilters",
        "<init>",
        "(Le/a/c/a/p/b/g;Le/a/c/a/j/a/b;Le/a/c/a/j/a/d;Le/a/c/c0/o;Le/a/c/a/j/a/c;Le/a/c/a/i/j;Le/a/c/h/d;Le/a/c/a/i/h;Le/a/c/a/i/a;)V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

.field public final h:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

.field public final j:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ljava/util/Set<",
            "Le/a/c/w/o0/k/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Le/a/c/a/j/d/a;

.field public final l:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/c/a/j/d/b;

.field public final n:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;

.field public final p:Le/a/c/a/p/b/g;

.field public final q:Le/a/c/a/j/a/b;

.field public final r:Le/a/c/a/j/a/d;

.field public final s:Le/a/c/c0/o;

.field public final t:Le/a/c/a/j/a/c;

.field public final u:Le/a/c/a/i/j;

.field public final v:Le/a/c/h/d;

.field public final w:Le/a/c/a/i/h;

.field public final x:Le/a/c/a/i/a;


# direct methods
.method public constructor <init>(Le/a/c/a/p/b/g;Le/a/c/a/j/a/b;Le/a/c/a/j/a/d;Le/a/c/c0/o;Le/a/c/a/j/a/c;Le/a/c/a/i/j;Le/a/c/h/d;Le/a/c/a/i/h;Le/a/c/a/i/a;)V
    .locals 1
    .param p8    # Le/a/c/a/i/h;
        .annotation runtime Ljavax/inject/Named;
            value = "smartfeed_analytics_logger"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "smartFeedUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoriesUseCase"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendersUseCase"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickFiltersUseCase"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUsecase"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importantTabBadgeUpdater"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delayedAnalyticLogger"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->p:Le/a/c/a/p/b/g;

    iput-object p2, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->q:Le/a/c/a/j/a/b;

    iput-object p3, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->r:Le/a/c/a/j/a/d;

    iput-object p4, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->s:Le/a/c/c0/o;

    iput-object p5, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->t:Le/a/c/a/j/a/c;

    iput-object p6, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->u:Le/a/c/a/i/j;

    iput-object p7, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->v:Le/a/c/h/d;

    iput-object p8, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->w:Le/a/c/a/i/h;

    iput-object p9, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->x:Le/a/c/a/i/a;

    .line 2
    new-instance p1, Ln3/v/k0;

    invoke-direct {p1}, Ln3/v/k0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->c:Ln3/v/k0;

    .line 3
    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->d:Landroidx/lifecycle/LiveData;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->e:Lq3/a/x2/a1;

    .line 5
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f:Ljava/util/Set;

    .line 6
    new-instance p1, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-direct {p1}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    .line 7
    iget-object p1, p1, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->b:Lq3/a/x2/i1;

    .line 8
    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->h:Lq3/a/x2/f;

    .line 9
    new-instance p1, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-direct {p1}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    .line 10
    iget-object p1, p1, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->b:Lq3/a/x2/i1;

    .line 11
    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->j:Lq3/a/x2/f;

    .line 12
    new-instance p1, Le/a/c/a/j/d/a;

    invoke-direct {p1}, Le/a/c/a/j/d/a;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->k:Le/a/c/a/j/d/a;

    .line 13
    iget-object p1, p1, Le/a/c/a/j/d/a;->b:Lq3/a/x2/i1;

    .line 14
    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->l:Lq3/a/x2/f;

    .line 15
    new-instance p1, Le/a/c/a/j/d/b;

    invoke-direct {p1}, Le/a/c/a/j/d/b;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->m:Le/a/c/a/j/d/b;

    .line 16
    iget-object p1, p1, Le/a/c/a/j/d/b;->b:Lq3/a/x2/i1;

    .line 17
    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->n:Lq3/a/x2/f;

    .line 18
    new-instance p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;

    invoke-direct {p1, p0}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;-><init>(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->o:Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel$a;

    return-void
.end method

.method public static synthetic g(Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v5, p1

    const-string v0, "bottomSheetEvent"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, ""

    const-string v0, "feature"

    .line 3
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCategory"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventInfo"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyMap"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "filter_bottomsheet"

    const-string v0, "<set-?>"

    .line 4
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "insights_smart_feed"

    .line 6
    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v14, Le/a/c/r/d/b;

    .line 8
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c0

    const/4 v12, 0x0

    move-object v0, v15

    move-object v2, v6

    move-object v3, v6

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 9
    invoke-static {v13}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-direct {v14, v15, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 11
    iget-object v1, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->w:Le/a/c/a/i/h;

    invoke-interface {v1, v14}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v6, p1

    const-string v0, "filterInfo"

    .line 1
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, ""

    const-string v0, "feature"

    .line 3
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCategory"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventInfo"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyMap"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "filter_bottomsheet"

    const-string v0, "<set-?>"

    .line 4
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "click"

    .line 5
    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "insights_smart_feed"

    .line 7
    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v14, Le/a/c/r/d/b;

    .line 9
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c0

    const/4 v12, 0x0

    move-object v0, v15

    move-object v2, v3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v12}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 10
    invoke-static {v13}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 11
    invoke-direct {v14, v15, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 12
    iget-object v1, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->w:Le/a/c/a/i/h;

    invoke-interface {v1, v14}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->u:Le/a/c/a/i/j;

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, ""

    const-string v3, "feature"

    .line 3
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "permission"

    const-string v3, "<set-?>"

    .line 4
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p1

    .line 5
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p2

    .line 6
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, p3

    .line 7
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "insights_tab"

    .line 8
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 10
    new-instance v15, Le/a/c/r/d/b;

    .line 11
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v3, v14

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object v0, v15

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 12
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v3, v18

    .line 13
    invoke-direct {v0, v3, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 14
    invoke-virtual {v1, v0}, Le/a/c/a/i/j;->b(Le/a/c/r/d/b;)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v5, p1

    const-string v0, "searchEvent"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboard_view"

    move-object/from16 v1, p2

    .line 2
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, ""

    if-eqz v1, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    const/4 v0, 0x1

    .line 3
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "feature"

    .line 4
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventCategory"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventInfo"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionType"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionInfo"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "propertyMap"

    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "filter_bottomsheet"

    const-string v2, "<set-?>"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "search_button"

    .line 6
    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "insights_smart_feed"

    .line 9
    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 11
    new-instance v14, Le/a/c/r/d/b;

    .line 12
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1c0

    const/16 v16, 0x0

    move-object v0, v15

    move-object v2, v4

    move-object v4, v7

    move-object/from16 v5, p1

    move-wide v7, v8

    move-object v9, v10

    move v10, v11

    move v11, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 13
    invoke-static {v13}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 14
    invoke-direct {v14, v15, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 15
    iget-object v1, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->w:Le/a/c/a/i/h;

    invoke-interface {v1, v14}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    .line 16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    const-string v0, "query"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, ""

    .line 2
    :goto_2
    iget-object v2, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->m:Le/a/c/a/j/d/b;

    .line 3
    iget-object v2, v2, Le/a/c/a/j/d/b;->b:Lq3/a/x2/i1;

    .line 4
    invoke-interface {v2}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->m:Le/a/c/a/j/d/b;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, v2, Le/a/c/a/j/d/b;->a:Lq3/a/x2/a1;

    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lq3/a/x2/a1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_3

    .line 9
    iput-boolean v3, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->b:Z

    const-string p1, "start"

    .line 10
    invoke-virtual {p0, p1, v4}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->k:Le/a/c/a/j/d/a;

    .line 2
    iget-object v0, v0, Le/a/c/a/j/d/a;->a:Lq3/a/x2/a1;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lq3/a/x2/a1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onResume()V
    .locals 39
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->x:Le/a/c/a/i/a;

    const-string v15, ""

    .line 2
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v13, "feature"

    .line 3
    invoke-static {v15, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "eventCategory"

    invoke-static {v15, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "eventInfo"

    invoke-static {v15, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "context"

    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "actionType"

    invoke-static {v15, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "actionInfo"

    invoke-static {v15, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "propertyMap"

    invoke-static {v14, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "page_view"

    const-string v6, "<set-?>"

    .line 4
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "insights_smart_feed"

    .line 5
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "view_3_sec"

    .line 6
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "insights_smart_feed"

    .line 7
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-lez v16, :cond_0

    move/from16 v16, v18

    goto :goto_0

    :cond_0
    move/from16 v16, v17

    :goto_0
    const-string v19, "Failed requirement."

    if-eqz v16, :cond_3

    move-object/from16 v16, v14

    .line 9
    new-instance v14, Le/a/c/r/d/b;

    move-object/from16 v20, v14

    .line 10
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1c0

    const/16 v26, 0x0

    move-object/from16 v27, v2

    move-object v2, v14

    move-object/from16 v28, v5

    move-object v5, v15

    move-object/from16 v29, v6

    move-object/from16 v6, v27

    move-object/from16 v30, v7

    move-object/from16 v7, v28

    move-object/from16 v31, v8

    move-object v8, v15

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-wide/from16 v9, v21

    move-object/from16 v34, v11

    move-object/from16 v11, v23

    move-object/from16 v35, v12

    move/from16 v12, v24

    move-object/from16 v36, v13

    move/from16 v13, v25

    move-object v0, v14

    move-object/from16 v38, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v38

    move-object/from16 v14, v26

    invoke-direct/range {v2 .. v14}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 11
    invoke-static/range {v16 .. v16}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 12
    invoke-direct {v15, v0, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    const-wide/16 v2, 0xbb8

    .line 13
    invoke-interface {v1, v15, v2, v3}, Le/a/c/a/i/a;->Nz(Le/a/c/r/d/b;J)V

    move-object/from16 v0, p0

    .line 14
    iget-object v1, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->x:Le/a/c/a/i/a;

    .line 15
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v8, v20

    move-object/from16 v2, v36

    .line 16
    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v35

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v34

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v32

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v33

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v31

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v30

    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "page_view"

    move-object/from16 v2, v29

    .line 17
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "insights_smart_feed"

    .line 18
    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "view_5_sec"

    .line 19
    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "insights_smart_feed"

    .line 20
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move/from16 v17, v18

    :cond_1
    if-eqz v17, :cond_2

    .line 22
    new-instance v14, Le/a/c/r/d/b;

    .line 23
    new-instance v13, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v2, v13

    move-object v5, v8

    move-object/from16 v37, v13

    move/from16 v13, v16

    move-object v0, v14

    move-object/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 24
    invoke-static {v15}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v3, v37

    .line 25
    invoke-direct {v0, v3, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    const-wide/16 v2, 0x1388

    .line 26
    invoke-interface {v1, v0, v2, v3}, Le/a/c/a/i/a;->Nz(Le/a/c/r/d/b;J)V

    return-void

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
