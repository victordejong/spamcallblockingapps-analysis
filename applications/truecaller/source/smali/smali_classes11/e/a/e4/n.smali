.class public Le/a/e4/n;
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
    iput-object p2, p0, Le/a/e4/n;->c:Le/a/e4/p;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e4/n;->c:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/multisim/SimInfo;

    .line 3
    iget-object v2, v1, Lcom/truecaller/multisim/SimInfo;->h:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, v1, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, "-1"

    return-object p1
.end method
