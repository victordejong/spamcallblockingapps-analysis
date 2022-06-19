.class public Le/m/f/a/r/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public final a:Le/m/f/a/j;

.field public b:Le/m/f/a/r/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/m/f/a/r/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    iput-object v0, p0, Le/m/f/a/r/d;->a:Le/m/f/a/j;

    return-void
.end method


# virtual methods
.method public a(Le/m/f/a/o;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p1, Le/m/f/a/o;->b:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/f/a/r/d;->a:Le/m/f/a/j;

    invoke-virtual {v1, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    .line 5
    iget v2, p1, Le/m/f/a/r/e;->a:I

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 6
    iget-object p1, p1, Le/m/f/a/r/e;->b:Ljava/util/TreeSet;

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 8
    invoke-interface {p1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    if-le v5, v6, :cond_1

    .line 11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_1
    move v4, v7

    :goto_1
    if-gt v7, v2, :cond_4

    add-int v4, v7, v2

    ushr-int/lit8 v4, v4, 0x1

    .line 12
    iget-object v5, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    invoke-virtual {v5, v4}, Le/m/f/a/r/e;->b(I)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    if-lez v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move v2, v4

    if-gez v2, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-object v4, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    invoke-virtual {v4, v2}, Le/m/f/a/r/e;->b(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_6

    .line 14
    iget-object p1, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    invoke-virtual {p1, v2}, Le/m/f/a/r/e;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 15
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    goto :goto_0

    :cond_7
    :goto_3
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/m/f/a/r/b;

    invoke-direct {v0}, Le/m/f/a/r/b;-><init>()V

    iput-object v0, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/m/f/a/r/a;

    invoke-direct {v0}, Le/m/f/a/r/a;-><init>()V

    iput-object v0, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    .line 4
    :goto_0
    iget-object v0, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    invoke-virtual {v0, p1}, Le/m/f/a/r/e;->c(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    invoke-virtual {v0}, Le/m/f/a/r/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    instance-of v0, v0, Le/m/f/a/r/b;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 2
    iget-object v0, p0, Le/m/f/a/r/d;->b:Le/m/f/a/r/e;

    invoke-virtual {v0, p1}, Le/m/f/a/r/e;->d(Ljava/io/ObjectOutput;)V

    return-void
.end method
