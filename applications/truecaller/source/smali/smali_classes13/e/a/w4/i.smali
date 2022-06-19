.class public abstract Le/a/w4/i;
.super Le/a/w4/a;
.source "SourceFile"


# instance fields
.field public final n:I

.field public final o:Le/a/w4/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/j4/a/d;Le/a/h0/j;Le/a/r2/f;Lcom/truecaller/data/entity/Contact;ILjava/lang/String;Ljava/util/UUID;ILe/a/w4/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/j4/a/d;",
            "Le/a/h0/j;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Lcom/truecaller/data/entity/Contact;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "I",
            "Le/a/w4/d;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 1
    invoke-direct/range {v0 .. v8}, Le/a/w4/a;-><init>(Landroid/content/Context;Le/a/j4/a/d;Le/a/h0/j;Le/a/r2/f;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/util/UUID;I)V

    move/from16 v0, p6

    .line 2
    iput v0, v9, Le/a/w4/i;->n:I

    move-object/from16 v0, p10

    .line 3
    iput-object v0, v9, Le/a/w4/i;->o:Le/a/w4/d;

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/w4/i;->n:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iget v1, p0, Le/a/w4/i;->n:I

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-super {p0, p1, p2}, Le/a/w4/a;->d(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Le/a/w4/a;->d(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
