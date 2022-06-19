.class final Lcom/google/common/collect/e0$w;
.super Lcom/google/common/collect/e0$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e0$w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e0$d<",
        "TK;TV;",
        "Lcom/google/common/collect/e0$w<",
        "TK;TV;>;>;",
        "Ljava/lang/Object<",
        "TK;TV;",
        "Lcom/google/common/collect/e0$w<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e0$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e0$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e0$i;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/e0$w;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$w;)Lcom/google/common/collect/e0$w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$w;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/e0$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/e0$d;->a:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/common/collect/e0$w;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e0$w;)V

    .line 3
    iget-object p1, p0, Lcom/google/common/collect/e0$w;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e0$w;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e0$w;->c:Ljava/lang/Object;

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$w;->c:Ljava/lang/Object;

    return-object v0
.end method
