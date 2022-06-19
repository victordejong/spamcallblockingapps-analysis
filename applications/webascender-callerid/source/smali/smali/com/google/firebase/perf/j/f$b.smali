.class public final Lcom/google/firebase/perf/j/f$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lcom/google/firebase/perf/j/f;",
        "Lcom/google/firebase/perf/j/f$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/j/f;->W()Lcom/google/firebase/perf/j/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/j/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G(I)Lcom/google/firebase/perf/j/f$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/f;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/f;->a0(Lcom/google/firebase/perf/j/f;I)V

    return-object p0
.end method

.method public H(I)Lcom/google/firebase/perf/j/f$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/f;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/f;->Y(Lcom/google/firebase/perf/j/f;I)V

    return-object p0
.end method

.method public I(I)Lcom/google/firebase/perf/j/f$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/f;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/f;->Z(Lcom/google/firebase/perf/j/f;I)V

    return-object p0
.end method

.method public J(Ljava/lang/String;)Lcom/google/firebase/perf/j/f$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/f;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/f;->X(Lcom/google/firebase/perf/j/f;Ljava/lang/String;)V

    return-object p0
.end method
