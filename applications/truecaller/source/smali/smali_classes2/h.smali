.class public final Lh;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lh;->a:I

    iput-object p2, p0, Lh;->b:Ljava/lang/Object;

    iput-object p3, p0, Lh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lh;->a:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lh;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/d;

    .line 2
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    iget-object v0, p0, Lh;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c3;

    iget-object v1, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v0, v0, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    invoke-interface {p1, v1, v0}, Le/a/a/c/k/a/j;->h1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Lh;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/d;

    .line 6
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 7
    iget-object v0, p0, Lh;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c3;

    iget-object v1, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    iget-object v0, v0, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    invoke-interface {p1, v1, v0}, Le/a/a/c/k/a/j;->h1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;)V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lh;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/d;

    .line 9
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 10
    iget-object v0, p0, Lh;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c3;

    iget-object v1, v0, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    iget-object v0, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {p1, v1, v0}, Le/a/a/c/k/a/j;->z0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lh;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/d;

    .line 12
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 13
    iget-object v0, p0, Lh;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c3;

    iget-object v1, v0, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    iget-object v0, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {p1, v1, v0}, Le/a/a/c/k/a/j;->q0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V

    return-void

    .line 14
    :cond_4
    iget-object p1, p0, Lh;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/d;

    .line 15
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 16
    iget-object v0, p0, Lh;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c3;

    iget-object v1, v0, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    .line 17
    iget-object v0, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    .line 18
    invoke-interface {p1, v1, v0}, Le/a/a/c/k/a/j;->q0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V

    return-void
.end method
