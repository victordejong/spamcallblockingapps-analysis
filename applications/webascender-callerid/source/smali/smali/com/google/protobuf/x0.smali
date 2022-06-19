.class final Lcom/google/protobuf/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/w0;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/protobuf/y;

    sget-object v0, Lcom/google/protobuf/y$f;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/y$f;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/y;->B(Lcom/google/protobuf/y$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
