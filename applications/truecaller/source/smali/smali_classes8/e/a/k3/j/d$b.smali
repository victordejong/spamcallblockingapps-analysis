.class public Le/a/k3/j/d$b;
.super Le/a/k3/j/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k3/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/k3/j/d$c<",
        "Lcom/truecaller/data/entity/Business;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/d$c;-><init>(Landroid/database/Cursor;)V

    const-string v0, "data1"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->f:I

    const-string v0, "data2"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->g:I

    const-string v0, "data3"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->h:I

    const-string v0, "data4"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->i:I

    const-string v0, "data5"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->j:I

    const-string v0, "data6"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->k:I

    const-string v0, "data7"

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->l:I

    const-string v0, "data8"

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->m:I

    const-string v0, "data9"

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$b;->n:I

    const-string v0, "data10"

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/k3/j/d$b;->o:I

    return-void
.end method


# virtual methods
.method public g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Business;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Business;-><init>()V

    .line 2
    iget v1, p0, Le/a/k3/j/d$b;->f:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setBranch(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Le/a/k3/j/d$b;->g:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setDepartment(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Le/a/k3/j/d$b;->h:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setCompanySize(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Le/a/k3/j/d$b;->i:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setOpeningHours(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Le/a/k3/j/d$b;->j:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setLandline(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Le/a/k3/j/d$b;->k:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setScore(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Le/a/k3/j/d$b;->l:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setSwishNumber(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Le/a/k3/j/d$b;->m:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setMediaCallerIDs(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Le/a/k3/j/d$b;->n:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Business;->setAppStores(Ljava/lang/String;)V

    .line 11
    iget v1, p0, Le/a/k3/j/d$b;->o:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/Business;->setBrandedMedia(Ljava/lang/String;)V

    return-object v0
.end method
