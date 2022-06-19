.class public final Ln3/z/a3$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/a3;->a(ILs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.SingleRunner"
    f = "SingleRunner.kt"
    l = {
        0x31
    }
    m = "runInIsolation"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Ln3/z/a3;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln3/z/a3;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/a3$c;->f:Ln3/z/a3;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Ln3/z/a3$c;->d:Ljava/lang/Object;

    iget p1, p0, Ln3/z/a3$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln3/z/a3$c;->e:I

    iget-object p1, p0, Ln3/z/a3$c;->f:Ln3/z/a3;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ln3/z/a3;->a(ILs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
