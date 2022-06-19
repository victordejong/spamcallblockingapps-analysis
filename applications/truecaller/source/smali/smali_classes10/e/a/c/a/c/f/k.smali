.class public final Le/a/c/a/c/f/k;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.important.domain.ModelDownloadBannerUsecase"
    f = "ModelDownloadBannerUsecase.kt"
    l = {
        0x2c
    }
    m = "execute"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/c/a/c/f/o;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/k;->f:Le/a/c/a/c/f/o;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/a/c/f/k;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/a/c/f/k;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/a/c/f/k;->e:I

    iget-object p1, p0, Le/a/c/a/c/f/k;->f:Le/a/c/a/c/f/o;

    invoke-virtual {p1, p0}, Le/a/c/a/c/f/o;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
