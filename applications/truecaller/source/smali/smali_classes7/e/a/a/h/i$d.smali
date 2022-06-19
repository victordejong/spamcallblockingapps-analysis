.class public final synthetic Le/a/a/h/i$d;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/i;->Kj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Le/a/a/k/a/a/o;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/a/h/i;)V
    .locals 7

    const-class v3, Le/a/a/h/i;

    const/4 v1, 0x1

    const-string v4, "onCursor"

    const-string v5, "onCursor(Lcom/truecaller/messaging/transport/im/groups/ImGroupParticipantsCursor;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/a/a/k/a/a/o;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/i;

    .line 3
    iget-boolean v1, v0, Le/a/a/h/i;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Le/a/a/h/i;->e:Le/a/a/k/a/a/o;

    if-eqz v1, :cond_1

    iget-object v3, v0, Le/a/a/h/i;->f:Le/a/a/h/i$a;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    :cond_1
    iput-boolean v2, v0, Le/a/a/h/i;->g:Z

    .line 6
    :goto_0
    iget-object v1, v0, Le/a/a/h/i;->e:Le/a/a/k/a/a/o;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7
    :cond_2
    iput-object p1, v0, Le/a/a/h/i;->e:Le/a/a/k/a/a/o;

    .line 8
    iget-boolean v1, v0, Le/a/a/h/i;->g:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    iget-object v1, v0, Le/a/a/h/i;->f:Le/a/a/h/i$a;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Le/a/a/h/i;->g:Z

    :goto_1
    if-eqz p1, :cond_5

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 12
    :cond_5
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/h;

    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p1}, Le/a/a/h/h;->c0()V

    .line 14
    invoke-interface {p1, v2}, Le/a/a/h/h;->F3(I)V

    .line 15
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
