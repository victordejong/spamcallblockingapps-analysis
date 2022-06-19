.class final Lcom/google/common/collect/e0$r;
.super Lcom/google/common/collect/e0$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e0$n<",
        "TK;TV;",
        "Lcom/google/common/collect/e0$q<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e0$r<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/e0;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0<",
            "TK;TV;",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$r<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e0$n;-><init>(Lcom/google/common/collect/e0;II)V

    return-void
.end method


# virtual methods
.method bridge synthetic D()Lcom/google/common/collect/e0$n;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0$r;->G()Lcom/google/common/collect/e0$r;

    return-object p0
.end method

.method G()Lcom/google/common/collect/e0$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e0$r<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method
