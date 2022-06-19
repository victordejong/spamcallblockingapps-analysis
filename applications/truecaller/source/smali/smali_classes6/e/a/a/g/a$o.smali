.class public final Le/a/a/g/a$o;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->x(JIILs1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readImportantMessagesByThread$2"
    f = "ReadMessageStorage.kt"
    l = {
        0x2dc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/a;

.field public final synthetic g:J

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Le/a/a/g/a;JIILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$o;->f:Le/a/a/g/a;

    iput-wide p2, p0, Le/a/a/g/a$o;->g:J

    iput p4, p0, Le/a/a/g/a$o;->h:I

    iput p5, p0, Le/a/a/g/a$o;->i:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/a/g/a$o;

    iget-object v1, p0, Le/a/a/g/a$o;->f:Le/a/a/g/a;

    iget-wide v2, p0, Le/a/a/g/a$o;->g:J

    iget v4, p0, Le/a/a/g/a$o;->h:I

    iget v5, p0, Le/a/a/g/a$o;->i:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/a/g/a$o;-><init>(Le/a/a/g/a;JIILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/g/a$o;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/g/a$o;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/g/a$o;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object p1, p0, Le/a/a/g/a$o;->f:Le/a/a/g/a;

    .line 5
    iget-object v4, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 6
    iget-wide v5, p0, Le/a/a/g/a$o;->g:J

    invoke-static {v5, v6}, Le/a/b0/q/g0;->B(J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/a/g/a$o;->f:Le/a/a/g/a;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "(status & 2) = 0 AND (status & 256) = 0"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/g/a$o;->f:Le/a/a/g/a;

    .line 10
    iget-object v7, v1, Le/a/a/g/a;->e:Le/a/u3/g;

    .line 11
    iget-boolean v8, v1, Le/a/a/g/a;->h:Z

    .line 12
    iget v9, p0, Le/a/a/g/a$o;->h:I

    iget v10, p0, Le/a/a/g/a$o;->i:I

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static/range {v7 .. v12}, Le/a/b0/q/g0;->b(Le/a/u3/g;ZIIZI)Ljava/lang/String;

    move-result-object v1

    const-string v7, " AND important"

    invoke-static {p1, v1, v7}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "sequence_number DESC, date DESC, _id DESC"

    .line 13
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iget-object v1, p0, Le/a/a/g/a$o;->f:Le/a/a/g/a;

    .line 15
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 16
    invoke-interface {v1, p1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object p1

    if-eqz p1, :cond_3

    iput v3, p0, Le/a/a/g/a$o;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    move-object v2, p1

    check-cast v2, Le/a/a/g/j0/q;

    :cond_3
    return-object v2
.end method
