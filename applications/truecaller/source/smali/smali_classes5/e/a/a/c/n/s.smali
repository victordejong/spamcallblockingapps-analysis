.class public final Le/a/a/c/n/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/w3;


# instance fields
.field public a:Le/a/a/g/j0/q;

.field public b:Le/a/a/g/l0/a;

.field public final c:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 1
    .param p1    # Lcom/truecaller/messaging/data/types/Message;
        .annotation runtime Ljavax/inject/Named;
            value = "message"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/s;->c:Lcom/truecaller/messaging/data/types/Message;

    .line 2
    invoke-virtual {p0}, Le/a/a/c/n/s;->k()Lcom/truecaller/messaging/data/types/Message;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/n/s;->k()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    .line 2
    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/a/g/l0/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public c(Le/a/a/c/w3$a;)V
    .locals 1

    const-string v0, "messagesObserver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/a/g/l0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Le/a/a/g/j0/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/n/s;->a:Le/a/a/g/j0/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2
    :cond_0
    iput-object p1, p0, Le/a/a/c/n/s;->a:Le/a/a/g/j0/q;

    return-void
.end method

.method public f()Le/a/a/g/j0/q;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/n/s;->a:Le/a/a/g/j0/q;

    return-object v0
.end method

.method public g(J)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Le/a/a/g/l0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/n/s;->k()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(I)I
    .locals 0

    return p1
.end method

.method public j(Le/a/a/g/l0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/n/s;->b:Le/a/a/g/l0/a;

    return-void
.end method

.method public final k()Lcom/truecaller/messaging/data/types/Message;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/n/s;->a:Le/a/a/g/j0/q;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/c/n/s;->c:Lcom/truecaller/messaging/data/types/Message;

    :goto_1
    return-object v0
.end method

.method public n0()V
    .locals 0

    return-void
.end method
