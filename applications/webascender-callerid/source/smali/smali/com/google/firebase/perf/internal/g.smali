.class final synthetic Lcom/google/firebase/perf/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/perf/internal/GaugeManager;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/firebase/perf/j/d;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/j/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/g;->f:Lcom/google/firebase/perf/internal/GaugeManager;

    iput-object p2, p0, Lcom/google/firebase/perf/internal/g;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/perf/internal/g;->h:Lcom/google/firebase/perf/j/d;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/j/d;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/internal/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/perf/internal/g;-><init>(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/j/d;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/perf/internal/g;->f:Lcom/google/firebase/perf/internal/GaugeManager;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/perf/internal/g;->h:Lcom/google/firebase/perf/j/d;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/perf/internal/GaugeManager;->lambda$startCollectingGauges$0(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method
