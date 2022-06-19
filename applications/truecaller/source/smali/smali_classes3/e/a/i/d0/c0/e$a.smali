.class public final Le/a/i/d0/c0/e$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/c0/e;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.cache.DataSourceWrapper$wrap$1"
    f = "DataSourceWrapper.kt"
    l = {
        0xf
    }
    m = "get"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/i/d0/c0/e;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/i/d0/c0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/c0/e$a;->f:Le/a/i/d0/c0/e;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/i/d0/c0/e$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/i/d0/c0/e$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/i/d0/c0/e$a;->e:I

    iget-object p1, p0, Le/a/i/d0/c0/e$a;->f:Le/a/i/d0/c0/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/i/d0/c0/e;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
