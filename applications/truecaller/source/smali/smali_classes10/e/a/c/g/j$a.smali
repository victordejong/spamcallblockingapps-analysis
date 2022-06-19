.class public final Le/a/c/g/j$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/j;->e(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.categorizer.InsightsCategorizerImpl"
    f = "InsightsCategorizer.kt"
    l = {
        0xb1,
        0xb2,
        0xca,
        0xb9
    }
    m = "normaliseHamProbability"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:D

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Le/a/c/g/j;

.field public j:I


# direct methods
.method public constructor <init>(Le/a/c/g/j;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/j;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/j$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/c/g/j$a;->i:Le/a/c/g/j;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/g/j$a;->h:Ljava/lang/Object;

    iget p1, p0, Le/a/c/g/j$a;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/g/j$a;->j:I

    iget-object p1, p0, Le/a/c/g/j$a;->i:Le/a/c/g/j;

    .line 1
    invoke-virtual {p1, p0}, Le/a/c/g/j;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
