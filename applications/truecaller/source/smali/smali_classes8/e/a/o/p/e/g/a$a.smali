.class public final Le/a/o/p/e/g/a$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/e/g/a;->d(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonDao"
    f = "PredefinedCallReasonDao.kt"
    l = {
        0x18,
        0x19
    }
    m = "replacePredefinedCallReasons$suspendImpl"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/o/p/e/g/a;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/o/p/e/g/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/e/g/a$a;->f:Le/a/o/p/e/g/a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/o/p/e/g/a$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/o/p/e/g/a$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/o/p/e/g/a$a;->e:I

    iget-object p1, p0, Le/a/o/p/e/g/a$a;->f:Le/a/o/p/e/g/a;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Le/a/o/p/e/g/a;->e(Le/a/o/p/e/g/a;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
