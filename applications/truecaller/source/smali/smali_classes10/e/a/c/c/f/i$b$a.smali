.class public final Le/a/c/c/f/i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/f/i$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    check-cast p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object p1

    check-cast p2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
