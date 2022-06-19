.class Lcom/google/common/collect/l$c;
.super Lcom/google/common/collect/l$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l;->J()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l<",
        "TK;TV;>.e<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic j:Lcom/google/common/collect/l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/l;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/l$c;->j:Lcom/google/common/collect/l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/l$e;-><init>(Lcom/google/common/collect/l;Lcom/google/common/collect/l$a;)V

    return-void
.end method


# virtual methods
.method b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l$c;->j:Lcom/google/common/collect/l;

    iget-object v0, v0, Lcom/google/common/collect/l;->i:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
