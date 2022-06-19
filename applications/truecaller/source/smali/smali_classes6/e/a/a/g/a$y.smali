.class public final Le/a/a/g/a$y;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->p(Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/a/g/j0/a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readNonBlockConversationCursor$2"
    f = "ReadMessageStorage.kt"
    l = {
        0x17b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/a;

.field public final synthetic g:Lcom/truecaller/messaging/data/types/InboxTab;


# direct methods
.method public constructor <init>(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$y;->f:Le/a/a/g/a;

    iput-object p2, p0, Le/a/a/g/a$y;->g:Lcom/truecaller/messaging/data/types/InboxTab;

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

    new-instance p1, Le/a/a/g/a$y;

    iget-object v0, p0, Le/a/a/g/a$y;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$y;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/g/a$y;-><init>(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$y;

    iget-object v0, p0, Le/a/a/g/a$y;->f:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$y;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/g/a$y;-><init>(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$y;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/g/a$y;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/a/g/a$y;->f:Le/a/a/g/a;

    .line 5
    iget-object v3, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 6
    iget-object p1, p0, Le/a/a/g/a$y;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/InboxTab;->getConversationFilter()I

    move-result p1

    invoke-static {p1}, Le/a/b0/q/g0;->f(I)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/16 p1, 0x28

    .line 7
    invoke-static {p1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Le/a/a/g/a$y;->f:Le/a/a/g/a;

    .line 8
    iget-object v1, v1, Le/a/a/g/a;->f:Le/a/a/g/x;

    .line 9
    iget-object v6, p0, Le/a/a/g/a$y;->g:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v1, v6}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/g/a$y;->f:Le/a/a/g/a;

    .line 10
    iget-object v1, v1, Le/a/a/g/a;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 12
    iget-object p1, p0, Le/a/a/g/a$y;->f:Le/a/a/g/a;

    .line 13
    iget-object v8, p1, Le/a/a/g/a;->b:Ljava/lang/String;

    .line 14
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    iget-object v1, p0, Le/a/a/g/a$y;->f:Le/a/a/g/a;

    .line 16
    iget-object v1, v1, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 17
    invoke-interface {v1, p1}, Le/a/a/g/g;->t(Landroid/database/Cursor;)Le/a/a/g/j0/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iput v2, p0, Le/a/a/g/a$y;->e:I

    invoke-static {p1, p0}, Le/a/p5/s0/g;->r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Le/a/a/g/j0/a;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
