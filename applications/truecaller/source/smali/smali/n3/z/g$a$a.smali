.class public final Ln3/z/g$a$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g$a;->b(Ln3/z/z0;Ln3/z/z0;Ln3/z/q;ILs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.AsyncPagingDataDiffer$differBase$1"
    f = "AsyncPagingDataDiffer.kt"
    l = {
        0x63
    }
    m = "presentNewList"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Ln3/z/g$a;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:I


# direct methods
.method public constructor <init>(Ln3/z/g$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g$a$a;->f:Ln3/z/g$a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Ln3/z/g$a$a;->d:Ljava/lang/Object;

    iget p1, p0, Ln3/z/g$a$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln3/z/g$a$a;->e:I

    iget-object v0, p0, Ln3/z/g$a$a;->f:Ln3/z/g$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Ln3/z/g$a;->b(Ln3/z/z0;Ln3/z/z0;Ln3/z/q;ILs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
