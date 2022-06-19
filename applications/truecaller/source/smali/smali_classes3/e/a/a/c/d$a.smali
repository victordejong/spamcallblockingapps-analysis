.class public final Le/a/a/c/d$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->r4(Le/a/a/c/c3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/d$a;->a:I

    iput-object p2, p0, Le/a/a/c/d$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/a/c/d$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/a/c/d$a;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/d$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/d;

    .line 2
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    iget-object v0, p0, Le/a/a/c/d$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c3;

    iget-object v1, v0, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    iget-object v0, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {p1, v1, v0}, Le/a/a/c/k/a/j;->q0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/a/c/d$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/d;

    .line 6
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 7
    iget-object v0, p0, Le/a/a/c/d$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c3;

    iget-object v1, v0, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    iget-object v0, v0, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {p1, v1, v0}, Le/a/a/c/k/a/j;->q0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V

    return-void
.end method
