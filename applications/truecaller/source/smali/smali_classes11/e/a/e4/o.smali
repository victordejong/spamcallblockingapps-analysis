.class public Le/a/e4/o;
.super Le/a/e4/m;
.source "SourceFile"


# instance fields
.field public final c:Le/a/e4/p;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Le/a/e4/p;)V
    .locals 1

    .line 1
    move-object v0, p2

    check-cast v0, Le/a/e4/r;

    invoke-virtual {v0}, Le/a/e4/r;->q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Le/a/e4/m;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Le/a/e4/o;->c:Le/a/e4/p;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    const-string v0, "-1"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/e4/o;->c:Le/a/e4/p;

    invoke-interface {v1, p1}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
