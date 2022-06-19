.class public final Le/a/c/f/k/f$a;
.super Le/a/c/f/k/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/f/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final d:Le/a/c/f/k/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/f/k/f$a;

    invoke-direct {v0}, Le/a/c/f/k/f$a;-><init>()V

    sput-object v0, Le/a/c/f/k/f$a;->d:Le/a/c/f/k/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lcom/truecaller/insights/R$attr;->tcx_textTertiary:I

    sget v1, Lcom/truecaller/insights/R$attr;->tcx_fillQuarternaryBackground:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Alert"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Le/a/c/f/k/f;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ls1/z/c/f;)V

    return-void
.end method
