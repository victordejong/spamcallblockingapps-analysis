.class public final Lp3/a/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/a1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp3/a/a1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v2

    aput-object p4, p3, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lp3/a/x0;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lp3/a/x0;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :goto_0
    iget-object p3, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 2
    aget-object p3, p3, p2

    if-ne p3, p1, :cond_0

    .line 3
    iget-object p1, p0, Lp3/a/x0;->b:[Ljava/lang/Object;

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;II)Lp3/a/a1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lp3/a/a1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 2
    new-instance v1, Lp3/a/z0;

    invoke-direct {v1, p1, p2}, Lp3/a/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p3, p0, v0, p4}, Lp3/a/y0;->c(Lp3/a/a1;ILp3/a/a1;II)Lp3/a/a1;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :goto_0
    iget-object p3, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    array-length p4, p3

    const/4 v0, -0x1

    if-ge v1, p4, :cond_2

    .line 4
    aget-object p4, p3, v1

    if-ne p4, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-eq v1, v0, :cond_3

    .line 5
    array-length p4, p3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    .line 6
    iget-object p4, p0, Lp3/a/x0;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    .line 7
    aput-object p1, p3, v1

    .line 8
    aput-object p2, p4, v1

    .line 9
    new-instance p1, Lp3/a/x0;

    invoke-direct {p1, p3, p4}, Lp3/a/x0;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p1

    .line 10
    :cond_3
    array-length p4, p3

    add-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    .line 11
    iget-object p4, p0, Lp3/a/x0;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    .line 12
    iget-object v0, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    array-length v1, v0

    aput-object p1, p3, v1

    .line 13
    array-length p1, v0

    aput-object p2, p4, p1

    .line 14
    new-instance p1, Lp3/a/x0;

    invoke-direct {p1, p3, p4}, Lp3/a/x0;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/x0;->b:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CollisionLeaf("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lp3/a/x0;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "(key="

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp3/a/x0;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp3/a/x0;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
