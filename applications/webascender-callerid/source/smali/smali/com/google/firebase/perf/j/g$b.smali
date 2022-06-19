.class public final Lcom/google/firebase/perf/j/g$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/j/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lcom/google/firebase/perf/j/g;",
        "Lcom/google/firebase/perf/j/g$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/j/g;->W()Lcom/google/firebase/perf/j/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/j/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lcom/google/firebase/perf/j/b;)Lcom/google/firebase/perf/j/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/g;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/g;->Y(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/b;)V

    return-object p0
.end method

.method public H(Lcom/google/firebase/perf/j/e;)Lcom/google/firebase/perf/j/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/g;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/g;->a0(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/e;)V

    return-object p0
.end method

.method public I(Lcom/google/firebase/perf/j/f;)Lcom/google/firebase/perf/j/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/g;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/g;->Z(Lcom/google/firebase/perf/j/g;Lcom/google/firebase/perf/j/f;)V

    return-object p0
.end method

.method public J(Ljava/lang/String;)Lcom/google/firebase/perf/j/g$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/g;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/g;->X(Lcom/google/firebase/perf/j/g;Ljava/lang/String;)V

    return-object p0
.end method
