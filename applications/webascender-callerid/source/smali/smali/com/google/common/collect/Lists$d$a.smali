.class Lcom/google/common/collect/Lists$d$a;
.super Lcom/google/common/collect/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$d;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/w0<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/google/common/collect/Lists$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$d;Ljava/util/ListIterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Lists$d$a;->g:Lcom/google/common/collect/Lists$d;

    invoke-direct {p0, p2}, Lcom/google/common/collect/w0;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Lists$d$a;->g:Lcom/google/common/collect/Lists$d;

    iget-object v0, v0, Lcom/google/common/collect/Lists$d;->g:Lcom/google/common/base/g;

    invoke-interface {v0, p1}, Lcom/google/common/base/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
