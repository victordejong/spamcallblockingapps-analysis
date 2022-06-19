.class public final synthetic Le/a/a/c/i/h;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/a/c/i/b;)V
    .locals 7

    const-class v3, Le/a/a/c/i/b;

    const/4 v1, 0x1

    const-string v4, "remove"

    const-string v5, "remove(I)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/i/b;

    .line 3
    iget-object v1, v0, Le/a/a/c/i/b;->h:Le/a/a/c/i/d;

    invoke-interface {v1, p1}, Le/a/a/c/i/d;->getItem(I)Le/a/a/c/i/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, v0, Le/a/a/c/i/b;->i:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/c;

    .line 5
    iget-wide v2, p1, Le/a/a/c/i/f;->a:J

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 7
    iget-wide v3, p1, Le/a/a/c/i/f;->b:J

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 9
    iget-boolean v0, v0, Le/a/a/c/i/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;->ONLY_FLASH_EVENTS:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;->ONLY_CALL_EVENTS:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    .line 10
    :goto_0
    invoke-interface {v1, v2, p1, v0}, Le/a/l0/c;->m(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Le/a/r2/x;->g()V

    .line 12
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
