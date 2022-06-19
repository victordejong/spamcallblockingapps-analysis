.class final synthetic Lcom/google/firebase/perf/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/firebase/perf/h/k;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/h/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/h/g;->f:Lcom/google/firebase/perf/h/k;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/h/k;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/h/g;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/h/g;-><init>(Lcom/google/firebase/perf/h/k;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/h/g;->f:Lcom/google/firebase/perf/h/k;

    invoke-static {v0}, Lcom/google/firebase/perf/h/k;->t(Lcom/google/firebase/perf/h/k;)V

    return-void
.end method
