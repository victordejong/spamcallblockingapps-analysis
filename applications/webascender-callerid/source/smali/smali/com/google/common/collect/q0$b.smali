.class final Lcom/google/common/collect/q0$b;
.super Lcom/google/common/collect/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/z<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient h:Lcom/google/common/collect/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient i:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/y;Lcom/google/common/collect/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/y<",
            "TK;*>;",
            "Lcom/google/common/collect/x<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/z;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/q0$b;->h:Lcom/google/common/collect/y;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/q0$b;->i:Lcom/google/common/collect/x;

    return-void
.end method


# virtual methods
.method public c()Lcom/google/common/collect/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q0$b;->i:Lcom/google/common/collect/x;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q0$b;->h:Lcom/google/common/collect/y;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/q0$b;->c()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x;->d([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/q0$b;->k()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Lcom/google/common/collect/x0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/q0$b;->c()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x;->k()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/q0$b;->h:Lcom/google/common/collect/y;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
