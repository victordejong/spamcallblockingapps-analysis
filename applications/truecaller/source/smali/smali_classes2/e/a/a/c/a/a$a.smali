.class public final Le/a/a/c/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/a;->f(Le/a/c/i/e/b;Le/a/c/r/j/h;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/a/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/a/a$a;->a:I

    iput-object p2, p0, Le/a/a/c/a/a$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/a/c/a/a$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Le/a/a/c/a/a$a;->d:Ljava/lang/Object;

    iput-object p5, p0, Le/a/a/c/a/a$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Le/a/a/c/a/a$a;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 1
    iget-object p1, p0, Le/a/a/c/a/a$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/a/k$a;

    if-eqz p1, :cond_1

    iget-object v3, p0, Le/a/a/c/a/a$a;->e:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object v4, p0, Le/a/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast v4, Le/a/c/r/j/h;

    .line 2
    iget-object v4, v4, Le/a/c/r/j/h;->c:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 3
    iget v5, v3, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v5, v1, :cond_0

    move v0, v2

    :cond_0
    invoke-interface {p1, v3, v4, v0}, Le/a/a/c/a/k$a;->fj(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/a/c/a/a$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/a/k$a;

    if-eqz p1, :cond_5

    iget-object v3, p0, Le/a/a/c/a/a$a;->e:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object v4, p0, Le/a/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast v4, Le/a/c/r/j/h;

    .line 6
    iget-object v4, v4, Le/a/c/r/j/h;->b:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 7
    iget v5, v3, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v5, v1, :cond_4

    move v0, v2

    :cond_4
    invoke-interface {p1, v3, v4, v0}, Le/a/a/c/a/k$a;->fj(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Z)V

    :cond_5
    return-void

    .line 8
    :cond_6
    iget-object p1, p0, Le/a/a/c/a/a$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/a/k$a;

    if-eqz p1, :cond_8

    iget-object v3, p0, Le/a/a/c/a/a$a;->e:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object v4, p0, Le/a/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast v4, Le/a/c/r/j/h;

    .line 9
    iget-object v4, v4, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 10
    iget v5, v3, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v5, v1, :cond_7

    move v0, v2

    :cond_7
    invoke-interface {p1, v3, v4, v0}, Le/a/a/c/a/k$a;->fj(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Z)V

    :cond_8
    return-void
.end method
