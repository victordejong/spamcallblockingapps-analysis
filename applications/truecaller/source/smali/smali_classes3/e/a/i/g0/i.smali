.class public final Le/a/i/g0/i;
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
    check-cast p1, Ls1/k;

    .line 2
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ls1/k;

    .line 4
    iget-object p2, p2, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
