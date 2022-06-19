.class public final Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;
.super Ln3/v/y0;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/k/d/a;
.implements Ln3/v/a0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BA\u0008\u0007\u0012\u0006\u0010*\u001a\u00020(\u0012\u0006\u0010$\u001a\u00020\"\u0012\u0006\u0010;\u001a\u000209\u0012\u0006\u00100\u001a\u00020.\u0012\u0006\u0010\'\u001a\u00020%\u0012\u0006\u0010>\u001a\u00020<\u0012\u0006\u00104\u001a\u000201\u00a2\u0006\u0004\u0008C\u0010DJ3\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\r\u0010\u0017\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001b\u0010\u001a\u001a\u00020\u00112\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0015J\u001f\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0004\u00a2\u0006\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010#R\u0016\u0010\'\u001a\u00020%8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010&R\u0016\u0010*\u001a\u00020(8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\"\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002060\u0006058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u00107R\u0016\u0010;\u001a\u0002098\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010:R\u0016\u0010>\u001a\u00020<8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010=R\"\u0010B\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020@0?058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u00107\u00a8\u0006E"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;",
        "Ln3/v/y0;",
        "Le/a/c/a/k/d/a;",
        "Ln3/v/a0;",
        "",
        "isImportant",
        "",
        "Le/a/c/a/l/b$c;",
        "diffList",
        "",
        "currentList",
        "Lq3/a/p1;",
        "g",
        "(ZLjava/util/List;Ljava/util/List;)Lq3/a/p1;",
        "",
        "actionInfo",
        "message",
        "Ls1/s;",
        "f",
        "(Ljava/lang/String;Le/a/c/a/l/b$c;)V",
        "d",
        "()V",
        "onCreate",
        "e",
        "()Lq3/a/p1;",
        "messageList",
        "i",
        "(Ljava/util/List;)V",
        "a",
        "b",
        "(ZLe/a/c/a/l/b$c;)V",
        "isUpdated",
        "h",
        "(Z)V",
        "Le/a/c/a/k/b/e;",
        "Le/a/c/a/k/b/e;",
        "markImportantMessageUseCase",
        "Le/a/c/c0/o;",
        "Le/a/c/c0/o;",
        "insightsConfig",
        "Le/a/c/a/k/b/b;",
        "Le/a/c/a/k/b/b;",
        "fetchImportantMessageUseCase",
        "Le/a/c/a/k/c/b;",
        "Le/a/c/a/k/c/b;",
        "container",
        "Le/a/c/a/i/j;",
        "Le/a/c/a/i/j;",
        "analyticsUsecase",
        "Le/a/c/h/d;",
        "j",
        "Le/a/c/h/d;",
        "importantTabBadgeUpdater",
        "Ln3/v/k0;",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        "Ln3/v/k0;",
        "importantMessageStream",
        "Le/a/c/a/i/h;",
        "Le/a/c/a/i/h;",
        "lifeCycleAwareAnalyticsLogger",
        "Le/a/c/b/j;",
        "Le/a/c/b/j;",
        "insightsStatusProvider",
        "",
        "Le/a/c/a/k/c/c;",
        "c",
        "uiUpdateCommandStream",
        "<init>",
        "(Le/a/c/a/k/b/b;Le/a/c/a/k/b/e;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;Le/a/c/b/j;Le/a/c/h/d;)V",
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
.field public final a:Le/a/c/a/k/c/b;

.field public final b:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/util/Set<",
            "Le/a/c/a/k/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Le/a/c/a/k/b/b;

.field public final e:Le/a/c/a/k/b/e;

.field public final f:Le/a/c/a/i/h;

.field public final g:Le/a/c/a/i/j;

.field public final h:Le/a/c/c0/o;

.field public final i:Le/a/c/b/j;

.field public final j:Le/a/c/h/d;


# direct methods
.method public constructor <init>(Le/a/c/a/k/b/b;Le/a/c/a/k/b/e;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;Le/a/c/b/j;Le/a/c/h/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fetchImportantMessageUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "markImportantMessageUseCase"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUsecase"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importantTabBadgeUpdater"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->d:Le/a/c/a/k/b/b;

    iput-object p2, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->e:Le/a/c/a/k/b/e;

    iput-object p3, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f:Le/a/c/a/i/h;

    iput-object p4, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->g:Le/a/c/a/i/j;

    iput-object p5, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->h:Le/a/c/c0/o;

    iput-object p6, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->i:Le/a/c/b/j;

    iput-object p7, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->j:Le/a/c/h/d;

    .line 2
    new-instance p1, Le/a/c/a/k/c/b;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p0, p3}, Le/a/c/a/k/c/b;-><init>(Le/a/c/a/k/c/d;Le/a/c/a/k/d/a;I)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 3
    new-instance p1, Ln3/v/k0;

    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {p1, p2}, Ln3/v/k0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->b:Ln3/v/k0;

    .line 4
    new-instance p1, Ln3/v/k0;

    sget-object p2, Ls1/u/u;->a:Ls1/u/u;

    invoke-direct {p1, p2}, Ln3/v/k0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->c:Ln3/v/k0;

    return-void
.end method

.method public static final c(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;ZLjava/util/List;Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/c/a/l/b$c;

    :goto_0
    const-string p1, "undo"

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f(Ljava/lang/String;Le/a/c/a/l/b$c;)V

    goto :goto_2

    .line 3
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/c/a/l/b$c;

    :goto_1
    const-string p1, "undo_failed"

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f(Ljava/lang/String;Le/a/c/a/l/b$c;)V

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 5
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/l/b$c;

    const-string p2, "mark_not_important"

    invoke-virtual {p0, p2, p1}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f(Ljava/lang/String;Le/a/c/a/l/b$c;)V

    goto :goto_2

    .line 6
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_7

    const-string p1, "mark_all_as_not_important"

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f(Ljava/lang/String;Le/a/c/a/l/b$c;)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 9
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/l/b$c;

    const-string p2, "mark_not_important_failed"

    invoke-virtual {p0, p2, p1}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f(Ljava/lang/String;Le/a/c/a/l/b$c;)V

    goto :goto_2

    .line 10
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_7

    const-string p1, "mark_all_as_not_important_failed"

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f(Ljava/lang/String;Le/a/c/a/l/b$c;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 2
    iget-object v0, v0, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iget-object v0, v0, Le/a/c/a/k/c/d;->b:Ljava/util/List;

    .line 4
    invoke-static {v0}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->g(ZLjava/util/List;Ljava/util/List;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public b(ZLe/a/c/a/l/b$c;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 2
    iget-object v0, v0, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 4
    iget-object v0, v0, Le/a/c/a/k/c/d;->b:Ljava/util/List;

    .line 5
    invoke-static {v0}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->g(ZLjava/util/List;Ljava/util/List;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->b:Ln3/v/k0;

    iget-object v1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, v1, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, v1, Le/a/c/a/k/c/d;->a:Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v1, v1, Le/a/c/a/k/c/d;->b:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/a/l/b$c;

    .line 9
    new-instance v4, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;JI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Lq3/a/p1;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v0

    new-instance v3, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;-><init>(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;Le/a/c/a/l/b$c;)V
    .locals 21

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-object v2, v0, Le/a/c/a/l/b$c;->h:Le/a/c/h/m/d;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2
    :goto_0
    instance-of v2, v2, Le/a/c/h/m/d$a;

    move-object/from16 v3, p0

    .line 3
    iget-object v4, v3, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f:Le/a/c/a/i/h;

    const/16 v5, 0x7f

    const/16 v6, 0x7f

    const/4 v7, 0x1

    and-int/2addr v6, v7

    const-string v8, ""

    if-eqz v6, :cond_1

    move-object v6, v8

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    and-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_2

    move-object v9, v8

    goto :goto_2

    :cond_2
    move-object v9, v1

    :goto_2
    and-int/lit8 v10, v5, 0x4

    if-eqz v10, :cond_3

    move-object v10, v8

    goto :goto_3

    :cond_3
    move-object v10, v1

    :goto_3
    and-int/lit8 v11, v5, 0x8

    if-eqz v11, :cond_4

    move-object v11, v8

    goto :goto_4

    :cond_4
    move-object v11, v1

    :goto_4
    and-int/lit8 v12, v5, 0x10

    if-eqz v12, :cond_5

    move-object v12, v8

    goto :goto_5

    :cond_5
    move-object v12, v1

    :goto_5
    and-int/lit8 v13, v5, 0x20

    if-eqz v13, :cond_6

    goto :goto_6

    :cond_6
    move-object v8, v1

    :goto_6
    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_7

    .line 4
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_7

    :cond_7
    move-object v5, v1

    :goto_7
    const-string v13, "feature"

    .line 5
    invoke-static {v6, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "eventCategory"

    invoke-static {v9, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "eventInfo"

    invoke-static {v10, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v11, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "actionType"

    invoke-static {v12, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "actionInfo"

    invoke-static {v8, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "propertyMap"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "marked_as_important"

    const-string v6, "<set-?>"

    .line 6
    invoke-static {v9, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "inner_page_card"

    .line 7
    invoke-static {v10, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "click"

    .line 8
    invoke-static {v13, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, p1

    .line 9
    invoke-static {v14, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 10
    iget-object v1, v0, Le/a/c/a/l/b$c;->l:Ljava/lang/String;

    .line 11
    :cond_8
    invoke-static {v1, v2}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-static {v11, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 13
    iget-object v0, v0, Le/a/c/a/l/b$c;->h:Le/a/c/h/m/d;

    if-eqz v0, :cond_9

    .line 14
    invoke-virtual {v0}, Le/a/c/h/m/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    const-string v0, "marked_as_important"

    :goto_8
    move-object v12, v0

    .line 15
    invoke-static {v12, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_a

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_b

    .line 17
    new-instance v0, Le/a/c/r/d/b;

    .line 18
    new-instance v1, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1c0

    const/16 v20, 0x0

    move-object v8, v1

    move-object/from16 v14, p1

    invoke-direct/range {v8 .. v20}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 19
    invoke-static {v5}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 20
    invoke-direct {v0, v1, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 21
    invoke-interface {v4, v0}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    return-void

    .line 22
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(ZLjava/util/List;Ljava/util/List;)Lq3/a/p1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Le/a/c/a/l/b$c;",
            ">;",
            "Ljava/util/List<",
            "Le/a/c/a/l/b$c;",
            ">;)",
            "Lq3/a/p1;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v0

    new-instance v7, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b;-><init>(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;Ljava/util/List;ZLjava/util/List;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->i:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->i:Le/a/c/b/j;

    invoke-interface {v0, p1}, Le/a/c/b/j;->P(Z)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/a/l/b$c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 2
    iget-object v0, v0, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iget-object v0, v0, Le/a/c/a/k/c/d;->b:Ljava/util/List;

    .line 4
    invoke-static {v0}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v1, p1, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->g(ZLjava/util/List;Ljava/util/List;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 19
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_CREATE:Ln3/v/u$a;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->g:Le/a/c/a/i/j;

    const/4 v2, 0x1

    const-string v9, ""

    .line 2
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "feature"

    .line 3
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "page_view"

    const-string v3, "<set-?>"

    .line 4
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "marked_as_important"

    .line 5
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "view"

    .line 6
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "insights_business_tab"

    .line 7
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Le/a/c/r/d/b;

    .line 10
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v3, v14

    move-object v6, v9

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 11
    invoke-static/range {v16 .. v16}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v4, v18

    .line 12
    invoke-direct {v2, v4, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 13
    invoke-virtual {v1, v2}, Le/a/c/a/i/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
