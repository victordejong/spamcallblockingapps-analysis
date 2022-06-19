.class final Lcom/google/common/collect/e0$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0$w;
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
        "Lcom/google/common/collect/e0$w<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e0$x<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/e0$w$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0$w$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$w$a;

    invoke-direct {v0}, Lcom/google/common/collect/e0$w$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e0$w$a;->a:Lcom/google/common/collect/e0$w$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/e0$w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e0$w$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/e0$w$a;->a:Lcom/google/common/collect/e0$w$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/e0$n;Lcom/google/common/collect/e0$i;Lcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$i;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$x;

    check-cast p2, Lcom/google/common/collect/e0$w;

    check-cast p3, Lcom/google/common/collect/e0$w;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$w$a;->g(Lcom/google/common/collect/e0$x;Lcom/google/common/collect/e0$w;Lcom/google/common/collect/e0$w;)Lcom/google/common/collect/e0$w;

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
    sget-object v0, Lcom/google/common/collect/e0$p;->STRONG:Lcom/google/common/collect/e0$p;

    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/common/collect/e0$n;Lcom/google/common/collect/e0$i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$x;

    check-cast p2, Lcom/google/common/collect/e0$w;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$w$a;->k(Lcom/google/common/collect/e0$x;Lcom/google/common/collect/e0$w;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$w$a;->j(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/google/common/collect/e0$n;Ljava/lang/Object;ILcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$i;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$x;

    check-cast p4, Lcom/google/common/collect/e0$w;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e0$w$a;->i(Lcom/google/common/collect/e0$x;Ljava/lang/Object;ILcom/google/common/collect/e0$w;)Lcom/google/common/collect/e0$w;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/e0$x;Lcom/google/common/collect/e0$w;Lcom/google/common/collect/e0$w;)Lcom/google/common/collect/e0$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$x<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/common/collect/e0$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e0$x;->G(Lcom/google/common/collect/e0$x;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/e0$w;->d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$w;)Lcom/google/common/collect/e0$w;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/e0$x;Ljava/lang/Object;ILcom/google/common/collect/e0$w;)Lcom/google/common/collect/e0$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$x<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$w;

    invoke-static {p1}, Lcom/google/common/collect/e0$x;->G(Lcom/google/common/collect/e0$x;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/e0$w;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e0$w;)V

    return-object v0
.end method

.method public j(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0<",
            "TK;TV;",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$x<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/e0$x<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$x;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/e0$x;-><init>(Lcom/google/common/collect/e0;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/e0$x;Lcom/google/common/collect/e0$w;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$x<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$w<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/common/collect/e0$w;->e(Ljava/lang/Object;)V

    return-void
.end method
