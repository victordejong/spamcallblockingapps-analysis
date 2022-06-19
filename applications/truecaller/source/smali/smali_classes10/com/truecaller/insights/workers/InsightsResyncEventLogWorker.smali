.class public final Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\r\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 ,2\u00020\u0001:\u0001\u001dB=\u0008\u0007\u0012\u0008\u0008\u0001\u0010\'\u001a\u00020&\u0012\u0008\u0008\u0001\u0010)\u001a\u00020(\u0012\u0006\u0010%\u001a\u00020 \u0012\u0006\u0010\u0011\u001a\u00020\u000c\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nR\u001c\u0010\u0011\u001a\u00020\u000c8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001c\u0010%\u001a\u00020 8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\u00a8\u0006-"
    }
    d2 = {
        "Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Ls1/s;",
        "t",
        "()V",
        "s",
        "Le/a/u3/g;",
        "c",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "featuresRegistry",
        "Le/a/c/b/j;",
        "d",
        "Le/a/c/b/j;",
        "insightsStatusProvider",
        "Le/a/c/i/m/f;",
        "e",
        "Le/a/c/i/m/f;",
        "insightsSyncStatusManager",
        "",
        "",
        "",
        "a",
        "Ljava/util/Map;",
        "measuresMap",
        "Le/a/q2/a;",
        "b",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "analytics",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/b/j;Le/a/c/i/m/f;)V",
        "f",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final f:Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker$a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/q2/a;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/c/b/j;

.field public final e:Le/a/c/i/m/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->f:Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/b/j;Le/a/c/i/m/f;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsSyncStatusManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->b:Le/a/q2/a;

    iput-object p4, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->c:Le/a/u3/g;

    iput-object p5, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->d:Le/a/c/b/j;

    iput-object p6, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->e:Le/a/c/i/m/f;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->b:Le/a/q2/a;

    return-object v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->c:Le/a/u3/g;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->d:Le/a/c/b/j;

    invoke-interface {v0}, Le/a/c/b/j;->n()Z

    move-result v0

    return v0
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->s()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->a:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v2, "linking_model_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/f;->e(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->t()V

    .line 4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v0, v2}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->e:Le/a/c/i/m/f;

    invoke-interface {v0}, Le/a/c/i/m/f;->b()V

    .line 9
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    const-string v1, "rerun_sms_event"

    .line 10
    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v1, 0x4

    new-array v1, v1, [Ls1/k;

    .line 11
    new-instance v2, Ls1/k;

    const-string v3, "true"

    const-string v4, "rerun_status"

    invoke-direct {v2, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    .line 12
    new-instance v4, Ls1/k;

    const-string v5, "enrichment_status"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 13
    new-instance v4, Ls1/k;

    const-string v5, "pay_pdo_link_status"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 14
    new-instance v3, Ls1/k;

    const-string v4, "status_message"

    const-string v5, "EVENT_LOGGER_FAILED"

    invoke-direct {v3, v4, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 15
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 16
    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->b:Le/a/q2/a;

    const-string v2, "it"

    .line 18
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 19
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v1, "Result.failure()"

    .line 20
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final s()V
    .locals 10

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v2, "rerun_catg_bank"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v2, "rerun_catg_bill"

    invoke-virtual {v1, v2, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v4, "rerun_catg_event"

    invoke-virtual {v1, v4, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 4
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v5, "rerun_catg_OTP"

    invoke-virtual {v1, v5, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 5
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v6, "rerun_catg_notif"

    invoke-virtual {v1, v6, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 6
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v7, "rerun_catg_travel"

    invoke-virtual {v1, v7, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 7
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v7, "rerun_catg_offers"

    invoke-virtual {v1, v7, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x6

    aput-object v1, v0, v7

    .line 8
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v7, "rerun_catg_delivery"

    invoke-virtual {v1, v7, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v0, v7

    .line 9
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ls1/u/i;->I0(Ljava/lang/Iterable;)I

    move-result v0

    int-to-double v0, v0

    .line 11
    iget-object v7, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->a:Ljava/util/Map;

    new-array v6, v6, [Ls1/k;

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 13
    new-instance v1, Ls1/k;

    const-string v8, "parsed_message_count"

    invoke-direct {v1, v8, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v3

    .line 14
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "message_count"

    invoke-virtual {v0, v1, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 15
    new-instance v8, Ls1/k;

    invoke-direct {v8, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v2

    .line 16
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v8, "parsing_time"

    invoke-virtual {v0, v8, v1, v2}, Ln3/m0/f;->e(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 17
    new-instance v1, Ls1/k;

    invoke-direct {v1, v8, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v4

    .line 18
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "rerun_exception_count"

    invoke-virtual {v0, v1, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 19
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, v5

    .line 20
    invoke-static {v6}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    .line 21
    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final t()V
    .locals 6

    .line 1
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    const-string v1, "rerun_sms_event"

    .line 2
    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/k;

    .line 3
    new-instance v2, Ls1/k;

    const-string v3, "rerun_status"

    const-string v4, "true"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 4
    new-instance v3, Ls1/k;

    const-string v5, "enrichment_status"

    invoke-direct {v3, v5, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v3

    const-string v4, "re_run_context"

    invoke-virtual {v3, v4}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "UNKNOWN"

    :goto_0
    const-string v5, "inputData.getString(Insi\u2026RUN_CONTEXT) ?: \"UNKNOWN\""

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Ls1/k;

    invoke-direct {v5, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    .line 7
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 8
    iget-object v1, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->a:Ljava/util/Map;

    invoke-static {v1}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 9
    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/truecaller/insights/workers/InsightsResyncEventLogWorker;->b:Le/a/q2/a;

    const-string v2, "it"

    .line 11
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
