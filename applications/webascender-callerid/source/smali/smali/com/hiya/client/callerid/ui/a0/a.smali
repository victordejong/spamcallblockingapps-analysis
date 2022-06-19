.class public final Lcom/hiya/client/callerid/ui/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/client/callerid/ui/y/a;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/y/a;)V
    .locals 1

    const-string v0, "callLogDbOp"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/a;->a:Lcom/hiya/client/callerid/ui/y/a;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/a0/a;Lcom/hiya/client/callerid/ui/b0/j;J)Lcom/hiya/client/callerid/ui/b0/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/client/callerid/ui/a0/a;->c(Lcom/hiya/client/callerid/ui/b0/j;J)Lcom/hiya/client/callerid/ui/b0/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/ui/a0/a;Lcom/hiya/client/callerid/ui/b0/j;)Lcom/hiya/client/callerid/ui/b0/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/a;->e(Lcom/hiya/client/callerid/ui/b0/j;)Lcom/hiya/client/callerid/ui/b0/c;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lcom/hiya/client/callerid/ui/b0/j;J)Lcom/hiya/client/callerid/ui/b0/c;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/a;->a:Lcom/hiya/client/callerid/ui/y/a;

    const-wide/16 v1, 0x7d0

    sub-long v1, p2, v1

    const/16 v3, 0xa

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/hiya/client/callerid/ui/y/a;->a(Lcom/hiya/client/callerid/ui/b0/j;IJ)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_2

    check-cast v5, Lcom/hiya/client/callerid/ui/b0/c;

    .line 3
    invoke-virtual {v5}, Lcom/hiya/client/callerid/ui/b0/c;->b()J

    move-result-wide v7

    sub-long v7, p2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v5, v7, v1

    if-ltz v5, :cond_0

    if-nez v4, :cond_1

    :cond_0
    move v3, v4

    move-wide v1, v7

    :cond_1
    move v4, v6

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lkotlin/s/k;->p()V

    const/4 p1, 0x0

    throw p1

    .line 5
    :cond_3
    invoke-static {p1, v3}, Lkotlin/s/k;->M(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/b0/c;

    return-object p1
.end method

.method private final e(Lcom/hiya/client/callerid/ui/b0/j;)Lcom/hiya/client/callerid/ui/b0/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/a;->a:Lcom/hiya/client/callerid/ui/y/a;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/hiya/client/callerid/ui/y/a;->b(Lcom/hiya/client/callerid/ui/b0/j;IJ)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/client/callerid/ui/b0/c;

    return-object p1
.end method


# virtual methods
.method public final d(Lcom/hiya/client/callerid/ui/b0/j;J)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/b0/j;",
            "J)",
            "Li/c/b0/b/p<",
            "Lcom/hiya/client/callerid/ui/b0/c;",
            ">;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/a$a;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/hiya/client/callerid/ui/a0/a$a;-><init>(Lcom/hiya/client/callerid/ui/a0/a;JLcom/hiya/client/callerid/ui/b0/j;)V

    invoke-static {v0}, Li/c/b0/b/p;->e(Li/c/b0/b/s;)Li/c/b0/b/p;

    move-result-object p1

    const-string p2, "Maybe.create {\n         \u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
