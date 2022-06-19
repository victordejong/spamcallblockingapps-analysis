.class public final Le/h/a/b/h/c;
.super Le/h/a/b/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/h/a/b/h/f<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/checkers/JsonArraySizeChecker;",
        "Lcom/clevertap/android/pushtemplates/checkers/SizeChecker;",
        "Lorg/json/JSONArray;",
        "entity",
        "size",
        "",
        "errorMsg",
        "",
        "(Lorg/json/JSONArray;ILjava/lang/String;)V",
        "getEntity",
        "()Lorg/json/JSONArray;",
        "getErrorMsg",
        "()Ljava/lang/String;",
        "setErrorMsg",
        "(Ljava/lang/String;)V",
        "getSize",
        "()I",
        "setSize",
        "(I)V",
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
.field public final b:Lorg/json/JSONArray;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMsg"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/h/a/b/h/f;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Le/h/a/b/h/c;->b:Lorg/json/JSONArray;

    iput-object p3, p0, Le/h/a/b/h/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/b/h/c;->b:Lorg/json/JSONArray;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Le/h/a/b/h/c;->c:Ljava/lang/String;

    const-string v3, ". Not showing notification"

    invoke-static {v2, v3}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    xor-int/2addr v0, v1

    return v0
.end method
