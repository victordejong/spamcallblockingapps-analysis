.class public final Le/a/j/c/d/a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.surveys.data.local.SurveysDao$DefaultImpls"
    f = "SurveysDao.kt"
    l = {
        0x1f,
        0x20
    }
    m = "deleteAndInsertInTransaction"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/j/c/d/b;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/j/c/d/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/j/c/d/a;->f:Le/a/j/c/d/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/j/c/d/a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/j/c/d/a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/j/c/d/a;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Le/a/l4/k;->y(Le/a/j/c/d/b;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
