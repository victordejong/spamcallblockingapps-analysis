.class public final Le/a/i/d0/c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.AdPartnerMediationManagerImpl$NetworkDataSource"
    f = "AdPartnerMediationManager.kt"
    l = {
        0x75
    }
    m = "get"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/i/d0/d$a;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/i/d0/d$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/c;->f:Le/a/i/d0/d$a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/i/d0/c;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/i/d0/c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/i/d0/c;->e:I

    iget-object p1, p0, Le/a/i/d0/c;->f:Le/a/i/d0/d$a;

    invoke-virtual {p1, p0}, Le/a/i/d0/d$a;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
