.class public final Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->doWork()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/messaging/linkpreviews/LinkMetaData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.transport.im.FetchLinkPreviewWorker$doWork$metaData$1"
    f = "FetchLinkPreviewWorker.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:J

.field public f:I

.field public final synthetic g:Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;

.field public final synthetic h:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->g:Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;

    iput-object p2, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->h:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;

    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->g:Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;

    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->h:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;-><init>(Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;

    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->g:Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;

    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->h:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;-><init>(Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->f:I

    const/4 v2, 0x0

    const-string v3, "DateTime.now()"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-wide v0, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->e:J

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    .line 5
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-wide v5, p1, Lw3/b/a/e0/e;->a:J

    .line 7
    iget-object p1, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->g:Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;

    .line 8
    iget-object v7, p1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->b:Le/a/a/v0/a;

    if-eqz v7, :cond_5

    .line 9
    iget-object p1, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->h:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    iput-wide v5, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->e:J

    iput v4, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->f:I

    move-object v10, p0

    invoke-static/range {v7 .. v12}, Le/a/c/p/a;->b0(Le/a/a/v0/a;Ljava/lang/String;Ljava/lang/Long;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-wide v0, v5

    .line 10
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    .line 11
    new-instance v5, Lw3/b/a/b;

    invoke-direct {v5}, Lw3/b/a/b;-><init>()V

    .line 12
    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    sub-long/2addr v5, v0

    .line 14
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;->g:Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;

    if-eqz p1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 15
    :goto_1
    iget-object v0, v0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->f:Le/a/q2/a;

    if-eqz v0, :cond_4

    const-string v2, "ImWithLinkReceived"

    const-string v3, "type"

    .line 16
    invoke-static {v2, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 17
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "hasPreview"

    const-string v9, "name"

    .line 18
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "previewNeedsFetch"

    .line 20
    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "previewFetchLatency"

    long-to-double v4, v5

    .line 22
    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v7}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-object p1

    :cond_4
    const-string p1, "analytics"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "linkMetaDataExtractor"

    .line 26
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
