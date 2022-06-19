.class public final Le/a/i/e/h/a/a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.offline.db.dao.OfflineAdUiConfigDao$DefaultImpls"
    f = "OfflineAdUiConfigDao.kt"
    l = {
        0x1e,
        0x1f
    }
    m = "add"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/i/e/h/a/b;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/h/a/a;->f:Le/a/i/e/h/a/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/i/e/h/a/a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/i/e/h/a/a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/i/e/h/a/a;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Le/m/d/y/n;->i(Le/a/i/e/h/a/b;Le/a/i/e/h/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
