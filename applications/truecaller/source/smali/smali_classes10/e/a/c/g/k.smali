.class public final Le/a/c/g/k;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
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
        0x83,
        0x84
    }
    m = "reCalculateHamProbability"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/g/j;

.field public g:I


# direct methods
.method public constructor <init>(Le/a/c/g/j;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/j;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/c/g/k;->f:Le/a/c/g/j;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/g/k;->e:Ljava/lang/Object;

    iget p1, p0, Le/a/c/g/k;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/g/k;->g:I

    iget-object p1, p0, Le/a/c/g/k;->f:Le/a/c/g/j;

    invoke-static {p1, p0}, Le/a/c/g/j;->c(Le/a/c/g/j;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
