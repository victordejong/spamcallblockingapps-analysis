.class public final Ls1/u/e0$a;
.super Ls1/u/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/u/e0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/u/b<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "count",
        "",
        "index",
        "computeNext",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public final synthetic e:Ls1/u/e0;


# direct methods
.method public constructor <init>(Ls1/u/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/u/e0$a;->e:Ls1/u/e0;

    invoke-direct {p0}, Ls1/u/b;-><init>()V

    .line 2
    iget v0, p1, Ls1/u/e0;->c:I

    .line 3
    iput v0, p0, Ls1/u/e0$a;->c:I

    .line 4
    iget p1, p1, Ls1/u/e0;->b:I

    .line 5
    iput p1, p0, Ls1/u/e0$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget v0, p0, Ls1/u/e0$a;->c:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ls1/u/h0;->c:Ls1/u/h0;

    iput-object v0, p0, Ls1/u/b;->a:Ls1/u/h0;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ls1/u/e0$a;->e:Ls1/u/e0;

    .line 4
    iget-object v0, v0, Ls1/u/e0;->d:[Ljava/lang/Object;

    .line 5
    iget v1, p0, Ls1/u/e0$a;->d:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ls1/u/b;->b(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Ls1/u/e0$a;->e:Ls1/u/e0;

    iget v1, p0, Ls1/u/e0$a;->d:I

    add-int/lit8 v1, v1, 0x1

    .line 7
    iget v0, v0, Ls1/u/e0;->a:I

    .line 8
    rem-int/2addr v1, v0

    iput v1, p0, Ls1/u/e0$a;->d:I

    .line 9
    iget v0, p0, Ls1/u/e0$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ls1/u/e0$a;->c:I

    :goto_0
    return-void
.end method
