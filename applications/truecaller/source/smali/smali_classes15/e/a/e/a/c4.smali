.class public final Le/a/e/a/c4;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QaSetBusinessFlagsDialog$onViewCreated$1$1"
    f = "QaSetBusinessFlagsDialog.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/e/a/d4$a;


# direct methods
.method public constructor <init>(Le/a/e/a/d4$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/c4;

    iget-object v1, p0, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    invoke-direct {v0, v1, p2}, Le/a/e/a/c4;-><init>(Le/a/e/a/d4$a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/c4;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/c4;

    iget-object v1, p0, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    invoke-direct {v0, v1, p2}, Le/a/e/a/c4;-><init>(Le/a/e/a/d4$a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/c4;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/e/a/c4;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/a/c4;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/e/a/c4;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/e/a/c4;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    const-wide/16 v3, 0x1f4

    .line 4
    iput-object p1, p0, Le/a/e/a/c4;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/e/a/c4;->f:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    iget-object p1, p1, Le/a/e/a/d4$a;->b:Le/a/e/a/d4;

    invoke-static {p1}, Le/a/e/a/d4;->RA(Le/a/e/a/d4;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "phoneBusinessSender"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    iget-object v0, v0, Le/a/e/a/d4$a;->b:Le/a/e/a/d4;

    .line 7
    iget-object v4, v0, Le/a/e/a/d4;->e:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    if-eqz v4, :cond_6

    .line 8
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v5

    const-string v1, "im_business_feature_flags"

    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v8, v1

    const/4 v9, 0x0

    const-string v7, "normalized_destination = ?"

    .line 10
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 15
    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object p1, v0

    .line 17
    :goto_2
    iget-object v1, p0, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    iget-object v1, v1, Le/a/e/a/d4$a;->b:Le/a/e/a/d4;

    .line 18
    iget-object v4, v1, Le/a/e/a/d4;->f:Ls1/w/f;

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    .line 19
    new-instance v6, Le/a/e/a/c4$a;

    invoke-direct {v6, p0, p1, v0}, Le/a/e/a/c4$a;-><init>(Le/a/e/a/c4;Ljava/lang/Integer;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 20
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_5
    const-string p1, "uiContext"

    .line 21
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "contentResolver"

    .line 22
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
