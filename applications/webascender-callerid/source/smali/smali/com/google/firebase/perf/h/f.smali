.class final synthetic Lcom/google/firebase/perf/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/perf/h/k;

.field private final g:Lcom/google/firebase/perf/h/c;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/h/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/h/f;->f:Lcom/google/firebase/perf/h/k;

    iput-object p2, p0, Lcom/google/firebase/perf/h/f;->g:Lcom/google/firebase/perf/h/c;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/h/c;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/h/f;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/perf/h/f;-><init>(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/h/c;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/h/f;->f:Lcom/google/firebase/perf/h/k;

    iget-object v1, p0, Lcom/google/firebase/perf/h/f;->g:Lcom/google/firebase/perf/h/c;

    invoke-static {v0, v1}, Lcom/google/firebase/perf/h/k;->p(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/h/c;)V

    return-void
.end method
