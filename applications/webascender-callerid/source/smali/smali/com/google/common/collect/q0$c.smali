.class final Lcom/google/common/collect/q0$c;
.super Lcom/google/common/collect/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient h:[Ljava/lang/Object;

.field private final transient i:I

.field private final transient j:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/q0$c;->h:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/q0$c;->i:I

    .line 4
    iput p3, p0, Lcom/google/common/collect/q0$c;->j:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/q0$c;->j:I

    invoke-static {p1, v0}, Lcom/google/common/base/m;->m(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/q0$c;->h:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/common/collect/q0$c;->i:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/q0$c;->j:I

    return v0
.end method
