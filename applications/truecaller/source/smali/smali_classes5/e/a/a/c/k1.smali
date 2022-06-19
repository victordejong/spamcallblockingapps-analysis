.class public final synthetic Le/a/a/c/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/k1;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Le/a/a/c/k1;->a:Le/a/a/c/y3;

    .line 1
    iget-object p1, p1, Le/a/a/c/y3;->g:Le/a/a/x0/a;

    .line 2
    iget-object v0, p1, Le/a/a/x0/a;->a:Le/a/e4/p;

    iget-object v1, p1, Le/a/a/x0/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget v0, v0, Lcom/truecaller/multisim/SimInfo;->a:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 4
    :goto_1
    iget-object v3, p1, Le/a/a/x0/a;->a:Le/a/e4/p;

    invoke-interface {v3, v0}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v3, v0, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    .line 6
    iput-object v3, p1, Le/a/a/x0/a;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Le/a/a/x0/a;->b()V

    .line 8
    iget-object v3, p1, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    .line 9
    iget-object v5, v0, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, v0, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string v6, ""

    aput-object v6, v4, v5

    move v6, v1

    :goto_2
    if-ge v6, v3, :cond_3

    .line 10
    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 11
    :goto_3
    iget-object v3, p1, Le/a/a/x0/a;->d:Le/a/a/x0/b;

    iget-object p1, p1, Le/a/a/x0/a;->b:Le/a/p5/c0;

    const v4, 0x7f120224

    new-array v5, v5, [Ljava/lang/Object;

    iget v0, v0, Lcom/truecaller/multisim/SimInfo;->a:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    aput-object v7, v5, v2

    invoke-interface {p1, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Le/a/a/x0/b;->rm(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
