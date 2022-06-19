.class public final Le/a/c/w/o0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1}, Le/a/c/p/a;->e3(Ljava/util/Date;)Lw3/b/a/p;

    move-result-object p1

    :goto_0
    check-cast p2, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Le/a/c/p/a;->e3(Ljava/util/Date;)Lw3/b/a/p;

    move-result-object p2

    :goto_1
    invoke-static {p1, p2}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
