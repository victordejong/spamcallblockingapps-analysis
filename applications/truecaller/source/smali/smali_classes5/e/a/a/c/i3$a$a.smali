.class public final Le/a/a/c/i3$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i3$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Landroid/util/SparseBooleanArray;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/i3$a;


# direct methods
.method public constructor <init>(Le/a/a/c/i3$a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/i3$a$a;->a:Le/a/a/c/i3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Landroid/util/SparseBooleanArray;

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/i3$a$a;->a:Le/a/a/c/i3$a;

    iget-object v0, v0, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p0, Le/a/a/c/i3$a$a;->a:Le/a/a/c/i3$a;

    iget-object p1, p1, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    .line 6
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/m3;

    if-eqz v0, :cond_7

    .line 7
    iget-object p1, p1, Le/a/a/c/i3;->q:Le/a/p5/h0;

    const v2, 0x7f120252

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026antPermissionToDeleteSms)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    .line 9
    iget-object v2, p0, Le/a/a/c/i3$a$a;->a:Le/a/a/c/i3$a;

    iget-object v2, v2, Le/a/a/c/i3$a;->j:Ljava/lang/String;

    .line 10
    invoke-interface {v0, p1, v1, v2}, Le/a/a/c/m3;->P5(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 11
    :cond_3
    iget-object p1, p0, Le/a/a/c/i3$a$a;->a:Le/a/a/c/i3$a;

    iget-object v0, p1, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    .line 12
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/m3;

    if-eqz v0, :cond_4

    .line 13
    iget-object p1, p1, Le/a/a/c/i3$a;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Le/a/a/c/i3$a$a;->a:Le/a/a/c/i3$a;

    iget-object v1, v1, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f100005

    .line 15
    invoke-interface {v0, p1, v1}, Le/a/a/c/m3;->x7(II)V

    .line 16
    :cond_4
    iget-object p1, p0, Le/a/a/c/i3$a$a;->a:Le/a/a/c/i3$a;

    iget-object v0, p1, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Le/a/a/c/i3;->e:Ljava/util/List;

    .line 18
    iget-object p1, p1, Le/a/a/c/i3$a;->i:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    .line 21
    invoke-static {v2}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    .line 23
    iget-object v1, p0, Le/a/a/c/i3$a$a;->a:Le/a/a/c/i3$a;

    iget-object v1, v1, Le/a/a/c/i3$a;->f:Le/a/a/c/i3;

    .line 24
    iget-object v2, v1, Le/a/a/c/i3;->D:Le/a/a/w0/a;

    .line 25
    iget-object v1, v1, Le/a/a/c/i3;->m:Le/a/a/c/n5;

    .line 26
    invoke-interface {v1}, Le/a/a/c/m5;->G()Lcom/truecaller/messaging/conversation/ConversationMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/messaging/conversation/ConversationMode;->getContext()Ljava/lang/String;

    move-result-object v3

    .line 27
    iget v4, v0, Lcom/truecaller/messaging/data/types/Message;->l:I

    .line 28
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v5, "it.date"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-wide v5, v1, Lw3/b/a/e0/e;->a:J

    .line 30
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    const-string v1, "it.sendScheduleDate"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-wide v7, v0, Lw3/b/a/e0/e;->a:J

    .line 32
    invoke-interface/range {v2 .. v8}, Le/a/a/w0/a;->f(Ljava/lang/String;IJJ)V

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method
