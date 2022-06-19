.class public final synthetic Le/m/a/h/a/g/g/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/g/n;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Long;

.field public final synthetic e:Ljava/lang/Long;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/h;->a:Ljava/lang/Integer;

    iput p2, p0, Le/m/a/h/a/g/g/h;->b:I

    iput p3, p0, Le/m/a/h/a/g/g/h;->c:I

    iput-object p4, p0, Le/m/a/h/a/g/g/h;->d:Ljava/lang/Long;

    iput-object p5, p0, Le/m/a/h/a/g/g/h;->e:Ljava/lang/Long;

    iput-object p6, p0, Le/m/a/h/a/g/g/h;->f:Ljava/util/List;

    iput-object p7, p0, Le/m/a/h/a/g/g/h;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/g/d;)Le/m/a/h/a/g/d;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Le/m/a/h/a/g/g/h;->a:Ljava/lang/Integer;

    iget v3, v0, Le/m/a/h/a/g/g/h;->b:I

    iget v4, v0, Le/m/a/h/a/g/g/h;->c:I

    iget-object v2, v0, Le/m/a/h/a/g/g/h;->d:Ljava/lang/Long;

    iget-object v5, v0, Le/m/a/h/a/g/g/h;->e:Ljava/lang/Long;

    iget-object v6, v0, Le/m/a/h/a/g/g/h;->f:Ljava/util/List;

    iget-object v7, v0, Le/m/a/h/a/g/g/h;->g:Ljava/util/List;

    sget v8, Le/m/a/h/a/g/g/a;->p:I

    if-nez p1, :cond_0

    new-instance v16, Ljava/util/ArrayList;

    .line 1
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v9 .. v17}, Le/m/a/h/a/g/d;->b(IIIJJLjava/util/List;Ljava/util/List;)Le/m/a/h/a/g/d;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v8, p1

    :goto_0
    if-nez v1, :cond_1

    .line 2
    invoke-virtual {v8}, Le/m/a/h/a/g/d;->g()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    if-nez v2, :cond_2

    .line 3
    invoke-virtual {v8}, Le/m/a/h/a/g/d;->a()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_2
    if-nez v5, :cond_3

    .line 4
    invoke-virtual {v8}, Le/m/a/h/a/g/d;->i()J

    move-result-wide v11

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :goto_3
    if-nez v6, :cond_4

    .line 6
    invoke-virtual {v8}, Le/m/a/h/a/g/d;->e()Ljava/util/List;

    move-result-object v2

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object v13, v6

    :goto_4
    if-nez v7, :cond_5

    .line 7
    invoke-virtual {v8}, Le/m/a/h/a/g/d;->d()Ljava/util/List;

    move-result-object v2

    move-object v14, v2

    goto :goto_5

    :cond_5
    move-object v14, v7

    :goto_5
    move v2, v1

    move-wide v5, v9

    move-wide v7, v11

    move-object v9, v13

    move-object v10, v14

    .line 8
    invoke-static/range {v2 .. v10}, Le/m/a/h/a/g/d;->b(IIIJJLjava/util/List;Ljava/util/List;)Le/m/a/h/a/g/d;

    move-result-object v1

    return-object v1
.end method
