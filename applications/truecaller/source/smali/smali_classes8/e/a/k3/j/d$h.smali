.class public Le/a/k3/j/d$h;
.super Le/a/k3/j/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k3/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/k3/j/d$c<",
        "Lcom/truecaller/data/entity/SearchWarning;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Le/a/k3/l/j;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Le/a/k3/l/j;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/d$c;-><init>(Landroid/database/Cursor;)V

    const-string v0, "data1"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$h;->f:I

    const-string v0, "data2"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$h;->g:I

    const-string v0, "data3"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/k3/j/d$h;->h:I

    .line 5
    iput-object p2, p0, Le/a/k3/j/d$h;->i:Le/a/k3/l/j;

    return-void
.end method


# virtual methods
.method public g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/SearchWarning;

    invoke-direct {v0}, Lcom/truecaller/data/entity/SearchWarning;-><init>()V

    .line 2
    iget v1, p0, Le/a/k3/j/d$h;->f:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/SearchWarning;->setId(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Le/a/k3/j/d$h;->h:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/SearchWarning;->setRuleName(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/k3/j/d$h;->i:Le/a/k3/l/j;

    iget v2, p0, Le/a/k3/j/d$h;->g:I

    invoke-virtual {p0, p1, v2}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 7
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_2

    .line 8
    :cond_2
    new-instance v1, Le/a/k3/l/i;

    invoke-direct {v1}, Le/a/k3/l/i;-><init>()V

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 9
    sget-object v2, Le/a/k3/l/j;->a:Le/m/e/k;

    invoke-virtual {v2, p1, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "gson.fromJson(serializedFeatures, listType)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 10
    :goto_2
    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/SearchWarning;->setFeatures(Ljava/util/List;)V

    return-object v0
.end method
