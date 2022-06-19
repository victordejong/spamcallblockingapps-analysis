.class public final Le/a/a/g/a$x;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->h(JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessagesByImPeerId$2"
    f = "ReadMessageStorage.kt"
    l = {
        0x2e6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/a;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Le/a/a/g/a;Ljava/lang/String;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$x;->f:Le/a/a/g/a;

    iput-object p2, p0, Le/a/a/g/a$x;->g:Ljava/lang/String;

    iput-wide p3, p0, Le/a/a/g/a$x;->h:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/a/g/a$x;

    iget-object v1, p0, Le/a/a/g/a$x;->f:Le/a/a/g/a;

    iget-object v2, p0, Le/a/a/g/a$x;->g:Ljava/lang/String;

    iget-wide v3, p0, Le/a/a/g/a$x;->h:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/g/a$x;-><init>(Le/a/a/g/a;Ljava/lang/String;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$x;

    iget-object v1, p0, Le/a/a/g/a$x;->f:Le/a/a/g/a;

    iget-object v2, p0, Le/a/a/g/a$x;->g:Ljava/lang/String;

    iget-wide v3, p0, Le/a/a/g/a$x;->h:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/a/g/a$x;-><init>(Le/a/a/g/a;Ljava/lang/String;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$x;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/g/a$x;->e:I

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
    iget-object p1, p0, Le/a/a/g/a$x;->f:Le/a/a/g/a;

    .line 5
    iget-object v4, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 6
    iget-object p1, p0, Le/a/a/g/a$x;->g:Ljava/lang/String;

    .line 7
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "msg/msg_messages_with_entities"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "im_id"

    .line 9
    invoke-virtual {v1, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    new-array v8, v3, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iget-wide v9, p0, Le/a/a/g/a$x;->h:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, p1

    const-string v7, "conversation_id = ?"

    const-string v9, "sequence_number DESC, date DESC, _id DESC"

    .line 11
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object v1, p0, Le/a/a/g/a$x;->f:Le/a/a/g/a;

    .line 13
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 14
    invoke-interface {v1, p1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object p1

    if-eqz p1, :cond_3

    iput v3, p0, Le/a/a/g/a$x;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Le/a/a/g/j0/q;

    move-object v2, p1

    :cond_3
    return-object v2
.end method
