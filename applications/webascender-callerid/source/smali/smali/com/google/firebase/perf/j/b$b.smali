.class public final Lcom/google/firebase/perf/j/b$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lcom/google/firebase/perf/j/b;",
        "Lcom/google/firebase/perf/j/b$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/j/b;->W()Lcom/google/firebase/perf/j/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/j/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G(J)Lcom/google/firebase/perf/j/b$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/b;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/j/b;->X(Lcom/google/firebase/perf/j/b;J)V

    return-object p0
.end method

.method public H(I)Lcom/google/firebase/perf/j/b$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/b;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/b;->Y(Lcom/google/firebase/perf/j/b;I)V

    return-object p0
.end method
