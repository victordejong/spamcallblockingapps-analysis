.class public final Le/a/c/a/m/c/i$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/i;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.insights.ui.qa.view.InsightsUpdatesClassViewer$onActivityResult$1"
    f = "InsightsUpdatesClassViewer.kt"
    l = {
        0xa8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/c/a/m/c/i;

.field public final synthetic i:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/i;Landroid/content/Intent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/i$c;->h:Le/a/c/a/m/c/i;

    iput-object p2, p0, Le/a/c/a/m/c/i$c;->i:Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/i$c;

    iget-object v0, p0, Le/a/c/a/m/c/i$c;->h:Le/a/c/a/m/c/i;

    iget-object v1, p0, Le/a/c/a/m/c/i$c;->i:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/m/c/i$c;-><init>(Le/a/c/a/m/c/i;Landroid/content/Intent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/i$c;

    iget-object v0, p0, Le/a/c/a/m/c/i$c;->h:Le/a/c/a/m/c/i;

    iget-object v1, p0, Le/a/c/a/m/c/i$c;->i:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/m/c/i$c;-><init>(Le/a/c/a/m/c/i;Landroid/content/Intent;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/c/i$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/c/i$c;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/c/a/m/c/i$c;->f:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/m/c/i;

    iget-object v1, p0, Le/a/c/a/m/c/i$c;->e:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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

    .line 4
    iget-object p1, p0, Le/a/c/a/m/c/i$c;->i:Landroid/content/Intent;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5
    iget-object p1, p0, Le/a/c/a/m/c/i$c;->h:Le/a/c/a/m/c/i;

    invoke-static {p1}, Le/a/c/a/m/c/i;->OA(Le/a/c/a/m/c/i;)Le/a/c/a/m/b/x;

    move-result-object v4

    iput-object v1, p0, Le/a/c/a/m/c/i$c;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/c/a/m/c/i$c;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/c/a/m/c/i$c;->g:I

    .line 6
    iget-object v2, v4, Le/a/c/a/m/b/x;->b:Ls1/w/f;

    new-instance v5, Le/a/c/a/m/b/b0;

    invoke-direct {v5, v4, v3}, Le/a/c/a/m/b/b0;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    invoke-static {v2, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v2

    .line 7
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 8
    sget-object v2, Le/a/c/a/m/c/i;->i:[Ls1/a/l;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Address, Message, Date, isSpam, passesFilter"

    .line 10
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Le/a/c/a/m/b/r;

    .line 14
    iget-object v5, v4, Le/a/c/a/m/b/r;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, ","

    const-string v9, " "

    invoke-static {v5, v8, v9, v6, v7}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\n"

    const-string v9, ""

    invoke-static {v5, v8, v9, v6, v7}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    iget-wide v6, v4, Le/a/c/a/m/b/r;->c:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Le/a/c/a/m/b/r;->b:Ljava/lang/String;

    const-string v9, ", "

    invoke-static {v7, v8, v9, v5, v9}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Le/a/c/a/m/b/r;->d:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Le/a/c/a/m/b/r;->e:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {v0, v2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const-string v6, "\n"

    invoke-static/range {v5 .. v12}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Le/a/c/a/m/c/i$c;->h:Le/a/c/a/m/c/i;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    :try_start_0
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 22
    :cond_4
    :goto_2
    iget-object p1, p0, Le/a/c/a/m/c/i$c;->h:Le/a/c/a/m/c/i;

    .line 23
    iget-object v4, p1, Le/a/c/a/m/c/i;->e:Lq3/a/i0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 24
    new-instance v7, Le/a/c/a/m/c/i$c$a;

    invoke-direct {v7, v3, p0}, Le/a/c/a/m/c/i$c$a;-><init>(Ls1/w/d;Le/a/c/a/m/c/i$c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 25
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
