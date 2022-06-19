.class public final Le/a/a/y0/z;
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
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-static {p1, p2}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
