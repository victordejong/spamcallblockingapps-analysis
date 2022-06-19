.class public final Le/a/a/c/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/a/t;

.field public final synthetic b:Ls1/z/b/l;

.field public final synthetic c:Le/a/c/r/j/h;

.field public final synthetic d:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic e:Le/a/c/r/j/p;


# direct methods
.method public constructor <init>(Le/a/a/c/a/t;Ls1/z/b/l;Le/a/c/r/j/h;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/s;->a:Le/a/a/c/a/t;

    iput-object p2, p0, Le/a/a/c/a/s;->b:Ls1/z/b/l;

    iput-object p3, p0, Le/a/a/c/a/s;->c:Le/a/c/r/j/h;

    iput-object p4, p0, Le/a/a/c/a/s;->d:Lcom/truecaller/messaging/data/types/Message;

    iput-object p5, p0, Le/a/a/c/a/s;->e:Le/a/c/r/j/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Le/a/a/c/a/s;->b:Ls1/z/b/l;

    iget-object v0, p0, Le/a/a/c/a/s;->c:Le/a/c/r/j/h;

    .line 2
    iget-object v0, v0, Le/a/c/r/j/h;->c:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 3
    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/c/a/s;->a:Le/a/a/c/a/t;

    invoke-virtual {p1}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/a/c/a/s;->a:Le/a/a/c/a/t;

    iget-object v1, p0, Le/a/a/c/a/s;->b:Ls1/z/b/l;

    iget-object p1, p0, Le/a/a/c/a/s;->c:Le/a/c/r/j/h;

    .line 6
    iget-object v2, p1, Le/a/c/r/j/h;->c:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 7
    iget-object v3, p0, Le/a/a/c/a/s;->d:Lcom/truecaller/messaging/data/types/Message;

    iget-object v4, p0, Le/a/a/c/a/s;->e:Le/a/c/r/j/p;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x60

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Le/a/a/c/a/b;->c(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;ZLjava/lang/String;Le/a/c/r/j/s;ILjava/lang/Object;)V

    return-void
.end method
