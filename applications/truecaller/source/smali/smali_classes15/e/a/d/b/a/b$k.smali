.class public final Le/a/d/b/a/b$k;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/b;->Xj(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter"
    f = "LegacyVoipServicePresenter.kt"
    l = {
        0x1d3
    }
    m = "loginRtm"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/d/b/a/b;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/d/b/a/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/b$k;->f:Le/a/d/b/a/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/d/b/a/b$k;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/d/b/a/b$k;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/d/b/a/b$k;->e:I

    iget-object p1, p0, Le/a/d/b/a/b$k;->f:Le/a/d/b/a/b;

    invoke-virtual {p1, p0}, Le/a/d/b/a/b;->Xj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
