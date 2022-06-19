.class public final Le/a/r/z/o$j;
.super Le/a/r/z/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/z/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 1
    sget v2, Lcom/truecaller/wizard/R$plurals;->VerificationError_limitExceededHours:I

    const-string v1, "VerificationAttemptsExceeded"

    const-string v3, "Verification Attempts Exceeded"

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v5}, Le/a/r/z/o;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    iput p1, p0, Le/a/r/z/o$j;->e:I

    return-void
.end method
