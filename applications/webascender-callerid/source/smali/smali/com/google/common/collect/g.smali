.class public final Lcom/google/common/collect/g;
.super Lcom/google/common/collect/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient k:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/g;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/o0;->c(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/h;-><init>(Ljava/util/Map;)V

    const-string p1, "expectedValuesPerKey"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/collect/j;->b(ILjava/lang/String;)I

    .line 4
    iput p2, p0, Lcom/google/common/collect/g;->k:I

    return-void
.end method

.method public static D()Lcom/google/common/collect/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/g;

    invoke-direct {v0}, Lcom/google/common/collect/g;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/google/common/collect/g;->k:I

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/s0;->b(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/google/common/collect/l;->m()Lcom/google/common/collect/l;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/common/collect/d;->w(Ljava/util/Map;)V

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/s0;->a(Lcom/google/common/collect/h0;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/collect/s0;->c(Lcom/google/common/collect/h0;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method E()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/g;->k:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method bridge synthetic q()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g;->E()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
