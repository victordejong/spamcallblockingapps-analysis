.class public Le/a/k3/j/d$j;
.super Le/a/k3/j/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k3/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/k3/j/d$c<",
        "Lcom/truecaller/data/entity/SpamData;",
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

.field public final l:Le/a/k3/c;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Le/a/k3/c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/d$c;-><init>(Landroid/database/Cursor;)V

    const-string v0, "data1"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$j;->f:I

    const-string v0, "data2"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$j;->g:I

    const-string v0, "data3"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$j;->h:I

    const-string v0, "data4"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$j;->i:I

    const-string v0, "spam_categories"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$j;->j:I

    const-string v0, "data5"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/k3/j/d$j;->k:I

    .line 8
    iput-object p2, p0, Le/a/k3/j/d$j;->l:Le/a/k3/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/k3/j/d$j;->h(Landroid/database/Cursor;)Lcom/truecaller/data/entity/SpamData;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroid/database/Cursor;)Lcom/truecaller/data/entity/SpamData;
    .locals 2

    .line 1
    iget v0, p0, Le/a/k3/j/d$j;->j:I

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/k3/j/d$j;->l:Le/a/k3/c;

    invoke-virtual {v1, v0}, Le/a/k3/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/truecaller/data/entity/SpamData;

    invoke-direct {v1, v0}, Lcom/truecaller/data/entity/SpamData;-><init>(Ljava/util/List;)V

    .line 4
    iget v0, p0, Le/a/k3/j/d$j;->f:I

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->c(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/truecaller/data/entity/SpamData;->setNumReports60days(Ljava/lang/Number;)V

    .line 5
    iget v0, p0, Le/a/k3/j/d$j;->g:I

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->c(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/truecaller/data/entity/SpamData;->setNumCalls60days(Ljava/lang/Number;)V

    .line 6
    iget v0, p0, Le/a/k3/j/d$j;->h:I

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->c(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/truecaller/data/entity/SpamData;->setNumCalls60DaysPointerPosition(Ljava/lang/Number;)V

    .line 7
    iget v0, p0, Le/a/k3/j/d$j;->i:I

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/truecaller/data/entity/SpamData;->setNumCallsHourly(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Le/a/k3/j/d$j;->k:I

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->c(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/truecaller/data/entity/SpamData;->setSpamVersion(Ljava/lang/Integer;)V

    return-object v1
.end method
