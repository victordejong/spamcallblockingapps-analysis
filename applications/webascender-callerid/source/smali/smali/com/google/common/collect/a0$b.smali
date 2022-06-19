.class final Lcom/google/common/collect/a0$b;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a0;->d(Ljava/lang/Iterable;Lcom/google/common/base/n;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Ljava/lang/Iterable;

.field final synthetic h:Lcom/google/common/base/n;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a0$b;->g:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/a0$b;->h:Lcom/google/common/base/n;

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a0$b;->g:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/a0$b;->h:Lcom/google/common/base/n;

    invoke-static {v0, v1}, Lcom/google/common/collect/b0;->i(Ljava/util/Iterator;Lcom/google/common/base/n;)Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method
