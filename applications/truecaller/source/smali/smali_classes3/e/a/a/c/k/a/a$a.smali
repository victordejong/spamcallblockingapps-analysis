.class public final Le/a/a/c/k/a/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/k/a/a;->t(Le/a/a/c/a7;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/k/a/a$a;->b:I

    iput p2, p0, Le/a/a/c/k/a/a$a;->c:I

    iput-object p3, p0, Le/a/a/c/k/a/a$a;->d:Ljava/lang/Object;

    iput-object p4, p0, Le/a/a/c/k/a/a$a;->e:Ljava/lang/Object;

    iput-object p5, p0, Le/a/a/c/k/a/a$a;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/a/c/k/a/a$a;->b:I

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v1, p0, Le/a/a/c/k/a/a$a;->d:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/k/a/a;

    invoke-virtual {v1, p1}, Le/a/a/c/k/a/a;->h(I)V

    return-object v0

    .line 3
    :cond_0
    throw v2

    .line 4
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 5
    iget-object v1, p0, Le/a/a/c/k/a/a$a;->d:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/k/a/a;

    .line 6
    iget-object v3, v1, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v3, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    instance-of v3, p1, Lcom/truecaller/messaging/data/types/Message;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v2, :cond_3

    .line 7
    iget-object p1, v1, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    invoke-interface {p1, v2}, Le/a/a/c/k/a/j$a;->ab(Lcom/truecaller/messaging/data/types/Message;)V

    :cond_3
    return-object v0

    .line 8
    :cond_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 9
    iget-object v1, p0, Le/a/a/c/k/a/a$a;->d:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/k/a/a;

    invoke-virtual {v1, p1}, Le/a/a/c/k/a/a;->h(I)V

    return-object v0

    .line 10
    :cond_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 11
    iget-object v1, p0, Le/a/a/c/k/a/a$a;->d:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/k/a/a;

    invoke-virtual {v1, p1}, Le/a/a/c/k/a/a;->n(I)V

    return-object v0

    .line 12
    :cond_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 13
    iget-object v1, p0, Le/a/a/c/k/a/a$a;->d:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/k/a/a;

    .line 14
    iget-object v3, v1, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v3, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    instance-of v3, p1, Lcom/truecaller/messaging/data/types/Message;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move-object v2, p1

    :goto_1
    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v2, :cond_8

    .line 15
    iget-object p1, v1, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {p1, v2}, Le/a/a/c/k/a/j$b;->jd(Lcom/truecaller/messaging/data/types/Message;)V

    :cond_8
    return-object v0

    .line 16
    :cond_9
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 17
    iget-object v1, p0, Le/a/a/c/k/a/a$a;->d:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/k/a/a;

    .line 18
    iget-object v3, v1, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v3, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    instance-of v3, p1, Lcom/truecaller/messaging/data/types/Message;

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    move-object v2, p1

    :goto_2
    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v2, :cond_b

    .line 19
    iget-object p1, v1, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {p1, v2}, Le/a/a/c/k/a/j$b;->n2(Lcom/truecaller/messaging/data/types/Message;)V

    :cond_b
    return-object v0
.end method
