.class public final Le/a/a/c/m7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k7;


# instance fields
.field public a:Ln3/b/f/b0;

.field public final b:Le/a/p5/c0;

.field public final c:Le/a/k3/h;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/k3/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberTypeLabelProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/m7;->b:Le/a/p5/c0;

    iput-object p2, p0, Le/a/a/c/m7;->c:Le/a/k3/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/m7;->a:Ln3/b/f/b0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln3/b/f/b0;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/view/View;Lcom/truecaller/data/entity/Number;Le/a/a/c/g1;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    const-string v2, "context"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "anchor"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "number"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/HashMap;

    .line 1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const v4, 0x7f080693

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ICON"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const-string v10, "number.numberForDisplay ?: \"\""

    invoke-static {v4, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "TITLE"

    invoke-virtual {v3, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v4, v0, Le/a/a/c/m7;->b:Le/a/p5/c0;

    iget-object v12, v0, Le/a/a/c/m7;->c:Le/a/k3/h;

    invoke-static {v1, v4, v12}, Le/a/m0/a1$k;->m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "SUBTITLE"

    invoke-virtual {v3, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v2, v13

    const/4 v3, 0x1

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const v14, 0x7f0806ad

    .line 6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v14, 0x7f1210ca

    .line 7
    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "context.getString(R.string.voip_text)"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v6, v1

    :cond_1
    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 9
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 10
    new-instance v10, Landroid/widget/SimpleAdapter;

    const v4, 0x7f0d04ab

    .line 11
    filled-new-array {v5, v11, v12}, [Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    new-array v6, v1, [I

    .line 12
    fill-array-data v6, :array_0

    move-object v1, v10

    move-object/from16 v2, p1

    .line 13
    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 14
    new-instance v1, Ln3/b/f/b0;

    .line 15
    sget v2, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v3, 0x0

    .line 16
    invoke-direct {v1, v7, v3, v2, v13}, Ln3/b/f/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    iput-object v8, v1, Ln3/b/f/b0;->p:Landroid/view/View;

    const/4 v2, -0x2

    .line 18
    iput v2, v1, Ln3/b/f/b0;->d:I

    .line 19
    invoke-virtual {v1, v10}, Ln3/b/f/b0;->m(Landroid/widget/ListAdapter;)V

    .line 20
    new-instance v2, Le/a/a/c/l7;

    invoke-direct {v2, v8, v10, v9}, Le/a/a/c/l7;-><init>(Landroid/view/View;Landroid/widget/SimpleAdapter;Le/a/a/c/g1;)V

    .line 21
    iput-object v2, v1, Ln3/b/f/b0;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 22
    invoke-virtual {v1}, Ln3/b/f/b0;->show()V

    .line 23
    iput-object v1, v0, Le/a/a/c/m7;->a:Ln3/b/f/b0;

    return-void

    :array_0
    .array-data 4
        0x7f0a09c1
        0x7f0a1203
        0x7f0a1201
    .end array-data
.end method
