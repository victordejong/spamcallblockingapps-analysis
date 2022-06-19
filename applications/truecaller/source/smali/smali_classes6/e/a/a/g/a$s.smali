.class public final Le/a/a/g/a$s;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->l(JJJIILs1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessageByDate$2"
    f = "ReadMessageStorage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/g/a;

.field public final synthetic f:J

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:J

.field public final synthetic j:J


# direct methods
.method public constructor <init>(Le/a/a/g/a;JIIJJLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$s;->e:Le/a/a/g/a;

    iput-wide p2, p0, Le/a/a/g/a$s;->f:J

    iput p4, p0, Le/a/a/g/a$s;->g:I

    iput p5, p0, Le/a/a/g/a$s;->h:I

    iput-wide p6, p0, Le/a/a/g/a$s;->i:J

    iput-wide p8, p0, Le/a/a/g/a$s;->j:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 11
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

    new-instance p1, Le/a/a/g/a$s;

    iget-object v1, p0, Le/a/a/g/a$s;->e:Le/a/a/g/a;

    iget-wide v2, p0, Le/a/a/g/a$s;->f:J

    iget v4, p0, Le/a/a/g/a$s;->g:I

    iget v5, p0, Le/a/a/g/a$s;->h:I

    iget-wide v6, p0, Le/a/a/g/a$s;->i:J

    iget-wide v8, p0, Le/a/a/g/a$s;->j:J

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Le/a/a/g/a$s;-><init>(Le/a/a/g/a;JIIJJLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/g/a$s;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/g/a$s;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/g/a$s;->e:Le/a/a/g/a;

    .line 3
    iget-object v0, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 4
    iget-wide v1, p0, Le/a/a/g/a$s;->f:J

    invoke-static {v1, v2}, Le/a/b0/q/g0;->B(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/a/a/g/a$s;->e:Le/a/a/g/a;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "(status & 2) = 0 AND (status & 256) = 0"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/a/g/a$s;->e:Le/a/a/g/a;

    .line 8
    iget-object v4, v3, Le/a/a/g/a;->e:Le/a/u3/g;

    .line 9
    iget-boolean v5, v3, Le/a/a/g/a;->h:Z

    .line 10
    iget v6, p0, Le/a/a/g/a$s;->g:I

    iget v7, p0, Le/a/a/g/a$s;->h:I

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static/range {v4 .. v9}, Le/a/b0/q/g0;->b(Le/a/u3/g;ZIIZI)Ljava/lang/String;

    move-result-object v3

    const-string v4, " AND "

    const-string v5, "transport NOT IN (5, 6) AND "

    const-string v6, "date >= ? AND date < ?"

    invoke-static {p1, v3, v4, v5, v6}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x2

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iget-wide v5, p0, Le/a/a/g/a$s;->i:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    const/4 p1, 0x1

    iget-wide v5, p0, Le/a/a/g/a$s;->j:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    const-string v5, "date ASC"

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 13
    iget-object v1, p0, Le/a/a/g/a$s;->e:Le/a/a/g/a;

    .line 14
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 15
    invoke-interface {v1, p1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method
