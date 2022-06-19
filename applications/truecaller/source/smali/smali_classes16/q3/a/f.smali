.class public final Lq3/a/f;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
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
    c = "kotlinx.coroutines.AwaitKt"
    f = "Await.kt"
    l = {
        0x36
    }
    m = "joinAll"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public h:I


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lq3/a/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lq3/a/f;->g:Ljava/lang/Object;

    iget p1, p0, Lq3/a/f;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lq3/a/f;->h:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ls1/a/a/a/v0/f/d;->u2([Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
