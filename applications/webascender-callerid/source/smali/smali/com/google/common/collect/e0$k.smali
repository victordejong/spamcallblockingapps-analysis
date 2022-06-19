.class final Lcom/google/common/collect/e0$k;
.super Lcom/google/common/collect/e0$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e0<",
        "TK;TV;TE;TS;>.h<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/e0$h;-><init>(Lcom/google/common/collect/e0;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0$h;->d()Lcom/google/common/collect/e0$d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/e0$d0;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
