.class public Le/a/k3/j/d$g;
.super Le/a/k3/j/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k3/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/k3/j/d$c<",
        "Lcom/truecaller/data/entity/Number;",
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

.field public final p:I

.field public final q:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/d$c;-><init>(Landroid/database/Cursor;)V

    const-string v0, "data1"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->f:I

    const-string v0, "data2"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->g:I

    const-string v0, "data3"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->h:I

    const-string v0, "data4"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->i:I

    const-string v0, "data5"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->j:I

    const-string v0, "data6"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->k:I

    const-string v0, "data7"

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->l:I

    const-string v0, "data8"

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->m:I

    const-string v0, "data9"

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->n:I

    const-string v0, "data10"

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->o:I

    const-string v0, "data11"

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$g;->q:I

    const-string v0, "aggregated_raw_contact_source"

    const-string v1, "contact_source"

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->b(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/k3/j/d$g;->p:I

    return-void
.end method


# virtual methods
.method public g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Number;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Number;-><init>()V

    .line 2
    iget v1, p0, Le/a/k3/j/d$g;->f:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Number;->t(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Le/a/k3/j/d$g;->g:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Number;->s(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Le/a/k3/j/d$g;->h:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Number;->x(I)V

    .line 5
    iget v1, p0, Le/a/k3/j/d$g;->i:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Number;->y(I)V

    .line 6
    iget v1, p0, Le/a/k3/j/d$g;->j:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Number;->z(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Le/a/k3/j/d$g;->k:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v1

    .line 8
    iget-object v2, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->dialingCode:Ljava/lang/String;

    .line 9
    iget v1, p0, Le/a/k3/j/d$g;->l:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Number;->setCountryCode(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Le/a/k3/j/d$g;->m:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    invoke-static {v1, v2}, Le/a/b0/q/c0;->l(Ljava/lang/String;Le/m/f/a/j$d;)Le/m/f/a/j$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Number;->v(Le/m/f/a/j$d;)V

    .line 11
    iget v1, p0, Le/a/k3/j/d$g;->n:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Number;->w(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Le/a/k3/j/d$g;->o:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->carrier:Ljava/lang/String;

    .line 14
    iget v1, p0, Le/a/k3/j/d$g;->p:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v1

    .line 15
    iput v1, v0, Lcom/truecaller/data/entity/Number;->a:I

    .line 16
    iget v1, p0, Le/a/k3/j/d$g;->q:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v1, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object p1, v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->spamType:Ljava/lang/String;

    return-object v0
.end method
