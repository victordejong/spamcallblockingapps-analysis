.class public final Lcom/google/firebase/inappmessaging/a$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lcom/google/firebase/inappmessaging/a;",
        "Lcom/google/firebase/inappmessaging/a$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/a;->W()Lcom/google/firebase/inappmessaging/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/inappmessaging/a;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/a;->d0(Lcom/google/firebase/inappmessaging/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public H(Lcom/google/firebase/inappmessaging/b$b;)Lcom/google/firebase/inappmessaging/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/inappmessaging/a;

    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/b;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/a;->e0(Lcom/google/firebase/inappmessaging/a;Lcom/google/firebase/inappmessaging/b;)V

    return-object p0
.end method

.method public I(J)Lcom/google/firebase/inappmessaging/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/inappmessaging/a;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/a;->X(Lcom/google/firebase/inappmessaging/a;J)V

    return-object p0
.end method

.method public J(Lcom/google/firebase/inappmessaging/i;)Lcom/google/firebase/inappmessaging/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/inappmessaging/a;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/a;->Z(Lcom/google/firebase/inappmessaging/a;Lcom/google/firebase/inappmessaging/i;)V

    return-object p0
.end method

.method public L(Lcom/google/firebase/inappmessaging/j;)Lcom/google/firebase/inappmessaging/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/inappmessaging/a;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/a;->Y(Lcom/google/firebase/inappmessaging/a;Lcom/google/firebase/inappmessaging/j;)V

    return-object p0
.end method

.method public N(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/inappmessaging/a;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/a;->c0(Lcom/google/firebase/inappmessaging/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public O(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/inappmessaging/a;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/a;->b0(Lcom/google/firebase/inappmessaging/a;Ljava/lang/String;)V

    return-object p0
.end method

.method public P(Lcom/google/firebase/inappmessaging/h0;)Lcom/google/firebase/inappmessaging/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lcom/google/firebase/inappmessaging/a;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/a;->a0(Lcom/google/firebase/inappmessaging/a;Lcom/google/firebase/inappmessaging/h0;)V

    return-object p0
.end method
