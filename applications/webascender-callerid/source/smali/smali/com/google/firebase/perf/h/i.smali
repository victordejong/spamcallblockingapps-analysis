.class final synthetic Lcom/google/firebase/perf/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/perf/h/k;

.field private final g:Lcom/google/firebase/perf/j/h;

.field private final h:Lcom/google/firebase/perf/j/d;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/h/i;->f:Lcom/google/firebase/perf/h/k;

    iput-object p2, p0, Lcom/google/firebase/perf/h/i;->g:Lcom/google/firebase/perf/j/h;

    iput-object p3, p0, Lcom/google/firebase/perf/h/i;->h:Lcom/google/firebase/perf/j/d;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/d;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/h/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/perf/h/i;-><init>(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/d;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/perf/h/i;->f:Lcom/google/firebase/perf/h/k;

    iget-object v1, p0, Lcom/google/firebase/perf/h/i;->g:Lcom/google/firebase/perf/j/h;

    iget-object v2, p0, Lcom/google/firebase/perf/h/i;->h:Lcom/google/firebase/perf/j/d;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/perf/h/k;->r(Lcom/google/firebase/perf/h/k;Lcom/google/firebase/perf/j/h;Lcom/google/firebase/perf/j/d;)V

    return-void
.end method
