.class public final Le/a/a/c/a/q$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/q;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/a/q;


# direct methods
.method public constructor <init>(Le/a/a/c/a/q;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/q$a;->b:Le/a/a/c/a/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string p2, "tag"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/c/a/q$a;->b:Le/a/a/c/a/q;

    iget-object v0, p2, Le/a/a/c/a/q;->a:Le/a/a/c/a/t;

    .line 4
    iget-object v1, p2, Le/a/a/c/a/q;->d:Ls1/z/b/l;

    .line 5
    iget-object v2, p2, Le/a/a/c/a/q;->e:Le/a/c/r/j/h;

    .line 6
    iget-object v2, v2, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 7
    iget-object v3, p2, Le/a/a/c/a/q;->f:Lcom/truecaller/messaging/data/types/Message;

    .line 8
    iget-object v4, p2, Le/a/a/c/a/q;->g:Le/a/c/r/j/p;

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v6, p1

    .line 9
    invoke-static/range {v0 .. v9}, Le/a/a/c/a/b;->c(Le/a/a/c/a/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;ZLjava/lang/String;Le/a/c/r/j/s;ILjava/lang/Object;)V

    .line 10
    iget-object p2, p0, Le/a/a/c/a/q$a;->b:Le/a/a/c/a/q;

    iget-object v0, p2, Le/a/a/c/a/q;->a:Le/a/a/c/a/t;

    .line 11
    iget-object v0, v0, Le/a/a/c/a/b;->d:Le/a/a/c/a/o;

    if-eqz v0, :cond_1

    .line 12
    iget-object p2, p2, Le/a/a/c/a/q;->f:Lcom/truecaller/messaging/data/types/Message;

    .line 13
    iget-wide v1, p2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 14
    invoke-interface {v0, p1, v1, v2}, Le/a/a/c/a/o;->e(Ljava/lang/String;J)V

    .line 15
    iget-object p1, p0, Le/a/a/c/a/q$a;->b:Le/a/a/c/a/q;

    iget-object p1, p1, Le/a/a/c/a/q;->a:Le/a/a/c/a/t;

    invoke-virtual {p1}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 16
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_1
    const-string p1, "updateCategoriesManager"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
