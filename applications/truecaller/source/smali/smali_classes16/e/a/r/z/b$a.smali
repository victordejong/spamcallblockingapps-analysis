.class public final Le/a/r/z/b$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/b;->a(Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/Long;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.verification.PrimaryNumberVerificationHelper"
    f = "VerificationHelper.kt"
    l = {
        0x4d
    }
    m = "onNumberVerified"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/r/z/b;


# direct methods
.method public constructor <init>(Le/a/r/z/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/b$a;->f:Le/a/r/z/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/r/z/b$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/r/z/b$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/r/z/b$a;->e:I

    iget-object p1, p0, Le/a/r/z/b$a;->f:Le/a/r/z/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Le/a/r/z/b;->a(Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/Long;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
