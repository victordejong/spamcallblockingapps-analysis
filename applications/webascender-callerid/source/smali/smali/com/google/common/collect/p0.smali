.class Lcom/google/common/collect/p0;
.super Lcom/google/common/collect/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/x<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final j:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient h:[Ljava/lang/Object;

.field private final transient i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/p0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/p0;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/p0;->j:Lcom/google/common/collect/x;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/p0;->h:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/p0;->i:I

    return-void
.end method


# virtual methods
.method d([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p0;->h:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/p0;->i:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lcom/google/common/collect/p0;->i:I

    add-int/2addr p2, p1

    return p2
.end method

.method g()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p0;->h:[Ljava/lang/Object;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/p0;->i:I

    invoke-static {p1, v0}, Lcom/google/common/base/m;->m(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/p0;->h:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/p0;->i:I

    return v0
.end method

.method i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/p0;->i:I

    return v0
.end method
