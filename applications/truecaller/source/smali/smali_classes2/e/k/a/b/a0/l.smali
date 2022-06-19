.class public Le/k/a/b/a0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/b/o;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Le/k/a/b/a0/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/o;->H:Le/k/a/b/w/i;

    invoke-virtual {v0}, Le/k/a/b/w/i;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Le/k/a/b/a0/l;->a:Ljava/lang/String;

    .line 4
    sget-object v0, Le/k/a/b/o;->G:Le/k/a/b/a0/m;

    iput-object v0, p0, Le/k/a/b/a0/l;->b:Le/k/a/b/a0/m;

    return-void
.end method


# virtual methods
.method public beforeArrayValues(Le/k/a/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public beforeObjectEntries(Le/k/a/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeArrayValueSeparator(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/l;->b:Le/k/a/b/a0/m;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2c

    .line 3
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeEndArray(Le/k/a/b/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x5d

    .line 1
    invoke-virtual {p1, p2}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeEndObject(Le/k/a/b/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x7d

    .line 1
    invoke-virtual {p1, p2}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeObjectEntrySeparator(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/l;->b:Le/k/a/b/a0/m;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2c

    .line 3
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeObjectFieldValueSeparator(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/l;->b:Le/k/a/b/a0/m;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3a

    .line 3
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeRootValueSeparator(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/b/g;->s1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeStartArray(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeStartObject(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    return-void
.end method
