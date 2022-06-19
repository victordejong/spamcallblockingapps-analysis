.class public final Le/a/a/g/a$t;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->G(JIIZLjava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/a/g/j0/q;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessageCursor$2"
    f = "ReadMessageStorage.kt"
    l = {
        0x1d9,
        0x1e2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/a;

.field public final synthetic g:Z

.field public final synthetic h:J

.field public final synthetic i:Ljava/lang/Integer;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public constructor <init>(Le/a/a/g/a;ZJLjava/lang/Integer;IILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$t;->f:Le/a/a/g/a;

    iput-boolean p2, p0, Le/a/a/g/a$t;->g:Z

    iput-wide p3, p0, Le/a/a/g/a$t;->h:J

    iput-object p5, p0, Le/a/a/g/a$t;->i:Ljava/lang/Integer;

    iput p6, p0, Le/a/a/g/a$t;->j:I

    iput p7, p0, Le/a/a/g/a$t;->k:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 9
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

    new-instance p1, Le/a/a/g/a$t;

    iget-object v1, p0, Le/a/a/g/a$t;->f:Le/a/a/g/a;

    iget-boolean v2, p0, Le/a/a/g/a$t;->g:Z

    iget-wide v3, p0, Le/a/a/g/a$t;->h:J

    iget-object v5, p0, Le/a/a/g/a$t;->i:Ljava/lang/Integer;

    iget v6, p0, Le/a/a/g/a$t;->j:I

    iget v7, p0, Le/a/a/g/a$t;->k:I

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Le/a/a/g/a$t;-><init>(Le/a/a/g/a;ZJLjava/lang/Integer;IILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/g/a$t;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/g/a$t;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$t;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/g/a$t;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Le/a/a/g/a$t;->g:Z

    if-eqz p1, :cond_5

    .line 5
    iget-object p1, p0, Le/a/a/g/a$t;->f:Le/a/a/g/a;

    .line 6
    iget-object v5, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 7
    iget-wide v1, p0, Le/a/a/g/a$t;->h:J

    iget-object p1, p0, Le/a/a/g/a$t;->i:Ljava/lang/Integer;

    iget v6, p0, Le/a/a/g/a$t;->j:I

    iget v7, p0, Le/a/a/g/a$t;->k:I

    .line 8
    sget-object v8, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "messages_with_grouped_history_events"

    .line 10
    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v9, "limit"

    invoke-virtual {v8, v9, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 12
    :cond_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v6, "filter"

    invoke-virtual {v8, v6, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 13
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v6, "split_criteria"

    invoke-virtual {v8, v6, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 14
    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 15
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 16
    iget-object v1, p0, Le/a/a/g/a$t;->f:Le/a/a/g/a;

    .line 17
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 18
    invoke-interface {v1, p1}, Le/a/a/g/g;->f(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object p1

    if-eqz p1, :cond_8

    iput v3, p0, Le/a/a/g/a$t;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Le/a/a/g/j0/q;

    :goto_1
    move-object v4, p1

    goto/16 :goto_4

    .line 19
    :cond_5
    iget-object p1, p0, Le/a/a/g/a$t;->f:Le/a/a/g/a;

    .line 20
    iget-object v5, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 21
    iget-wide v6, p0, Le/a/a/g/a$t;->h:J

    invoke-static {v6, v7}, Le/a/b0/q/g0;->B(J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/a/g/a$t;->f:Le/a/a/g/a;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "(status & 2) = 0 AND (status & 256) = 0"

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/g/a$t;->f:Le/a/a/g/a;

    .line 25
    iget-object v8, v1, Le/a/a/g/a;->e:Le/a/u3/g;

    .line 26
    iget-boolean v9, v1, Le/a/a/g/a;->h:Z

    .line 27
    iget v10, p0, Le/a/a/g/a$t;->j:I

    iget v11, p0, Le/a/a/g/a$t;->k:I

    const/4 v12, 0x0

    const/16 v13, 0x10

    invoke-static/range {v8 .. v13}, Le/a/b0/q/g0;->b(Le/a/u3/g;ZIIZI)Ljava/lang/String;

    move-result-object v1

    const-string v3, " AND "

    const-string v8, "transport != 5"

    invoke-static {p1, v1, v3, v8}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string p1, "sequence_number DESC, date DESC, _id DESC"

    .line 28
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Le/a/a/g/a$t;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v3, " LIMIT "

    invoke-static {v3, v1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, ""

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 29
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 30
    iget-object v1, p0, Le/a/a/g/a$t;->f:Le/a/a/g/a;

    .line 31
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 32
    invoke-interface {v1, p1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object p1

    if-eqz p1, :cond_8

    iput v2, p0, Le/a/a/g/a$t;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    check-cast p1, Le/a/a/g/j0/q;

    goto :goto_1

    :cond_8
    :goto_4
    return-object v4
.end method
