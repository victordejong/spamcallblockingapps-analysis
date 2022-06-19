.class final synthetic Lcom/google/firebase/perf/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/perf/e/c;

.field private final g:Lcom/google/firebase/perf/i/g;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/e/c;Lcom/google/firebase/perf/i/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/e/a;->f:Lcom/google/firebase/perf/e/c;

    iput-object p2, p0, Lcom/google/firebase/perf/e/a;->g:Lcom/google/firebase/perf/i/g;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/e/c;Lcom/google/firebase/perf/i/g;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/e/a;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/perf/e/a;-><init>(Lcom/google/firebase/perf/e/c;Lcom/google/firebase/perf/i/g;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/e/a;->f:Lcom/google/firebase/perf/e/c;

    iget-object v1, p0, Lcom/google/firebase/perf/e/a;->g:Lcom/google/firebase/perf/i/g;

    invoke-static {v0, v1}, Lcom/google/firebase/perf/e/c;->g(Lcom/google/firebase/perf/e/c;Lcom/google/firebase/perf/i/g;)V

    return-void
.end method
