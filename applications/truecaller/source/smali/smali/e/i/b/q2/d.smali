.class public Le/i/b/q2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/q2/e;


# instance fields
.field public a:I

.field public final b:Le/i/b/s2/f;


# direct methods
.method public constructor <init>(Le/i/b/s2/f;)V
    .locals 1

    const-string v0, "buildConfigWrapper"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/q2/d;->b:Le/i/b/s2/f;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/i/b/q2/d;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/i/b/q2/f;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "tag"

    invoke-static {v1, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "logMessage"

    invoke-static {v2, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v4, v2, Le/i/b/q2/f;->a:I

    .line 2
    iget v5, v0, Le/i/b/q2/d;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    const/4 v7, 0x0

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_2
    iget-object v5, v0, Le/i/b/q2/d;->b:Le/i/b/s2/f;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x5

    :goto_2
    if-lt v4, v5, :cond_3

    move v5, v9

    goto :goto_3

    :cond_3
    move v5, v8

    :goto_3
    if-nez v5, :cond_4

    return-void

    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 3
    iget-object v6, v2, Le/i/b/q2/f;->b:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 4
    iget-object v2, v2, Le/i/b/q2/f;->c:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    const-string v6, "throwable"

    .line 5
    invoke-static {v2, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    aput-object v7, v5, v9

    .line 7
    invoke-static {v5}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const-string v11, "\n"

    .line 8
    invoke-static/range {v10 .. v17}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    move v8, v9

    :cond_6
    if-eqz v8, :cond_7

    .line 10
    invoke-static {v1, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "message"

    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static/range {p1 .. p1}, Le/i/b/q2/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
