.class public final Le/a/c/v/f/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/v/f/b/b;


# instance fields
.field public final a:Le/a/c/j/b;

.field public final b:Le/a/c/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/j/b;Le/a/c/j/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/j/b;",
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deeplinkEnricher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLinkFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/v/f/b/a;->a:Le/a/c/j/b;

    iput-object p2, p0, Le/a/c/v/f/b/a;->b:Le/a/c/j/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/a/c/v/i/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/c/v/i/g;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p3, Ls1/s;->a:Ls1/s;

    iget-object v0, p2, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getBillAmount()Ljava/lang/Double;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/c/v/f/b/a;->b:Le/a/c/j/e;

    .line 4
    iget-object v2, p2, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getVendorName()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p2}, Le/a/c/p/a;->n0(Le/a/c/v/i/g;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v4, "PrepaidExpiry"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-float v0, v3

    .line 9
    :goto_0
    iget-object v3, p2, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 10
    invoke-virtual {v3}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {p2}, Le/a/c/p/a;->n0(Le/a/c/v/i/g;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-interface {v1, v2, v0, v3, p2}, Le/a/c/j/e;->c(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)Le/a/c/j/f;

    move-result-object p2

    check-cast p2, Le/a/c/j/f$a;

    if-eqz p2, :cond_1

    .line 13
    iget-object v0, p0, Le/a/c/v/f/b/a;->a:Le/a/c/j/b;

    new-instance v1, Le/a/c/v/f/b/a$a;

    invoke-direct {v1, p1}, Le/a/c/v/f/b/a$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2, v1}, Le/a/c/j/b;->a(Le/a/c/j/f;Ls1/z/b/l;)V

    return-object p3

    .line 14
    :cond_1
    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p2, p1, :cond_2

    return-object p2

    :cond_2
    return-object p3

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Due amount cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
