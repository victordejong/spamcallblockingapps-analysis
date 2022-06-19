.class public final Ln3/z/w2;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.SeparatorsKt"
    f = "Separators.kt"
    l = {
        0x52
    }
    m = "insertInternalSeparators"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0

    invoke-direct {p0, p1}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ln3/z/w2;->d:Ljava/lang/Object;

    iget p1, p0, Ln3/z/w2;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln3/z/w2;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Landroid/support/v4/media/session/MediaSessionCompat;->G0(Ln3/z/g3;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
