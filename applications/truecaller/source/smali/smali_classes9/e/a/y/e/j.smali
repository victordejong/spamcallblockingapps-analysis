.class public Le/a/y/e/j;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Le/a/y/e/i;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Le/a/y/e/k$a;

.field public b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Le/a/y/e/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$layout;->adapter_emoji_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Le/a/y/e/j;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Le/a/y/e/i;)V
    .locals 1

    .line 3
    sget v0, Lcom/truecaller/flashsdk/R$layout;->adapter_emoji_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Le/a/y/e/j;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Le/a/y/e/j;->b:Landroid/view/LayoutInflater;

    sget v0, Lcom/truecaller/flashsdk/R$layout;->adapter_emoji_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Le/a/y/e/j$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Le/a/y/e/j$b;-><init>(Le/a/y/e/j;Landroid/view/View;Le/a/y/e/j$a;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/y/e/j$b;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/y/e/i;

    .line 6
    iget-object v0, p3, Le/a/y/e/j$b;->a:Landroid/widget/TextView;

    .line 7
    iget-object v1, p1, Le/a/y/e/i;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p3, Le/a/y/e/j$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p3, Le/a/y/e/j$b;->a:Landroid/widget/TextView;

    new-instance v0, Le/a/y/e/d;

    invoke-direct {v0, p3}, Le/a/y/e/d;-><init>(Le/a/y/e/j$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
