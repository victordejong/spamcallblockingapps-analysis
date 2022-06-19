.class public final Lcom/hiya/client/callerid/ui/overlay/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/g/e;->a:Landroid/content/Context;

    return-void
.end method

.method private final a(Lcom/hiya/client/callerid/ui/b0/k;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/overlay/g/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/g/e;->a:Landroid/content/Context;

    sget v0, Lcom/hiya/client/callerid/ui/s;->k:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.hiya_type_phone)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/g/e;->a:Landroid/content/Context;

    sget v0, Lcom/hiya/client/callerid/ui/s;->i:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.hiya_type_home)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/g/e;->a:Landroid/content/Context;

    sget v0, Lcom/hiya/client/callerid/ui/s;->j:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.hiya_type_mobile)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final b(Lcom/hiya/client/callerid/ui/b0/f;Ljava/lang/String;)Lg/g/b/c/f;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "contact"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rawPhone"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/overlay/g/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/b0/f;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/s/k;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/client/callerid/ui/b0/a;

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/hiya/client/callerid/ui/b0/b;->a(Lcom/hiya/client/callerid/ui/b0/a;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 3
    :goto_0
    invoke-static {v2, v4}, Lcom/hiya/client/callerid/ui/e0/k;->c(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object/from16 v18, v2

    const-string v4, "ViewUtil.formatLocationS\u2026edAddress ?: \"\"\n        )"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static/range {p1 .. p2}, Lcom/hiya/client/callerid/ui/b0/g;->a(Lcom/hiya/client/callerid/ui/b0/f;Ljava/lang/String;)Lcom/hiya/client/callerid/ui/b0/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/hiya/client/callerid/ui/overlay/g/e;->a(Lcom/hiya/client/callerid/ui/b0/k;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2, v1}, Lcom/hiya/client/callerid/ui/e0/k;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    move-object/from16 v17, v1

    .line 6
    new-instance v2, Lg/g/b/c/f;

    move-object v6, v2

    .line 7
    sget-object v7, Lg/g/b/c/i;->UNKNOWN:Lg/g/b/c/i;

    const/4 v8, -0x1

    .line 8
    sget-object v14, Lg/g/b/c/q;->OK:Lg/g/b/c/q;

    .line 9
    sget-object v15, Lg/g/b/c/o;->NONE:Lg/g/b/c/o;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/hiya/client/callerid/ui/b0/f;->b()Ljava/lang/String;

    move-result-object v16

    const-string v3, "formattedPhone"

    .line 11
    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Lg/g/b/c/e;

    move-object/from16 v20, v1

    invoke-direct {v1, v5, v5, v5}, Lg/g/b/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v23, -0x1

    .line 13
    sget-object v25, Lg/g/b/c/r;->EVENT_PROFILE:Lg/g/b/c/r;

    const-wide/16 v26, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v31, 0x380000

    const/16 v32, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v19, ""

    const-string v21, ""

    .line 14
    invoke-direct/range {v6 .. v32}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    return-object v2
.end method
