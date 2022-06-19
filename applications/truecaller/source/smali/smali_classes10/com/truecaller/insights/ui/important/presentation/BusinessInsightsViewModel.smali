.class public final Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;
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
        "\u0000\u00d8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0083\u0001\u0008\u0007\u0012\u0006\u0010f\u001a\u00020c\u0012\u0006\u0010\\\u001a\u00020Y\u0012\u0006\u0010;\u001a\u000208\u0012\u0006\u0010K\u001a\u00020H\u0012\u0006\u0010C\u001a\u00020@\u0012\u0006\u0010G\u001a\u00020D\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010T\u001a\u00020Q\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u00103\u001a\u000200\u0012\u0006\u0010X\u001a\u00020U\u0012\u0006\u0010\'\u001a\u00020$\u0012\u0008\u0008\u0001\u0010+\u001a\u00020(\u0012\u0006\u00107\u001a\u000204\u0012\u0006\u0010?\u001a\u00020<\u00a2\u0006\u0004\u0008g\u0010hJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0003H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020M0L8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0016\u0010T\u001a\u00020Q8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010X\u001a\u00020U8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\"\u0010b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020_0^0]8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0016\u0010f\u001a\u00020c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010e\u00a8\u0006i"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;",
        "Ln3/v/y0;",
        "Ln3/v/a0;",
        "Ls1/s;",
        "onDestroy",
        "()V",
        "onResume",
        "onPause",
        "Ln3/v/u$b;",
        "state",
        "d",
        "(Ln3/v/u$b;)V",
        "",
        "eventCategory",
        "actionType",
        "actionInfo",
        "e",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "Z",
        "isFreshStart",
        "Le/a/c/a/c/h/i;",
        "a",
        "Le/a/c/a/c/h/i;",
        "importantTabContainer",
        "Lq3/a/i0;",
        "Lq3/a/i0;",
        "coroutineScope",
        "Le/a/c/c0/o;",
        "m",
        "Le/a/c/c0/o;",
        "insightsConfig",
        "Le/a/c/a/i/h;",
        "o",
        "Le/a/c/a/i/h;",
        "lifeCycleAwareAnalyticsLogger",
        "Le/a/c/h/d;",
        "r",
        "Le/a/c/h/d;",
        "importantTabBadgeUpdater",
        "Ls1/w/f;",
        "s",
        "Ls1/w/f;",
        "ioContext",
        "Lq3/a/y;",
        "c",
        "Lq3/a/y;",
        "job",
        "Le/a/c/a/c/h/j;",
        "p",
        "Le/a/c/a/c/h/j;",
        "toolTipController",
        "Le/a/c/a/c/f/x;",
        "t",
        "Le/a/c/a/c/f/x;",
        "smartSmsBannerUseCase",
        "Le/a/c/a/c/f/j;",
        "i",
        "Le/a/c/a/c/f/j;",
        "updatesUseCase",
        "Le/a/c/a/c/h/k;",
        "u",
        "Le/a/c/a/c/h/k;",
        "smartSmsBannerLifeCyclePresenter",
        "Le/a/c/a/c/f/o;",
        "k",
        "Le/a/c/a/c/f/o;",
        "modelDownloadBannerUsecase",
        "Le/a/c/b/j;",
        "l",
        "Le/a/c/b/j;",
        "insightsStatusProvider",
        "Le/a/c/a/i/j;",
        "j",
        "Le/a/c/a/i/j;",
        "analyticsUsecase",
        "Lq3/a/x2/a1;",
        "Lcom/truecaller/insights/ui/important/domain/BannerAction;",
        "f",
        "Lq3/a/x2/a1;",
        "actionState",
        "Le/a/c/a/c/f/y;",
        "n",
        "Le/a/c/a/c/f/y;",
        "updateImportantTabSeenUsecase",
        "Le/a/c/a/i/a;",
        "q",
        "Le/a/c/a/i/a;",
        "delayedAnalyticLogger",
        "Le/a/c/a/c/f/b;",
        "h",
        "Le/a/c/a/c/f/b;",
        "financeUseCase",
        "Ln3/v/i0;",
        "",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        "b",
        "Ln3/v/i0;",
        "businessListItem",
        "Le/a/c/a/c/f/g;",
        "g",
        "Le/a/c/a/c/f/g;",
        "upcomingUseCase",
        "<init>",
        "(Le/a/c/a/c/f/g;Le/a/c/a/c/f/b;Le/a/c/a/c/f/j;Le/a/c/a/i/j;Le/a/c/a/c/f/o;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/c/f/y;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/a/i/a;Le/a/c/h/d;Ls1/w/f;Le/a/c/a/c/f/x;Le/a/c/a/c/h/k;)V",
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
.field public final a:Le/a/c/a/c/h/i;

.field public final b:Ln3/v/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/i0<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/y;

.field public final d:Lq3/a/i0;

.field public e:Z

.field public final f:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/insights/ui/important/domain/BannerAction;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/c/a/c/f/g;

.field public final h:Le/a/c/a/c/f/b;

.field public final i:Le/a/c/a/c/f/j;

.field public final j:Le/a/c/a/i/j;

.field public final k:Le/a/c/a/c/f/o;

.field public final l:Le/a/c/b/j;

.field public final m:Le/a/c/c0/o;

.field public final n:Le/a/c/a/c/f/y;

.field public final o:Le/a/c/a/i/h;

.field public final p:Le/a/c/a/c/h/j;

.field public final q:Le/a/c/a/i/a;

.field public final r:Le/a/c/h/d;

.field public final s:Ls1/w/f;

.field public final t:Le/a/c/a/c/f/x;

.field public final u:Le/a/c/a/c/h/k;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/g;Le/a/c/a/c/f/b;Le/a/c/a/c/f/j;Le/a/c/a/i/j;Le/a/c/a/c/f/o;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/c/f/y;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/a/i/a;Le/a/c/h/d;Ls1/w/f;Le/a/c/a/c/f/x;Le/a/c/a/c/h/k;)V
    .locals 16
    .param p13    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
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

    const-string v0, "upcomingUseCase"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "financeUseCase"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesUseCase"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUsecase"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelDownloadBannerUsecase"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateImportantTabSeenUsecase"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolTipController"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delayedAnalyticLogger"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importantTabBadgeUpdater"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsBannerUseCase"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsBannerLifeCyclePresenter"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ln3/v/y0;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->g:Le/a/c/a/c/f/g;

    iput-object v2, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->h:Le/a/c/a/c/f/b;

    iput-object v3, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->i:Le/a/c/a/c/f/j;

    iput-object v4, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->j:Le/a/c/a/i/j;

    iput-object v5, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->k:Le/a/c/a/c/f/o;

    iput-object v6, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->l:Le/a/c/b/j;

    iput-object v7, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    iput-object v8, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->n:Le/a/c/a/c/f/y;

    iput-object v9, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->o:Le/a/c/a/i/h;

    iput-object v10, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->p:Le/a/c/a/c/h/j;

    iput-object v11, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->q:Le/a/c/a/i/a;

    iput-object v12, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->r:Le/a/c/h/d;

    iput-object v13, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->s:Ls1/w/f;

    iput-object v14, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->t:Le/a/c/a/c/f/x;

    iput-object v15, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->u:Le/a/c/a/c/h/k;

    .line 2
    new-instance v10, Le/a/c/a/c/h/i;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7c

    move-object v1, v10

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v6, v8

    move-object v7, v9

    move v8, v11

    move v9, v12

    invoke-direct/range {v1 .. v9}, Le/a/c/a/c/h/i;-><init>(Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/c/g/e;Le/a/c/a/c/g/a;Le/a/c/a/c/g/f;Lcom/truecaller/insights/ui/models/AdapterItem$a;ZI)V

    iput-object v10, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->a:Le/a/c/a/c/h/i;

    .line 3
    new-instance v1, Ln3/v/i0;

    invoke-direct {v1}, Ln3/v/i0;-><init>()V

    iput-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->b:Ln3/v/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v1

    iput-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->c:Lq3/a/y;

    .line 5
    invoke-interface {v13, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    iput-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->d:Lq3/a/i0;

    .line 6
    iput-boolean v2, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->e:Z

    .line 7
    sget-object v1, Lcom/truecaller/insights/ui/important/domain/BannerAction;->IDLE:Lcom/truecaller/insights/ui/important/domain/BannerAction;

    invoke-static {v1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v1

    iput-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->f:Lq3/a/x2/a1;

    return-void
.end method

.method public static final c(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->b:Ln3/v/i0;

    iget-object p0, p0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->a:Le/a/c/a/c/h/i;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Le/a/c/a/c/h/i;->f:Lcom/truecaller/insights/ui/models/AdapterItem$a;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    sget-object v2, Lcom/truecaller/insights/ui/models/AdapterItem$g;->a:Lcom/truecaller/insights/ui/models/AdapterItem$g;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Le/a/c/a/c/h/i;->b:Le/a/c/c0/o;

    .line 8
    iget-object v3, p0, Le/a/c/a/c/h/i;->c:Le/a/c/a/c/g/e;

    .line 9
    iget-object v4, p0, Le/a/c/a/c/h/i;->d:Le/a/c/a/c/g/a;

    .line 10
    iget-object v5, p0, Le/a/c/a/c/h/i;->e:Le/a/c/a/c/g/f;

    .line 11
    iget-boolean p0, p0, Le/a/c/a/c/h/i;->g:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 12
    iget-object v7, v4, Le/a/c/a/c/g/a;->b:Le/a/c/a/l/b$a;

    if-eqz v7, :cond_1

    .line 13
    iget-object v7, v7, Le/a/c/a/l/b$a;->b:Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    .line 14
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v9

    :goto_2
    if-eqz v7, :cond_a

    if-eqz v3, :cond_4

    .line 15
    iget-object v7, v3, Le/a/c/a/c/g/e;->b:Ljava/util/List;

    goto :goto_3

    :cond_4
    move-object v7, v6

    :goto_3
    if-eqz v7, :cond_6

    .line 16
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move v7, v8

    goto :goto_5

    :cond_6
    :goto_4
    move v7, v9

    :goto_5
    if-eqz v7, :cond_a

    if-eqz v5, :cond_7

    .line 17
    iget-object v7, v5, Le/a/c/a/c/g/f;->b:Le/a/c/a/l/b$i;

    if-eqz v7, :cond_7

    .line 18
    iget-object v7, v7, Le/a/c/a/l/b$i;->b:Ljava/util/List;

    goto :goto_6

    :cond_7
    move-object v7, v6

    :goto_6
    if-eqz v7, :cond_8

    .line 19
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    move v8, v9

    :cond_9
    if-eqz v8, :cond_a

    .line 20
    new-instance p0, Lcom/truecaller/insights/ui/models/AdapterItem$f;

    const-wide/16 v2, -0x45c

    invoke-direct {p0, v2, v3}, Lcom/truecaller/insights/ui/models/AdapterItem$f;-><init>(J)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_a
    if-eqz v3, :cond_b

    .line 21
    iget-object v7, v3, Le/a/c/a/c/g/e;->b:Ljava/util/List;

    goto :goto_7

    :cond_b
    move-object v7, v6

    :goto_7
    const/4 v8, 0x2

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_d

    iget-object v7, v3, Le/a/c/a/c/g/e;->b:Ljava/util/List;

    .line 22
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v9

    if-eqz v7, :cond_d

    .line 23
    iget-object v7, v3, Le/a/c/a/c/g/e;->a:Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 24
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v3, v3, Le/a/c/a/c/g/e;->b:Ljava/util/List;

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v3, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 28
    check-cast v12, Le/a/c/a/l/b$g;

    .line 29
    new-instance v13, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    invoke-direct {v13, v12, v10, v11, v8}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;JI)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 30
    :cond_c
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    if-eqz v4, :cond_e

    .line 31
    iget-object v3, v4, Le/a/c/a/c/g/a;->b:Le/a/c/a/l/b$a;

    goto :goto_9

    :cond_e
    move-object v3, v6

    :goto_9
    if-eqz v3, :cond_10

    iget-object v3, v4, Le/a/c/a/c/g/a;->b:Le/a/c/a/l/b$a;

    .line 32
    iget-object v3, v3, Le/a/c/a/l/b$a;->b:Ljava/util/List;

    .line 33
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v9

    if-eqz v3, :cond_10

    .line 34
    iget-object v3, v4, Le/a/c/a/c/g/a;->a:Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 35
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_f

    .line 36
    new-instance p0, Lcom/truecaller/insights/ui/models/AdapterItem$c;

    invoke-interface {v2}, Le/a/c/c0/o;->k0()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/truecaller/insights/ui/models/AdapterItem$c;-><init>(Z)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 37
    :cond_f
    new-instance p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 38
    iget-object v2, v4, Le/a/c/a/c/g/a;->b:Le/a/c/a/l/b$a;

    .line 39
    invoke-direct {p0, v2, v10, v11, v8}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;JI)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_a
    if-eqz v5, :cond_11

    .line 40
    iget-object v6, v5, Le/a/c/a/c/g/f;->b:Le/a/c/a/l/b$i;

    :cond_11
    if-eqz v6, :cond_12

    iget-object p0, v5, Le/a/c/a/c/g/f;->b:Le/a/c/a/l/b$i;

    .line 41
    iget-object p0, p0, Le/a/c/a/l/b$i;->b:Ljava/util/List;

    .line 42
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v9

    if-eqz p0, :cond_12

    .line 43
    iget-object p0, v5, Le/a/c/a/c/g/f;->a:Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 44
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance p0, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 46
    iget-object v2, v5, Le/a/c/a/c/g/f;->b:Le/a/c/a/l/b$i;

    .line 47
    invoke-direct {p0, v2, v10, v11, v8}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;JI)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_12
    :goto_b
    invoke-virtual {v0, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d(Ln3/v/u$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->l:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ln3/v/u$b;->e:Ln3/v/u$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->a:Le/a/c/a/c/h/i;

    .line 2
    iget-object p1, p1, Le/a/c/a/c/h/i;->d:Le/a/c/a/c/g/a;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/c/c0/o;->C(Z)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->j:Le/a/c/a/i/j;

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

.method public final onDestroy()V
    .locals 2
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    sget-object v1, Lcom/truecaller/insights/utils/HideTrxTempState;->DEFAULT:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-interface {v0, v1}, Le/a/c/c0/o;->M(Lcom/truecaller/insights/utils/HideTrxTempState;)V

    return-void
.end method

.method public final onPause()V
    .locals 3
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->c:Lq3/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->Y(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final onResume()V
    .locals 38
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->l:Le/a/c/b/j;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Le/a/c/b/j;->P(Z)V

    .line 2
    iget-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->q:Le/a/c/a/i/a;

    .line 3
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v15, ""

    const-string v14, "feature"

    .line 4
    invoke-static {v15, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "eventCategory"

    invoke-static {v15, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "eventInfo"

    invoke-static {v15, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "context"

    invoke-static {v15, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "actionType"

    invoke-static {v15, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "actionInfo"

    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "propertyMap"

    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "page_view"

    const-string v7, "<set-?>"

    .line 5
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "insights_business_tab"

    .line 6
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "view_3_sec"

    .line 7
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "insights_tab"

    .line 8
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v14

    .line 9
    new-instance v14, Le/a/c/r/d/b;

    move-object/from16 v17, v14

    .line 10
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1c0

    const/16 v23, 0x0

    move-object/from16 v24, v3

    move-object v3, v14

    move-object/from16 v25, v6

    move-object v6, v15

    move-object/from16 v26, v7

    move-object/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v8, v25

    move-object/from16 v28, v9

    move-object v9, v15

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-wide/from16 v10, v18

    move-object/from16 v31, v12

    move-object/from16 v12, v20

    move-object/from16 v32, v13

    move/from16 v13, v21

    move-object/from16 v34, v14

    move-object/from16 v35, v16

    move-object/from16 v33, v17

    move/from16 v14, v22

    move-object/from16 v36, v15

    move-object/from16 v15, v23

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 11
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    .line 12
    invoke-direct {v3, v4, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    const-wide/16 v4, 0xbb8

    .line 13
    invoke-interface {v1, v3, v4, v5}, Le/a/c/a/i/a;->Nz(Le/a/c/r/d/b;J)V

    .line 14
    iget-object v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->q:Le/a/c/a/i/a;

    .line 15
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v3, v35

    move-object/from16 v9, v36

    .line 16
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v32

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v31

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v29

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v30

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v28

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v27

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "page_view"

    move-object/from16 v3, v26

    .line 17
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "insights_business_tab"

    .line 18
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "view_5_sec"

    .line 19
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "insights_tab"

    .line 20
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v15, Le/a/c/r/d/b;

    .line 22
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v3, v14

    move-object v6, v9

    move-object/from16 v37, v14

    move/from16 v14, v16

    move-object v0, v15

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 23
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v3, v37

    .line 24
    invoke-direct {v0, v3, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    const-wide/16 v2, 0x1388

    .line 25
    invoke-interface {v1, v0, v2, v3}, Le/a/c/a/i/a;->Nz(Le/a/c/r/d/b;J)V

    move-object/from16 v0, p0

    .line 26
    iget-boolean v1, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->e:Z

    if-eqz v1, :cond_0

    .line 27
    iget-object v2, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->d:Lq3/a/i0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Le/a/c/a/c/h/a;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Le/a/c/a/c/h/a;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 28
    :cond_0
    sget-object v1, Ln3/v/u$b;->e:Ln3/v/u$b;

    invoke-virtual {v0, v1}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->d(Ln3/v/u$b;)V

    return-void
.end method
