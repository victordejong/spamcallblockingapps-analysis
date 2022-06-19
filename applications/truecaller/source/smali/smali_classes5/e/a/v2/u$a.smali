.class public final Le/a/v2/u$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v2/u;->a(Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.attestation.VerificationAttestationManagerImpl"
    f = "VerificationAttestationManager.kt"
    l = {
        0x3c
    }
    m = "verifyAttestation"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/v2/u;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/v2/u;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v2/u$a;->f:Le/a/v2/u;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Le/a/v2/u$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/v2/u$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/v2/u$a;->e:I

    iget-object v0, p0, Le/a/v2/u$a;->f:Le/a/v2/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Le/a/v2/u;->a(Ljava/lang/String;Lcom/truecaller/attestation/AttestationEngine;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
