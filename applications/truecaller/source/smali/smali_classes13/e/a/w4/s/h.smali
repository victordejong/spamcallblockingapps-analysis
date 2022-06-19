.class public final synthetic Le/a/w4/s/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/c2/t$a;


# instance fields
.field public final synthetic a:Le/a/w4/s/c0;


# direct methods
.method public synthetic constructor <init>(Le/a/w4/s/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/h;->a:Le/a/w4/s/c0;

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 2

    iget-object p2, p0, Le/a/w4/s/h;->a:Le/a/w4/s/c0;

    .line 1
    iget-object p3, p2, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    .line 2
    iget-object p3, p3, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    .line 3
    check-cast p3, Le/a/l0/u/d/b;

    if-eqz p3, :cond_1

    .line 4
    invoke-interface {p3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5
    invoke-interface {p3}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    iget-object v0, p3, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Le/a/e/d2/g;

    invoke-direct {v1, v0, p3}, Le/a/e/d2/g;-><init>(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;)V

    invoke-virtual {p2, v1}, Le/a/w4/s/c0;->cB(Le/a/e/c2/i0;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "History event did not include a contact (position="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), event="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_1
    :goto_0
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object p2

    new-instance p3, Le/a/q2/g$b;

    const-string v0, "SEARCHVIEW_RecentSearchItem_Clicked"

    invoke-direct {p3, v0}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v0, "List_Position"

    .line 10
    invoke-virtual {p3, v0, p1}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    .line 11
    invoke-virtual {p3}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    .line 12
    invoke-interface {p2, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method
