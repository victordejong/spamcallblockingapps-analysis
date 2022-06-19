.class public final Le/h/a/b/h/b;
.super Le/h/a/b/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/h/a/b/h/f<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u001a\u0010\u0003\u001a\u00020\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/checkers/IntSizeChecker;",
        "Lcom/clevertap/android/pushtemplates/checkers/SizeChecker;",
        "",
        "entity",
        "size",
        "errorMsg",
        "",
        "(IILjava/lang/String;)V",
        "getEntity",
        "()I",
        "setEntity",
        "(I)V",
        "getErrorMsg",
        "()Ljava/lang/String;",
        "setErrorMsg",
        "(Ljava/lang/String;)V",
        "getSize",
        "setSize",
        "check",
        "",
        "clevertap-pushtemplates_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMsg"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Le/h/a/b/h/f;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 2
    iput p1, p0, Le/h/a/b/h/b;->b:I

    iput p2, p0, Le/h/a/b/h/b;->c:I

    iput-object p3, p0, Le/h/a/b/h/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget v0, p0, Le/h/a/b/h/b;->b:I

    iget v1, p0, Le/h/a/b/h/b;->c:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/h/a/b/h/b;->d:Ljava/lang/String;

    const-string v3, ". Not showing notification"

    invoke-static {v1, v3}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    xor-int/2addr v0, v2

    return v0
.end method
