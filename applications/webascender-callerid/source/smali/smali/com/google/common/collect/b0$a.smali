.class final Lcom/google/common/collect/b0$a;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b0;->i(Ljava/util/Iterator;Lcom/google/common/base/n;)Lcom/google/common/collect/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic h:Ljava/util/Iterator;

.field final synthetic i:Lcom/google/common/base/n;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b0$a;->h:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/b0$a;->i:Lcom/google/common/base/n;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b0$a;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b0$a;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/b0$a;->i:Lcom/google/common/base/n;

    invoke-interface {v1, v0}, Lcom/google/common/base/n;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
