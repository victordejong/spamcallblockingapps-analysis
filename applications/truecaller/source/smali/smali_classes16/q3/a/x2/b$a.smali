.class public final Lq3/a/x2/b$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/x2/b;->i(Lq3/a/w2/x;Ls1/w/d;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.flow.CallbackFlowBuilder"
    f = "Builders.kt"
    l = {
        0x163
    }
    m = "collectTo"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lq3/a/x2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Lq3/a/x2/b;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/b<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/b$a;->f:Lq3/a/x2/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lq3/a/x2/b$a;->e:Ljava/lang/Object;

    iget p1, p0, Lq3/a/x2/b$a;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lq3/a/x2/b$a;->g:I

    iget-object p1, p0, Lq3/a/x2/b$a;->f:Lq3/a/x2/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lq3/a/x2/b;->i(Lq3/a/w2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
