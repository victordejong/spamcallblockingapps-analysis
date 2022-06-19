.class final Lcom/google/common/collect/e0$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0$q;
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
        "Lcom/google/common/collect/e0$q<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e0$r<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/e0$q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0$q$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$q$a;

    invoke-direct {v0}, Lcom/google/common/collect/e0$q$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e0$q$a;->a:Lcom/google/common/collect/e0$q$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/e0$q$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e0$q$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/e0$q$a;->a:Lcom/google/common/collect/e0$q$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/e0$n;Lcom/google/common/collect/e0$i;Lcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$i;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$r;

    check-cast p2, Lcom/google/common/collect/e0$q;

    check-cast p3, Lcom/google/common/collect/e0$q;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$q$a;->g(Lcom/google/common/collect/e0$r;Lcom/google/common/collect/e0$q;Lcom/google/common/collect/e0$q;)Lcom/google/common/collect/e0$q;

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
    sget-object v0, Lcom/google/common/collect/e0$p;->STRONG:Lcom/google/common/collect/e0$p;

    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/common/collect/e0$n;Lcom/google/common/collect/e0$i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$r;

    check-cast p2, Lcom/google/common/collect/e0$q;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$q$a;->k(Lcom/google/common/collect/e0$r;Lcom/google/common/collect/e0$q;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e0$q$a;->j(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/google/common/collect/e0$n;Ljava/lang/Object;ILcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$i;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/e0$r;

    check-cast p4, Lcom/google/common/collect/e0$q;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e0$q$a;->i(Lcom/google/common/collect/e0$r;Ljava/lang/Object;ILcom/google/common/collect/e0$q;)Lcom/google/common/collect/e0$q;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/e0$r;Lcom/google/common/collect/e0$q;Lcom/google/common/collect/e0$q;)Lcom/google/common/collect/e0$q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$r<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/common/collect/e0$q;->d(Lcom/google/common/collect/e0$q;)Lcom/google/common/collect/e0$q;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/e0$r;Ljava/lang/Object;ILcom/google/common/collect/e0$q;)Lcom/google/common/collect/e0$q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$r<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/common/collect/e0$q;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/e0$q;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e0$q;)V

    return-object p1
.end method

.method public j(Lcom/google/common/collect/e0;II)Lcom/google/common/collect/e0$r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0<",
            "TK;TV;",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$r<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/e0$r<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$r;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/e0$r;-><init>(Lcom/google/common/collect/e0;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/e0$r;Lcom/google/common/collect/e0$q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e0$r<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e0$q<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/common/collect/e0$q;->e(Ljava/lang/Object;)V

    return-void
.end method
