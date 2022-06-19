.class public final Le/a/a/g/a$k;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->v(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;
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
        "Le/a/a/g/j0/x;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readFilteredMessageCursor$2"
    f = "ReadMessageStorage.kt"
    l = {
        0x2a8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/a;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/a/g/a;Ljava/lang/String;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$k;->f:Le/a/a/g/a;

    iput-object p2, p0, Le/a/a/g/a$k;->g:Ljava/lang/String;

    iput p3, p0, Le/a/a/g/a$k;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/g/a$k;

    iget-object v0, p0, Le/a/a/g/a$k;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$k;->g:Ljava/lang/String;

    iget v2, p0, Le/a/a/g/a$k;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$k;-><init>(Le/a/a/g/a;Ljava/lang/String;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$k;

    iget-object v0, p0, Le/a/a/g/a$k;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$k;->g:Ljava/lang/String;

    iget v2, p0, Le/a/a/g/a$k;->h:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$k;-><init>(Le/a/a/g/a;Ljava/lang/String;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/g/a$k;->e:I

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
    iget-object p1, p0, Le/a/a/g/a$k;->f:Le/a/a/g/a;

    .line 5
    iget-object v4, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 6
    iget-object p1, p0, Le/a/a/g/a$k;->g:Ljava/lang/String;

    .line 7
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "msg/msg_messages_with_entities"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "filter"

    .line 9
    invoke-virtual {v1, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string p1, "CASE WHEN me_participant_type=1 THEN 0 ELSE 1 END,date DESC LIMIT "

    .line 10
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Le/a/a/g/a$k;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v7, "transport NOT IN (5, 6)"

    .line 11
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object v1, p0, Le/a/a/g/a$k;->f:Le/a/a/g/a;

    .line 13
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 14
    invoke-interface {v1, p1}, Le/a/a/g/g;->g(Landroid/database/Cursor;)Le/a/a/g/j0/x;

    move-result-object p1

    if-eqz p1, :cond_3

    iput v3, p0, Le/a/a/g/a$k;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    move-object v2, p1

    check-cast v2, Le/a/a/g/j0/x;

    :cond_3
    return-object v2
.end method
