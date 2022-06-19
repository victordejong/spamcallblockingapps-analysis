.class public final Ln3/z/i0$e;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/i0;->d(Ln3/z/v$e;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.ItemKeyedDataSource"
    f = "ItemKeyedDataSource.kt"
    l = {
        0xab,
        0xb1,
        0xb2
    }
    m = "load$paging_common"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Ln3/z/i0;


# direct methods
.method public constructor <init>(Ln3/z/i0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/i0$e;->f:Ln3/z/i0;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ln3/z/i0$e;->d:Ljava/lang/Object;

    iget p1, p0, Ln3/z/i0$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln3/z/i0$e;->e:I

    iget-object p1, p0, Ln3/z/i0$e;->f:Ln3/z/i0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ln3/z/i0;->d(Ln3/z/v$e;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
