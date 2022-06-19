.class public final Lq3/a/x2/t0$a$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/x2/t0$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
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
    c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2"
    f = "Transform.kt"
    l = {
        0x88
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lq3/a/x2/t0$a;


# direct methods
.method public constructor <init>(Lq3/a/x2/t0$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lq3/a/x2/t0$a$a;->f:Lq3/a/x2/t0$a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lq3/a/x2/t0$a$a;->d:Ljava/lang/Object;

    iget p1, p0, Lq3/a/x2/t0$a$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lq3/a/x2/t0$a$a;->e:I

    iget-object p1, p0, Lq3/a/x2/t0$a$a;->f:Lq3/a/x2/t0$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lq3/a/x2/t0$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
