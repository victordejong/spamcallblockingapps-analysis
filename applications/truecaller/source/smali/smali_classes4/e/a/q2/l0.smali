.class public final Le/a/q2/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/j0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Le/a/a/g/g;

.field public final d:Le/a/u3/g;

.field public final e:Z


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/u3/g;Z)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "async"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/l0;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/q2/l0;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/q2/l0;->c:Le/a/a/g/g;

    iput-object p4, p0, Le/a/q2/l0;->d:Le/a/u3/g;

    iput-boolean p5, p0, Le/a/q2/l0;->e:Z

    return-void
.end method

.method public static final a(Le/a/q2/l0;J)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/q2/l0;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v1

    const-string p0, "tc_group_id"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    const/4 v5, 0x0

    const-string v3, "_id = ?"

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-object p2
.end method


# virtual methods
.method public b(JLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/q2/l0$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/q2/l0$a;

    iget v1, v0, Le/a/q2/l0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q2/l0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q2/l0$a;

    invoke-direct {v0, p0, p3}, Le/a/q2/l0$a;-><init>(Le/a/q2/l0;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/q2/l0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q2/l0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/q2/l0;->a:Ls1/w/f;

    new-instance v2, Le/a/q2/l0$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Le/a/q2/l0$b;-><init>(Le/a/q2/l0;JLs1/w/d;)V

    iput v3, v0, Le/a/q2/l0$a;->e:I

    invoke-static {p3, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ls1/k;

    if-eqz p3, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance p3, Ls1/k;

    const-string p1, ""

    invoke-direct {p3, p1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object p3
.end method
