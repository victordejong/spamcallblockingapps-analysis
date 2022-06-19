.class public final Le/a/a/c/a/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/b;->d(Le/a/c/i/e/b;Le/a/c/r/j/h;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Lcom/truecaller/messaging/data/types/Message;Ls1/z/b/l;Le/a/c/r/j/s;)V
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

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/a/b$a;->a:I

    iput-object p2, p0, Le/a/a/c/a/b$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/a/c/a/b$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Le/a/a/c/a/b$a;->d:Ljava/lang/Object;

    iput-object p5, p0, Le/a/a/c/a/b$a;->e:Ljava/lang/Object;

    iput-object p6, p0, Le/a/a/c/a/b$a;->f:Ljava/lang/Object;

    iput-object p7, p0, Le/a/a/c/a/b$a;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Le/a/a/c/a/b$a;->a:I

    const-string v0, "consentConfig"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/a/b$a;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Le/a/a/c/a/b;

    .line 2
    iget-object p1, p0, Le/a/a/c/a/b$a;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ls1/z/b/l;

    iget-object p1, p0, Le/a/a/c/a/b$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/c/r/j/h;

    .line 3
    iget-object v2, p1, Le/a/c/r/j/h;->c:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 4
    iget-object p1, p0, Le/a/a/c/a/b$a;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object p1, p0, Le/a/a/c/a/b$a;->f:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Le/a/c/r/j/p;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5
    iget-object p1, p0, Le/a/a/c/a/b$a;->g:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Le/a/c/r/j/s;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 6
    invoke-static/range {v0 .. v9}, Le/a/a/c/a/b;->c(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;ZLjava/lang/String;Le/a/c/r/j/s;ILjava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    throw v1

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/a/c/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/a/b;

    .line 9
    iget-object p1, p1, Le/a/a/c/a/b;->c:Le/a/c/c0/k;

    if-eqz p1, :cond_3

    .line 10
    sget-object v0, Lcom/truecaller/insights/utils/FeedbackConsentType;->SEMI_CARD:Lcom/truecaller/insights/utils/FeedbackConsentType;

    invoke-static {p1, v0}, Le/a/c/p/a;->W0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Le/a/a/c/a/b$a;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Le/a/a/c/a/b;

    .line 12
    iget-object p1, p0, Le/a/a/c/a/b$a;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ls1/z/b/l;

    iget-object p1, p0, Le/a/a/c/a/b$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/c/r/j/h;

    .line 13
    iget-object v2, p1, Le/a/c/r/j/h;->b:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 14
    iget-object p1, p0, Le/a/a/c/a/b$a;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object p1, p0, Le/a/a/c/a/b$a;->f:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Le/a/c/r/j/p;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 15
    iget-object p1, p0, Le/a/a/c/a/b$a;->g:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Le/a/c/r/j/s;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 16
    invoke-static/range {v0 .. v9}, Le/a/a/c/a/b;->c(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;ZLjava/lang/String;Le/a/c/r/j/s;ILjava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Le/a/a/c/a/b$a;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Le/a/a/c/a/b;

    iget-object p1, p0, Le/a/a/c/a/b$a;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ls1/z/b/l;

    iget-object p1, p0, Le/a/a/c/a/b$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/c/r/j/h;

    .line 18
    iget-object v2, p1, Le/a/c/r/j/h;->b:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 19
    iget-object p1, p0, Le/a/a/c/a/b$a;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object p1, p0, Le/a/a/c/a/b$a;->f:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Le/a/c/r/j/p;

    iget-object p1, p0, Le/a/a/c/a/b$a;->g:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Le/a/c/r/j/s;

    invoke-static/range {v0 .. v5}, Le/a/a/c/a/b;->a(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;Le/a/c/r/j/s;)V

    :goto_0
    return-void

    .line 20
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_4
    iget-object p1, p0, Le/a/a/c/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/a/b;

    .line 22
    iget-object p1, p1, Le/a/a/c/a/b;->c:Le/a/c/c0/k;

    if-eqz p1, :cond_6

    .line 23
    sget-object v0, Lcom/truecaller/insights/utils/FeedbackConsentType;->SEMI_CARD:Lcom/truecaller/insights/utils/FeedbackConsentType;

    invoke-static {p1, v0}, Le/a/c/p/a;->W0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Le/a/a/c/a/b$a;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Le/a/a/c/a/b;

    .line 25
    iget-object p1, p0, Le/a/a/c/a/b$a;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ls1/z/b/l;

    iget-object p1, p0, Le/a/a/c/a/b$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/c/r/j/h;

    .line 26
    iget-object v2, p1, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 27
    iget-object p1, p0, Le/a/a/c/a/b$a;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object p1, p0, Le/a/a/c/a/b$a;->f:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Le/a/c/r/j/p;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 28
    iget-object p1, p0, Le/a/a/c/a/b$a;->g:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Le/a/c/r/j/s;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 29
    invoke-static/range {v0 .. v9}, Le/a/a/c/a/b;->c(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;ZLjava/lang/String;Le/a/c/r/j/s;ILjava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_5
    iget-object p1, p0, Le/a/a/c/a/b$a;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Le/a/a/c/a/b;

    iget-object p1, p0, Le/a/a/c/a/b$a;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ls1/z/b/l;

    iget-object p1, p0, Le/a/a/c/a/b$a;->d:Ljava/lang/Object;

    check-cast p1, Le/a/c/r/j/h;

    .line 31
    iget-object v2, p1, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 32
    iget-object p1, p0, Le/a/a/c/a/b$a;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object p1, p0, Le/a/a/c/a/b$a;->f:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Le/a/c/r/j/p;

    iget-object p1, p0, Le/a/a/c/a/b$a;->g:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Le/a/c/r/j/s;

    invoke-static/range {v0 .. v5}, Le/a/a/c/a/b;->a(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;Le/a/c/r/j/s;)V

    :goto_1
    return-void

    .line 33
    :cond_6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
