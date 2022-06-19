.class final Lcom/google/common/collect/e0$q;
.super Lcom/google/common/collect/e0$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e0$q$a;
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
        "Lcom/google/common/collect/e0$q<",
        "TK;TV;>;>;",
        "Ljava/lang/Object<",
        "TK;TV;",
        "Lcom/google/common/collect/e0$q<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/e0$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/e0$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e0$i;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/e0$q;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method d(Lcom/google/common/collect/e0$q;)Lcom/google/common/collect/e0$q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$q;

    iget-object v1, p0, Lcom/google/common/collect/e0$c;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/e0$c;->b:I

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/e0$q;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e0$q;)V

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/e0$q;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/common/collect/e0$q;->d:Ljava/lang/Object;

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
    iput-object p1, p0, Lcom/google/common/collect/e0$q;->d:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/common/collect/e0$q;->d:Ljava/lang/Object;

    return-object v0
.end method
