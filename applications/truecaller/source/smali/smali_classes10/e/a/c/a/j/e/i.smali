.class public final Le/a/c/a/j/e/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Le/a/c/a/j/b/j;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/j/e/a;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/i;->b:Le/a/c/a/j/e/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Le/a/c/a/j/b/j;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const-string p2, "sender"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/c/a/j/e/i;->b:Le/a/c/a/j/e/a;

    .line 4
    sget-object v0, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 5
    invoke-virtual {p2}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object p2

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "senderFilterItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p1, Le/a/c/a/j/b/j;->e:Z

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;->ADD:Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;->REMOVE:Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;

    .line 9
    :goto_0
    iget-object v1, p1, Le/a/c/a/j/b/j;->c:Le/a/c/q/h;

    .line 10
    iget-object v1, v1, Le/a/c/q/h;->b:Ljava/util/Set;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Ljava/lang/String;

    .line 14
    new-instance v5, Le/a/c/w/o0/k/e$c;

    invoke-direct {v5, v4}, Le/a/c/w/o0/k/e$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 15
    iget-object p1, p1, Le/a/c/a/j/b/j;->c:Le/a/c/q/h;

    .line 16
    iget-object p1, p1, Le/a/c/q/h;->c:Ljava/util/Set;

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    new-instance v4, Le/a/c/w/o0/k/e$c;

    invoke-direct {v4, v3}, Le/a/c/w/o0/k/e$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 21
    iget-object p2, p2, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-static {v1, p1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->c(Ljava/util/Set;Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;)V

    .line 22
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
