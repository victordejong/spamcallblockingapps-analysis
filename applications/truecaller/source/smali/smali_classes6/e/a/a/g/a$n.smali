.class public final Le/a/a/g/a$n;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->q(Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readImportantMessageCursor$2"
    f = "ReadMessageStorage.kt"
    l = {
        0x1ee
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/a;

.field public final synthetic g:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Le/a/a/g/a;Ljava/lang/Long;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$n;->f:Le/a/a/g/a;

    iput-object p2, p0, Le/a/a/g/a$n;->g:Ljava/lang/Long;

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

    new-instance p1, Le/a/a/g/a$n;

    iget-object v0, p0, Le/a/a/g/a$n;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$n;->g:Ljava/lang/Long;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/g/a$n;-><init>(Le/a/a/g/a;Ljava/lang/Long;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$n;

    iget-object v0, p0, Le/a/a/g/a$n;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$n;->g:Ljava/lang/Long;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/g/a$n;-><init>(Le/a/a/g/a;Ljava/lang/Long;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/g/a$n;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Le/a/a/g/a$n;->f:Le/a/a/g/a;

    .line 5
    iget-object v4, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 6
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string p1, "important"

    .line 7
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Le/a/a/g/a$n;->g:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, " AND conversation_id = ?"

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8
    iget-object p1, p0, Le/a/a/g/a$n;->g:Ljava/lang/Long;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    new-array p1, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p1, v1

    move-object v8, p1

    goto :goto_1

    :cond_3
    move-object v8, v2

    :goto_1
    const-string v9, "date DESC"

    .line 9
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10
    iget-object v1, p0, Le/a/a/g/a$n;->f:Le/a/a/g/a;

    .line 11
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 12
    invoke-interface {v1, p1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object p1

    if-eqz p1, :cond_5

    iput v3, p0, Le/a/a/g/a$n;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    move-object v2, p1

    check-cast v2, Le/a/a/g/j0/q;

    :cond_5
    return-object v2
.end method
