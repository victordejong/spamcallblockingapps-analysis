.class public final Lcom/appnext/base/moments/a/b/a;
.super Lcom/appnext/base/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appnext/base/a/c/a<",
        "Lcom/appnext/base/moments/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private co:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/appnext/base/a/c/a;-><init>()V

    const-string v0, "p"

    const-string v1, "c"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/base/moments/a/b/a;->co:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final O()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/b/a;->co:[Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lorg/json/JSONArray;)J
    .locals 2

    const-string v0, "ct"

    .line 1
    invoke-super {p0, v0, p1}, Lcom/appnext/base/a/c/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ag()V
    .locals 1

    const-string v0, "ct"

    .line 1
    invoke-super {p0, v0}, Lcom/appnext/base/a/c/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/a;
    .locals 2

    const-string v0, "p"

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 3
    new-instance v1, Lcom/appnext/base/moments/a/a/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/appnext/base/moments/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method
