.class public final Le/a/r/z/o$f;
.super Le/a/r/z/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/z/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final e:Le/a/r/z/o$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/r/z/o$f;

    invoke-direct {v0}, Le/a/r/z/o$f;-><init>()V

    sput-object v0, Le/a/r/z/o$f;->e:Le/a/r/z/o$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v2, Lcom/truecaller/wizard/R$string;->VerificationError_invalidPrivacySelection:I

    const-string v1, "NumberAndCountryDontMatch"

    const-string v3, "Number and Country Don\'t Match"

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v5}, Le/a/r/z/o;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method
