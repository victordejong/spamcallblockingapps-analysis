.class public final Le/a/u/k$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/k;->Ij(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.yearincalling.YearInCallingPresenter"
    f = "YearInCallingPresenter.kt"
    l = {
        0x33,
        0x34,
        0x35,
        0x37,
        0x38,
        0x39,
        0x3c,
        0x3d,
        0x3f,
        0x40,
        0x43,
        0x44,
        0x45
    }
    m = "fetchData"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/u/k;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(Le/a/u/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/u/k$a;->f:Le/a/u/k;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/u/k$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/u/k$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/u/k$a;->e:I

    iget-object p1, p0, Le/a/u/k$a;->f:Le/a/u/k;

    invoke-virtual {p1, p0}, Le/a/u/k;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
