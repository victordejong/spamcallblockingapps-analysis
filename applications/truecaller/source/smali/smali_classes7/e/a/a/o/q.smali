.class public final Le/a/a/o/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/p;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/o/q;->b:Landroid/content/Context;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const v0, 0x7f12035b

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 2
    invoke-static {p0, v0, v1, v2}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, p1, v3

    const v0, 0x7f12035d

    .line 3
    invoke-static {p0, v0, v1, v2}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, p1, v3

    const v0, 0x7f12035e

    .line 4
    invoke-static {p0, v0, v1, v2}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const v0, 0x7f12035c

    .line 5
    invoke-static {p0, v0, v1, v2}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 6
    iput-object p1, p0, Le/a/a/o/q;->a:[Ljava/lang/String;

    return-void
.end method

.method public static e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;
    .locals 1

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    iget-object p0, p0, Le/a/a/o/q;->b:Landroid/content/Context;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(string, arg)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 3

    long-to-float p1, p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/16 v1, 0x400

    int-to-float v1, v1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    .line 1
    iget-object v2, p0, Le/a/a/o/q;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    div-float/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "%.1f "

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/a/o/q;->a:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, p2

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {v2, v1, v0, p1}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(JIIZ)Le/a/a/o/e;
    .locals 4

    .line 1
    new-instance v0, Le/a/a/o/e;

    .line 2
    iget-object v1, p0, Le/a/a/o/q;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-static {v1, p3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p3

    if-eqz p5, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Le/a/a/o/q;->a(J)Ljava/lang/String;

    move-result-object p5

    .line 4
    iget-object v1, p0, Le/a/a/o/q;->b:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    invoke-virtual {v1, p4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "context.getString(string, arg)"

    invoke-static {p4, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    const/4 v1, 0x2

    .line 5
    invoke-static {p0, p4, p5, v1}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-direct {v0, p1, p2, p3, p4}, Le/a/a/o/e;-><init>(JILjava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Le/a/a/o/e;",
            ">;"
        }
    .end annotation

    const-string v0, "mediaSizeByType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/k;

    .line 3
    iget-object v8, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 5
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 6
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v10, 0x4

    if-eq v5, v10, :cond_2

    const/4 v10, 0x5

    if-eq v5, v10, :cond_1

    const/16 v10, 0x64

    if-eq v5, v10, :cond_0

    add-long/2addr v3, v8

    goto :goto_0

    .line 7
    :cond_0
    new-instance v5, Le/a/a/o/e;

    const v10, 0x7f040607

    invoke-virtual {p0, v10}, Le/a/a/o/q;->d(I)I

    move-result v10

    const v11, 0x7f120350

    invoke-static {p0, v11, v6, v7}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v9, v10, v6}, Le/a/a/o/e;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance v5, Le/a/a/o/e;

    const v10, 0x7f040608

    invoke-virtual {p0, v10}, Le/a/a/o/q;->d(I)I

    move-result v10

    const v11, 0x7f120352

    invoke-static {p0, v11, v6, v7}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v9, v10, v6}, Le/a/a/o/e;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    new-instance v5, Le/a/a/o/e;

    const v10, 0x7f040606

    invoke-virtual {p0, v10}, Le/a/a/o/q;->d(I)I

    move-result v10

    const v11, 0x7f12034e

    invoke-static {p0, v11, v6, v7}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v9, v10, v6}, Le/a/a/o/e;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    new-instance v5, Le/a/a/o/e;

    const v10, 0x7f04060b

    invoke-virtual {p0, v10}, Le/a/a/o/q;->d(I)I

    move-result v10

    const v11, 0x7f120357

    invoke-static {p0, v11, v6, v7}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v9, v10, v6}, Le/a/a/o/e;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11
    :cond_4
    new-instance v5, Le/a/a/o/e;

    const v10, 0x7f04060a

    invoke-virtual {p0, v10}, Le/a/a/o/q;->d(I)I

    move-result v10

    const v11, 0x7f120356

    invoke-static {p0, v11, v6, v7}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v9, v10, v6}, Le/a/a/o/e;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    cmp-long p1, v3, v1

    if-lez p1, :cond_6

    .line 12
    new-instance p1, Le/a/a/o/e;

    const v1, 0x7f040609

    invoke-virtual {p0, v1}, Le/a/a/o/q;->d(I)I

    move-result v1

    const v2, 0x7f120355

    invoke-static {p0, v2, v6, v7}, Le/a/a/o/q;->e(Le/a/a/o/q;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v3, v4, v1, v2}, Le/a/a/o/e;-><init>(JILjava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public final d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/o/q;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-static {v0, p1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method
