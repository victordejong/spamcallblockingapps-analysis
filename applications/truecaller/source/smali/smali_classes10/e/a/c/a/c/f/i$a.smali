.class public final Le/a/c/a/c/f/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/f/i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/q/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/f/i;

.field public final synthetic b:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/i;Lq3/a/x2/g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/i$a;->a:Le/a/c/a/c/f/i;

    iput-object p2, p0, Le/a/c/a/c/f/i$a;->b:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/c/q/k;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/c/f/i$a;->b:Lq3/a/x2/g;

    iget-object v1, p0, Le/a/c/a/c/f/i$a;->a:Le/a/c/a/c/f/i;

    iget-object v1, v1, Le/a/c/a/c/f/i;->g:Le/a/c/a/c/f/j;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "items"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 5
    sget v4, Lcom/truecaller/insights/ui/R$string;->updates:I

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    sget v3, Lcom/truecaller/insights/ui/R$string;->updates_subtitle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    const-wide/16 v7, 0x0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Le/a/c/a/c/f/j;->d(I)Le/a/c/a/c/g/c;

    move-result-object v9

    const/4 v10, 0x0

    .line 8
    iget-object v1, v1, Le/a/c/a/c/f/j;->e:Le/a/c/c0/o;

    invoke-interface {v1}, Le/a/c/c0/o;->p0()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/truecaller/insights/ui/R$string;->updates_page_view_all_tooltip:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    const/4 v11, 0x0

    const/16 v12, 0x54

    move-object v3, v2

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    move-object v10, v1

    .line 9
    invoke-direct/range {v3 .. v12}, Lcom/truecaller/insights/ui/models/AdapterItem$i;-><init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    const-wide/16 v3, -0x334b

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Le/a/c/q/k;

    .line 13
    new-instance v6, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    const/4 v7, 0x0

    .line 14
    invoke-static {v5, v7}, Le/a/c/a/c/h/m/a;->f(Le/a/c/q/k;Z)Le/a/c/a/l/b$h;

    move-result-object v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    .line 15
    invoke-direct {v6, v5, v7, v8, v9}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;JI)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance p1, Le/a/c/a/l/b$i;

    invoke-direct {p1, v3, v4, v1}, Le/a/c/a/l/b$i;-><init>(JLjava/util/List;)V

    .line 16
    new-instance v1, Le/a/c/a/c/g/f;

    invoke-direct {v1, v2, p1}, Le/a/c/a/c/g/f;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Le/a/c/a/l/b$i;)V

    .line 17
    invoke-interface {v0, v1, p2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_3

    return-object p1

    .line 18
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
