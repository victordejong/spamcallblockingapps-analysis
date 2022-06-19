.class final Lcom/google/common/collect/e0$y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0$y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/e0$j<",
        "TK;TV;",
        "Lcom/google/common/collect/e0$y<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e0$z<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/e0$y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0$y$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$y$a;

    invoke-direct {v0}, Lcom/google/common/collect/e0$y$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e0$y$a;->a:Lcom/google/common/collect/e0$y$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/e0$y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e0$y$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/e0$y$a;->a:Lcom/google/common/collect/e0$y$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/e0$n;Lcom/google/common/collect/e0$i;Lcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$i;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$z;

    check-cast p2, Lcom/google/common/collect/e0$y;

    check-cast p3, Lcom/google/common/collect/e0$y;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$y$a;->g(Lcom/google/common/collect/e0$z;Lcom/google/common/collect/e0$y;Lcom/google/common/collect/e0$y;)Lcom/google/common/collect/e0$y;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/e0$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/e0$p;->WEAK:Lcom/google/common/collect/e0$p;

    return-object v0
.end method

.method public c()Lcom/google/common/collect/e0$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/e0$p;->WEAK:Lcom/google/common/collect/e0$p;

    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/common/collect/e0$n;Lcom/google/common/collect/e0$i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$z;

    check-cast p2, Lcom/google/common/collect/e0$y;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$y$a;->k(Lcom/google/common/collect/e0$z;Lcom/google/common/collect/e0$y;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$y$a;->j(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/google/common/collect/e0$n;Ljava/lang/Object;ILcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$i;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$z;

    check-cast p4, Lcom/google/common/collect/e0$y;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e0$y$a;->i(Lcom/google/common/collect/e0$z;Ljava/lang/Object;ILcom/google/common/collect/e0$y;)Lcom/google/common/collect/e0$y;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/e0$z;Lcom/google/common/collect/e0$y;Lcom/google/common/collect/e0$y;)Lcom/google/common/collect/e0$y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$z<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$y<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$y<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$y<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/common/collect/e0$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/e0$n;->n(Lcom/google/common/collect/e0$i;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/e0$z;->G(Lcom/google/common/collect/e0$z;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/e0$z;->H(Lcom/google/common/collect/e0$z;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, v0, p1, p3}, Lcom/google/common/collect/e0$y;->d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$y;)Lcom/google/common/collect/e0$y;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/e0$z;Ljava/lang/Object;ILcom/google/common/collect/e0$y;)Lcom/google/common/collect/e0$y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$z<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/e0$y<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$y<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$y;

    invoke-static {p1}, Lcom/google/common/collect/e0$z;->G(Lcom/google/common/collect/e0$z;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/e0$y;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e0$y;)V

    return-object v0
.end method

.method public j(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0<",
            "TK;TV;",
            "Lcom/google/common/collect/e0$y<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$z<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/e0$z<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$z;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/e0$z;-><init>(Lcom/google/common/collect/e0;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/e0$z;Lcom/google/common/collect/e0$y;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$z<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$y<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/e0$z;->H(Lcom/google/common/collect/e0$z;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/common/collect/e0$y;->e(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
