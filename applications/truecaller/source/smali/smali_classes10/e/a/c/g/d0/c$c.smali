.class public final Le/a/c/g/d0/c$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/d0/c;->b(Ljava/util/List;DLs1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.categorizer.seed.CategorizerSeedManagerImpl"
    f = "CategoriserSeedManager.kt"
    l = {
        0x10f,
        0x110
    }
    m = "normalizeKeywordHamProbability"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/g/d0/c;

.field public g:I


# direct methods
.method public constructor <init>(Le/a/c/g/d0/c;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/d0/c;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/d0/c$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/c/g/d0/c$c;->f:Le/a/c/g/d0/c;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Le/a/c/g/d0/c$c;->e:Ljava/lang/Object;

    iget p1, p0, Le/a/c/g/d0/c$c;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/g/d0/c$c;->g:I

    iget-object p1, p0, Le/a/c/g/d0/c$c;->f:Le/a/c/g/d0/c;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Le/a/c/g/d0/c;->b(Ljava/util/List;DLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
