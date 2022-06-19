.class public abstract Le/a/k3/j/d$c;
.super Le/a/k3/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k3/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/truecaller/data/entity/RowEntity;",
        ">",
        "Le/a/k3/j/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/k3/j/a;-><init>()V

    const-string v0, "data_id"

    const-string v1, "_id"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->b(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$c;->a:I

    const-string v0, "data_tc_id"

    const-string v1, "tc_id"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->b(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$c;->b:I

    const-string v0, "data_is_primary"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->b(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$c;->c:I

    const-string v0, "data_phonebook_id"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->b(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$c;->d:I

    const-string v0, "aggregated_raw_contact_source"

    const-string v1, "contact_source"

    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->b(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/k3/j/d$c;->e:I

    return-void
.end method


# virtual methods
.method public f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/k3/j/d$c;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/k3/j/d$c;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget v1, p0, Le/a/k3/j/d$c;->a:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->d(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/RowEntity;->setId(Ljava/lang/Long;)V

    .line 4
    iget v1, p0, Le/a/k3/j/d$c;->b:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Le/a/k3/j/d$c;->c:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/RowEntity;->setIsPrimary(Z)V

    .line 6
    iget v1, p0, Le/a/k3/j/d$c;->d:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->d(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/RowEntity;->setDataPhonebookId(Ljava/lang/Long;)V

    .line 7
    iget v1, p0, Le/a/k3/j/d$c;->e:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method
