.class public Le/a/k3/j/d$d;
.super Le/a/k3/j/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k3/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/k3/j/d$c<",
        "Lcom/truecaller/data/entity/Link;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/d$c;-><init>(Landroid/database/Cursor;)V

    const-string v0, "data1"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$d;->f:I

    const-string v0, "data2"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/k3/j/d$d;->g:I

    const-string v0, "data3"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/k3/j/d$d;->h:I

    return-void
.end method


# virtual methods
.method public g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Link;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Link;-><init>()V

    .line 2
    iget v1, p0, Le/a/k3/j/d$d;->f:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Link;->setInfo(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Le/a/k3/j/d$d;->g:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Link;->setService(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Le/a/k3/j/d$d;->h:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/Link;->setCaption(Ljava/lang/String;)V

    return-object v0
.end method
