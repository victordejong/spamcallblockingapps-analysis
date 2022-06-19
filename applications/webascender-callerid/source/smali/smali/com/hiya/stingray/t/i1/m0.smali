.class public Lcom/hiya/stingray/t/i1/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/s0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/s0;->a()Lcom/hiya/stingray/t/s0$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/s0$a;->f(Ljava/lang/String;)Lcom/hiya/stingray/t/s0$a;

    .line 3
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/s0$a;->e(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/s0$a;

    .line 4
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/t/s0$a;->g(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/s0$a;

    .line 5
    invoke-virtual {v0}, Lcom/hiya/stingray/t/s0$a;->a()Lcom/hiya/stingray/t/s0;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Lcom/hiya/stingray/util/i$a;Ljava/lang/Integer;Lcom/hiya/stingray/t/e0;)Lcom/hiya/stingray/t/s0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/s0;->a()Lcom/hiya/stingray/t/s0$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/s0$a;->e(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/s0$a;

    .line 3
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/t/s0$a;->g(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/s0$a;

    .line 4
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/s0$a;->f(Ljava/lang/String;)Lcom/hiya/stingray/t/s0$a;

    .line 5
    invoke-virtual {v0, p5}, Lcom/hiya/stingray/t/s0$a;->d(Ljava/lang/Integer;)Lcom/hiya/stingray/t/s0$a;

    .line 6
    invoke-virtual {v0, p4}, Lcom/hiya/stingray/t/s0$a;->c(Lcom/hiya/stingray/util/i$a;)Lcom/hiya/stingray/t/s0$a;

    if-eqz p6, :cond_0

    .line 7
    invoke-virtual {p6}, Lcom/hiya/stingray/t/e0;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/s0$a;->b(Ljava/lang/Integer;)Lcom/hiya/stingray/t/s0$a;

    .line 8
    invoke-virtual {p6}, Lcom/hiya/stingray/t/e0;->f()I

    move-result p1

    invoke-static {p1}, Lcom/hiya/stingray/util/i;->b(I)Lcom/hiya/stingray/util/i$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/s0$a;->h(Lcom/hiya/stingray/util/i$b;)Lcom/hiya/stingray/t/s0$a;

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/hiya/stingray/t/s0$a;->a()Lcom/hiya/stingray/t/s0;

    move-result-object p1

    return-object p1
.end method
