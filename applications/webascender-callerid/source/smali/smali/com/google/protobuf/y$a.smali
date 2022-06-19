.class public abstract Lcom/google/protobuf/y$a;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/y<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/y$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final f:Lcom/google/protobuf/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected g:Lcom/google/protobuf/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected h:Z


# direct methods
.method protected constructor <init>(Lcom/google/protobuf/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/y$a;->f:Lcom/google/protobuf/y;

    .line 3
    sget-object v0, Lcom/google/protobuf/y$f;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/y$f;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/protobuf/y;->B(Lcom/google/protobuf/y$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/y;

    iput-object p1, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/protobuf/y$a;->h:Z

    return-void
.end method

.method private F(Lcom/google/protobuf/y;Lcom/google/protobuf/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/c1;->a()Lcom/google/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/c1;->e(Ljava/lang/Object;)Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/g1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final A()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/y$a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->B()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/y$a;->h:Z

    :cond_0
    return-void
.end method

.method protected B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    sget-object v1, Lcom/google/protobuf/y$f;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/y$f;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/y;->B(Lcom/google/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/y;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/y$a;->F(Lcom/google/protobuf/y;Lcom/google/protobuf/y;)V

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    return-void
.end method

.method public C()Lcom/google/protobuf/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$a;->f:Lcom/google/protobuf/y;

    return-object v0
.end method

.method protected D(Lcom/google/protobuf/y;)Lcom/google/protobuf/y$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y$a;->E(Lcom/google/protobuf/y;)Lcom/google/protobuf/y$a;

    return-object p0
.end method

.method public E(Lcom/google/protobuf/y;)Lcom/google/protobuf/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/y$a;->F(Lcom/google/protobuf/y;Lcom/google/protobuf/y;)V

    return-object p0
.end method

.method public bridge synthetic N0()Lcom/google/protobuf/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->y()Lcom/google/protobuf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Lcom/google/protobuf/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->C()Lcom/google/protobuf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/google/protobuf/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->z()Lcom/google/protobuf/y$a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic u(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/y;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y$a;->D(Lcom/google/protobuf/y;)Lcom/google/protobuf/y$a;

    return-object p0
.end method

.method public final x()Lcom/google/protobuf/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->y()Lcom/google/protobuf/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/y;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->w(Lcom/google/protobuf/r0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public y()Lcom/google/protobuf/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/y$a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    invoke-virtual {v0}, Lcom/google/protobuf/y;->K()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/protobuf/y$a;->h:Z

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    return-object v0
.end method

.method public z()Lcom/google/protobuf/y$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->C()Lcom/google/protobuf/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/y;->N()Lcom/google/protobuf/y$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->y()Lcom/google/protobuf/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/y$a;->E(Lcom/google/protobuf/y;)Lcom/google/protobuf/y$a;

    return-object v0
.end method
