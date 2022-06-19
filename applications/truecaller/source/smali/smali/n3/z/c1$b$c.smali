.class public final Ln3/z/c1$b$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/c1$b;->b(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageEvent$Insert"
    f = "PageEvent.kt"
    l = {
        0x4a
    }
    m = "map"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Ln3/z/c1$b;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln3/z/c1$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/c1$b$c;->f:Ln3/z/c1$b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ln3/z/c1$b$c;->d:Ljava/lang/Object;

    iget p1, p0, Ln3/z/c1$b$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln3/z/c1$b$c;->e:I

    iget-object p1, p0, Ln3/z/c1$b$c;->f:Ln3/z/c1$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ln3/z/c1$b;->b(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
