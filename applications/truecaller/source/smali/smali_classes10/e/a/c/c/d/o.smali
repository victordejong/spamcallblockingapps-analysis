.class public final Le/a/c/c/d/o;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.database.dao.CategorizerDao$DefaultImpls"
    f = "CategorizerDao.kt"
    l = {
        0x39,
        0x3a,
        0x3b
    }
    m = "updateCategorizerModel"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/c/c/d/p;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/c/c/d/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/c/d/o;->f:Le/a/c/c/d/p;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/c/d/o;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/c/d/o;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/c/d/o;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Le/a/m0/a1$k;->I1(Le/a/c/c/d/p;Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
