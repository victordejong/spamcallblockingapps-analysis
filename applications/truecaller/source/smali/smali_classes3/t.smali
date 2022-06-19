.class public final Lt;
.super Ljava/lang/Object;
.source "java-style lambda group"

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


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lt;->a:I

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

    iget v0, p0, Lt;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    check-cast p1, Ls1/k;

    .line 2
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Le/a/l/c/a/i3/a;

    .line 4
    iget p1, p1, Le/a/l/c/a/i3/a;->b:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Ls1/k;

    .line 6
    iget-object p2, p2, Ls1/k;->a:Ljava/lang/Object;

    .line 7
    check-cast p2, Le/a/l/c/a/i3/a;

    .line 8
    iget p2, p2, Le/a/l/c/a/i3/a;->b:I

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1

    .line 11
    :cond_1
    check-cast p1, Ls1/k;

    .line 12
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    check-cast p1, Le/a/l/c/a/i3/a;

    .line 14
    iget p1, p1, Le/a/l/c/a/i3/a;->a:I

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Ls1/k;

    .line 16
    iget-object p2, p2, Ls1/k;->a:Ljava/lang/Object;

    .line 17
    check-cast p2, Le/a/l/c/a/i3/a;

    .line 18
    iget p2, p2, Le/a/l/c/a/i3/a;->a:I

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
