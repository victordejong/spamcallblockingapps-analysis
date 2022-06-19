.class public final Le/a/c/a/c/f/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/f/g$b;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/c/a/l/b$g;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/c/f/g;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/c/f/g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/g$b$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/c/f/g$b$a;->b:Le/a/c/a/c/f/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/a/c/f/g$b$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/a/c/f/g$b$a$a;

    iget v3, v2, Le/a/c/a/c/f/g$b$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a/c/f/g$b$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a/c/f/g$b$a$a;

    invoke-direct {v2, v0, v1}, Le/a/c/a/c/f/g$b$a$a;-><init>(Le/a/c/a/c/f/g$b$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/a/c/f/g$b$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/a/c/f/g$b$a$a;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/a/c/f/g$b$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/List;

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Upcoming data final data: "

    .line 6
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 7
    new-instance v6, Le/a/c/a/c/g/e;

    .line 8
    new-instance v15, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 9
    sget v8, Lcom/truecaller/insights/ui/R$string;->reminders:I

    .line 10
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v5, v7

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    sget v5, Lcom/truecaller/insights/ui/R$string;->reminders_subtitle:I

    .line 11
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v5}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :cond_3
    move-object v9, v7

    :goto_1
    const-wide/16 v10, 0x0

    .line 12
    iget-object v5, v0, Le/a/c/a/c/f/g$b$a;->b:Le/a/c/a/c/f/g;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    .line 13
    iget-object v5, v5, Le/a/c/a/c/f/g;->d:Le/a/c/b/j;

    invoke-interface {v5}, Le/a/c/b/j;->N()Z

    move-result v5

    if-eqz v5, :cond_4

    if-lez v12, :cond_4

    .line 14
    new-instance v5, Le/a/c/a/c/g/c;

    sget v7, Lcom/truecaller/insights/ui/R$string;->view_all:I

    sget-object v12, Le/a/c/a/c/f/h;->b:Le/a/c/a/c/f/h;

    invoke-direct {v5, v7, v12}, Le/a/c/a/c/g/c;-><init>(ILs1/z/b/l;)V

    move-object v12, v5

    goto :goto_2

    :cond_4
    move-object v12, v7

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x54

    move-object v7, v15

    move-object/from16 v17, v15

    move-object v15, v5

    .line 15
    invoke-direct/range {v7 .. v16}, Lcom/truecaller/insights/ui/models/AdapterItem$i;-><init>(ILjava/lang/Integer;JLe/a/c/a/c/g/c;Le/a/c/a/c/g/b;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    move-object/from16 v5, v17

    .line 16
    invoke-direct {v6, v5, v4}, Le/a/c/a/c/g/e;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Ljava/util/List;)V

    const/4 v4, 0x1

    iput v4, v2, Le/a/c/a/c/f/g$b$a$a;->e:I

    invoke-interface {v1, v6, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    :goto_3
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
