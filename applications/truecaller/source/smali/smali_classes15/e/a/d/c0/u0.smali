.class public final Le/a/d/c0/u0;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipGroupCallDetailsRepositoryKt"
    f = "VoipGroupCallDetailsRepository.kt"
    l = {
        0xa5
    }
    m = "toVoipGroupCallDetailPeer"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0

    invoke-direct {p0, p1}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/d/c0/u0;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/d/c0/u0;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/d/c0/u0;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Le/a/p5/s0/g;->P1(Le/a/d/b0/c;Le/a/d/c0/j1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
