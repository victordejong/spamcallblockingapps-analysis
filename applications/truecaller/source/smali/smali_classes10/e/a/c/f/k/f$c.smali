.class public final Le/a/c/f/k/f$c;
.super Le/a/c/f/k/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/f/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final d:Le/a/c/f/k/f$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/f/k/f$c;

    invoke-direct {v0}, Le/a/c/f/k/f$c;-><init>()V

    sput-object v0, Le/a/c/f/k/f$c;->d:Le/a/c/f/k/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    const-string v1, "Delayed"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v2}, Le/a/c/f/k/f;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ls1/z/c/f;)V

    return-void
.end method
