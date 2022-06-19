.class public final Le/a/c/w/f;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDateTime()Lw3/b/a/b;

    move-result-object p2

    check-cast p1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDateTime()Lw3/b/a/b;

    move-result-object p1

    invoke-static {p2, p1}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
