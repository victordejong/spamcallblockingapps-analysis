.class final Lcom/google/common/collect/e0$s;
.super Lcom/google/common/collect/e0$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e0$s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e0$c<",
        "TK;TV;",
        "Lcom/google/common/collect/e0$s<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/e0$a0<",
        "TK;TV;",
        "Lcom/google/common/collect/e0$s<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile d:Lcom/google/common/collect/e0$b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0$b0<",
            "TK;TV;",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/e0$s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e0$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e0$i;)V

    .line 2
    invoke-static {}, Lcom/google/common/collect/e0;->m()Lcom/google/common/collect/e0$b0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/e0$s;->d:Lcom/google/common/collect/e0$b0;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/e0$b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e0$b0<",
            "TK;TV;",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$s;->d:Lcom/google/common/collect/e0$b0;

    return-object v0
.end method

.method d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$s;)Lcom/google/common/collect/e0$s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$s;

    iget-object v1, p0, Lcom/google/common/collect/e0$c;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/e0$c;->b:I

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/collect/e0$s;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e0$s;)V

    .line 2
    iget-object p2, p0, Lcom/google/common/collect/e0$s;->d:Lcom/google/common/collect/e0$b0;

    invoke-interface {p2, p1, v0}, Lcom/google/common/collect/e0$b0;->b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$b0;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/collect/e0$s;->d:Lcom/google/common/collect/e0$b0;

    return-object v0
.end method

.method e(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0$s;->d:Lcom/google/common/collect/e0$b0;

    .line 2
    new-instance v1, Lcom/google/common/collect/e0$c0;

    invoke-direct {v1, p2, p1, p0}, Lcom/google/common/collect/e0$c0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/e0$i;)V

    iput-object v1, p0, Lcom/google/common/collect/e0$s;->d:Lcom/google/common/collect/e0$b0;

    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/e0$b0;->clear()V

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
    iget-object v0, p0, Lcom/google/common/collect/e0$s;->d:Lcom/google/common/collect/e0$b0;

    invoke-interface {v0}, Lcom/google/common/collect/e0$b0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
