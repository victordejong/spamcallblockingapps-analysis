.class Lcom/google/common/collect/c0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/c0$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c0$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/c0$e;->a:Lcom/google/common/collect/c0$f;

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/c0$e;->b:Lcom/google/common/collect/c0$f;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/google/common/collect/c0$f;->k:Lcom/google/common/collect/c0$f;

    .line 5
    iput-object v0, p1, Lcom/google/common/collect/c0$f;->j:Lcom/google/common/collect/c0$f;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/google/common/collect/c0$e;->c:I

    return-void
.end method
