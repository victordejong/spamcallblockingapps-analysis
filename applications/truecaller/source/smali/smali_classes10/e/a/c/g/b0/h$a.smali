.class public final Le/a/c/g/b0/h$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/b0/h;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.categorizer.multiClass.MultiClassProbCalculatorImpl"
    f = "MultiClassProbCalculator.kt"
    l = {
        0x10,
        0x1a,
        0x2a
    }
    m = "calculateClassProbabilities"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public j:D

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Le/a/c/g/b0/h;

.field public m:I


# direct methods
.method public constructor <init>(Le/a/c/g/b0/h;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/b0/h;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/b0/h$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/c/g/b0/h$a;->l:Le/a/c/g/b0/h;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/g/b0/h$a;->k:Ljava/lang/Object;

    iget p1, p0, Le/a/c/g/b0/h$a;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/g/b0/h$a;->m:I

    iget-object p1, p0, Le/a/c/g/b0/h$a;->l:Le/a/c/g/b0/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/c/g/b0/h;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
