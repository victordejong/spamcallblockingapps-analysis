.class Lcom/google/common/collect/i0$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i0$a$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/g<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/i0$a$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i0$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/i0$a$a$a;->f:Lcom/google/common/collect/i0$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i0$a$a$a;->f:Lcom/google/common/collect/i0$a$a;

    iget-object v0, v0, Lcom/google/common/collect/i0$a$a;->f:Lcom/google/common/collect/i0$a;

    invoke-static {v0}, Lcom/google/common/collect/i0$a;->c(Lcom/google/common/collect/i0$a;)Lcom/google/common/collect/h0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/h0;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i0$a$a$a;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
