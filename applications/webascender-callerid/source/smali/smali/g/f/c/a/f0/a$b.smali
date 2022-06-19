.class public final Lg/f/c/a/f0/a$b;
.super Lcom/google/protobuf/y$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/f0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/y$a<",
        "Lg/f/c/a/f0/a;",
        "Lg/f/c/a/f0/a$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lg/f/c/a/f0/a;->W()Lg/f/c/a/f0/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/y$a;-><init>(Lcom/google/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lg/f/c/a/f0/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/f/c/a/f0/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lg/f/c/a/f0/a;

    invoke-static {v0, p1}, Lg/f/c/a/f0/a;->Y(Lg/f/c/a/f0/a;Lcom/google/protobuf/i;)V

    return-object p0
.end method

.method public H(Lg/f/c/a/f0/c;)Lg/f/c/a/f0/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lg/f/c/a/f0/a;

    invoke-static {v0, p1}, Lg/f/c/a/f0/a;->Z(Lg/f/c/a/f0/a;Lg/f/c/a/f0/c;)V

    return-object p0
.end method

.method public I(I)Lg/f/c/a/f0/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/y$a;->g:Lcom/google/protobuf/y;

    check-cast v0, Lg/f/c/a/f0/a;

    invoke-static {v0, p1}, Lg/f/c/a/f0/a;->X(Lg/f/c/a/f0/a;I)V

    return-object p0
.end method
