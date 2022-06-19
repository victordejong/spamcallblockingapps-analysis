.class public final Le/a/c/f/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le/a/c/f/k/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "card"

    const-string v1, "creditcard"

    const-string v2, "debitcard"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/c/f/k/a;->a:Ljava/util/List;

    return-void
.end method
