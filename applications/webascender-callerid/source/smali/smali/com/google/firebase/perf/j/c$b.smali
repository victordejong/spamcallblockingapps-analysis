.class public final Lcom/google/firebase/perf/j/c$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lcom/google/firebase/perf/j/c;",
        "Lcom/google/firebase/perf/j/c$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/j/c;->W()Lcom/google/firebase/perf/j/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/j/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/j/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/j/c;->g0()Z

    move-result v0

    return v0
.end method

.method public H(Ljava/util/Map;)Lcom/google/firebase/perf/j/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/j/c$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/c;

    invoke-static {v0}, Lcom/google/firebase/perf/j/c;->Z(Lcom/google/firebase/perf/j/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public I(Lcom/google/firebase/perf/j/a$b;)Lcom/google/firebase/perf/j/c$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/c;

    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/j/a;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/c;->b0(Lcom/google/firebase/perf/j/c;Lcom/google/firebase/perf/j/a;)V

    return-object p0
.end method

.method public J(Ljava/lang/String;)Lcom/google/firebase/perf/j/c$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/c;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/c;->a0(Lcom/google/firebase/perf/j/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public L(Lcom/google/firebase/perf/j/d;)Lcom/google/firebase/perf/j/c$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/c;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/c;->Y(Lcom/google/firebase/perf/j/c;Lcom/google/firebase/perf/j/d;)V

    return-object p0
.end method

.method public N(Ljava/lang/String;)Lcom/google/firebase/perf/j/c$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/perf/j/c;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/j/c;->X(Lcom/google/firebase/perf/j/c;Ljava/lang/String;)V

    return-object p0
.end method
