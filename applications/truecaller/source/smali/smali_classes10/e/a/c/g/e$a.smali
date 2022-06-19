.class public final Le/a/c/g/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/f0/h;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/c/g/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/c/g/e$a;

    invoke-direct {v0}, Le/a/c/g/e$a;-><init>()V

    sput-object v0, Le/a/c/g/e$a;->b:Le/a/c/g/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ls1/f0/h;

    .line 1
    new-instance v1, Ls1/f0/h;

    const-string v2, "trusts you to be his/her guardian"

    invoke-direct {v1, v2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Ls1/f0/h;

    const-string v2, "is sharing his/her location with you NOW! "

    invoke-direct {v1, v2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Ls1/f0/h;

    const-string v2, "is not feeling safe and needs HELP!"

    invoke-direct {v1, v2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
