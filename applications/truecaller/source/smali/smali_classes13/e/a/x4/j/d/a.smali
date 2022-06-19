.class public final Le/a/x4/j/d/a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.searchwarnings.data.db.SearchWarningsDao$DefaultImpls"
    f = "SearchWarningsDao.kt"
    l = {
        0x18,
        0x19
    }
    m = "deleteAndInsertInTransaction"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/x4/j/d/b;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/x4/j/d/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/x4/j/d/a;->f:Le/a/x4/j/d/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/x4/j/d/a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/x4/j/d/a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/x4/j/d/a;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Le/a/l4/k;->x(Le/a/x4/j/d/b;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
