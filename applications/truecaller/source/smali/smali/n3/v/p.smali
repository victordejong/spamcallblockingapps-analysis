.class public final Ln3/v/p;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1"
    f = "FlowLiveData.kt"
    l = {
        0x88
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Ln3/v/q$a;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln3/v/q$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/p;->f:Ln3/v/q$a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ln3/v/p;->d:Ljava/lang/Object;

    iget p1, p0, Ln3/v/p;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln3/v/p;->e:I

    iget-object p1, p0, Ln3/v/p;->f:Ln3/v/q$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ln3/v/q$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
