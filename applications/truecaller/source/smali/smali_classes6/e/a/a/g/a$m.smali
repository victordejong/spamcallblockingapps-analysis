.class public final Le/a/a/g/a$m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->e(Ljava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/a/g/j0/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readGroupConversationCursor$2"
    f = "ReadMessageStorage.kt"
    l = {
        0x171
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/a;

.field public final synthetic g:Ljava/lang/Integer;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/g/a;Ljava/lang/Integer;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$m;->f:Le/a/a/g/a;

    iput-object p2, p0, Le/a/a/g/a$m;->g:Ljava/lang/Integer;

    iput-object p3, p0, Le/a/a/g/a$m;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/a/g/a$m;

    iget-object v0, p0, Le/a/a/g/a$m;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$m;->g:Ljava/lang/Integer;

    iget-object v2, p0, Le/a/a/g/a$m;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$m;-><init>(Le/a/a/g/a;Ljava/lang/Integer;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$m;

    iget-object v0, p0, Le/a/a/g/a$m;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$m;->g:Ljava/lang/Integer;

    iget-object v2, p0, Le/a/a/g/a$m;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$m;-><init>(Le/a/a/g/a;Ljava/lang/Integer;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/g/a$m;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_0

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_sorting DESC"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Le/a/a/g/a$m;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/a/g/a$m;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v8, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const/16 v1, 0x25

    .line 8
    invoke-static {v1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Le/a/a/g/a$m;->h:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, p1

    invoke-static {v1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Le/a/a/g/a$m;->h:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v2

    .line 9
    iget-object p1, p0, Le/a/a/g/a$m;->f:Le/a/a/g/a;

    .line 10
    iget-object v3, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 11
    sget-object p1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "group_conversation_search"

    .line 13
    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "group_name LIKE ? OR participants_names LIKE ? "

    .line 15
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    iget-object v1, p0, Le/a/a/g/a$m;->f:Le/a/a/g/a;

    .line 17
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 18
    invoke-interface {v1, p1}, Le/a/a/g/g;->m(Landroid/database/Cursor;)Le/a/a/g/j0/d;

    move-result-object p1

    if-eqz p1, :cond_4

    iput v2, p0, Le/a/a/g/a$m;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/a/a/g/j0/d;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
