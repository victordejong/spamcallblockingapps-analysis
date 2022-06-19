.class public final Le/a/r/z/o$k;
.super Le/a/r/z/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/z/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# static fields
.field public static final e:Le/a/r/z/o$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/r/z/o$k;

    invoke-direct {v0}, Le/a/r/z/o$k;-><init>()V

    sput-object v0, Le/a/r/z/o$k;->e:Le/a/r/z/o$k;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v2, Lcom/truecaller/wizard/R$string;->VerificationError_verificationFailed:I

    .line 2
    sget v4, Lcom/truecaller/wizard/R$string;->StrTryAgain:I

    const-string v1, "VerificationFailed"

    const-string v3, "Verification Failed"

    const/4 v5, 0x0

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Le/a/r/z/o;-><init>(Ljava/lang/String;ILjava/lang/String;ILs1/z/c/f;)V

    return-void
.end method
