.class public final Lq3/a/x2/j1$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/x2/j1;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.flow.StateFlowImpl"
    f = "StateFlow.kt"
    l = {
        0x150,
        0x15c,
        0x161
    }
    m = "collect"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lq3/a/x2/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/j1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public k:I


# direct methods
.method public constructor <init>(Lq3/a/x2/j1;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/j1<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/j1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/j1$a;->j:Lq3/a/x2/j1;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lq3/a/x2/j1$a;->i:Ljava/lang/Object;

    iget p1, p0, Lq3/a/x2/j1$a;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lq3/a/x2/j1$a;->k:I

    iget-object p1, p0, Lq3/a/x2/j1$a;->j:Lq3/a/x2/j1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lq3/a/x2/j1;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
