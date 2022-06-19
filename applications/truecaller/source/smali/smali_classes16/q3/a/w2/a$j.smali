.class public final Lq3/a/w2/a$j;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/w2/a;->h(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "kotlinx.coroutines.channels.AbstractChannel"
    f = "AbstractChannel.kt"
    l = {
        0x278
    }
    m = "receiveCatching-JP2dKIU"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lq3/a/w2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Lq3/a/w2/a;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/a<",
            "TE;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/w2/a$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/w2/a$j;->e:Lq3/a/w2/a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lq3/a/w2/a$j;->d:Ljava/lang/Object;

    iget p1, p0, Lq3/a/w2/a$j;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lq3/a/w2/a$j;->f:I

    iget-object p1, p0, Lq3/a/w2/a$j;->e:Lq3/a/w2/a;

    invoke-virtual {p1, p0}, Lq3/a/w2/a;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lq3/a/w2/m;

    invoke-direct {v0, p1}, Lq3/a/w2/m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
