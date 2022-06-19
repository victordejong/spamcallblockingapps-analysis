.class public Lcom/hiya/stingray/t/i1/l0;
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

    iput-object p1, p0, Lcom/hiya/stingray/t/i1/l0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/c1;Ljava/lang/String;)Lg/g/b/c/m;
    .locals 11

    const-string v0, "spamReportItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    return-object v3

    .line 2
    :cond_2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v0, "spamReportItem.parsedPhone!!"

    invoke-static {v5, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/t/i1/l0;->a:Landroid/content/Context;

    const v3, 0x7f1102e1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "context.getString(R.stri\u2026eported_as, categoryName)"

    invoke-static {v6, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, ""

    :goto_2
    move-object v7, v0

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c1;->b()I

    move-result v9

    .line 6
    new-instance p1, Lg/g/b/c/m;

    const-string v10, ""

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lg/g/b/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1

    .line 7
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3
.end method
