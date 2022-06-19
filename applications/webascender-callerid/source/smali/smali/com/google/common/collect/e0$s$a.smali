.class final Lcom/google/common/collect/e0$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0$s;
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
        "Lcom/google/common/collect/e0$s<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e0$t<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/e0$s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0$s$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$s$a;

    invoke-direct {v0}, Lcom/google/common/collect/e0$s$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e0$s$a;->a:Lcom/google/common/collect/e0$s$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/e0$s$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e0$s$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/e0$s$a;->a:Lcom/google/common/collect/e0$s$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/e0$n;Lcom/google/common/collect/e0$i;Lcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$i;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$t;

    check-cast p2, Lcom/google/common/collect/e0$s;

    check-cast p3, Lcom/google/common/collect/e0$s;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$s$a;->g(Lcom/google/common/collect/e0$t;Lcom/google/common/collect/e0$s;Lcom/google/common/collect/e0$s;)Lcom/google/common/collect/e0$s;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/e0$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/e0$p;->STRONG:Lcom/google/common/collect/e0$p;

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
    check-cast p1, Lcom/google/common/collect/e0$t;

    check-cast p2, Lcom/google/common/collect/e0$s;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$s$a;->k(Lcom/google/common/collect/e0$t;Lcom/google/common/collect/e0$s;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$s$a;->j(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/google/common/collect/e0$n;Ljava/lang/Object;ILcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$i;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$t;

    check-cast p4, Lcom/google/common/collect/e0$s;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e0$s$a;->i(Lcom/google/common/collect/e0$t;Ljava/lang/Object;ILcom/google/common/collect/e0$s;)Lcom/google/common/collect/e0$s;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/e0$t;Lcom/google/common/collect/e0$s;Lcom/google/common/collect/e0$s;)Lcom/google/common/collect/e0$s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/e0$n;->n(Lcom/google/common/collect/e0$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e0$t;->G(Lcom/google/common/collect/e0$t;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/e0$s;->d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$s;)Lcom/google/common/collect/e0$s;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/e0$t;Ljava/lang/Object;ILcom/google/common/collect/e0$s;)Lcom/google/common/collect/e0$s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$t<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/common/collect/e0$s;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/e0$s;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e0$s;)V

    return-object p1
.end method

.method public j(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0<",
            "TK;TV;",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$t<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/e0$t<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$t;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/e0$t;-><init>(Lcom/google/common/collect/e0;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/e0$t;Lcom/google/common/collect/e0$s;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$s<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/e0$t;->G(Lcom/google/common/collect/e0$t;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/common/collect/e0$s;->e(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
