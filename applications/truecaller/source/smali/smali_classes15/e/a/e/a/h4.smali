.class public Le/a/e/a/h4;
.super Le/a/j4/a/a;
.source "SourceFile"


# instance fields
.field public d:Landroid/graphics/Bitmap;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Le/a/e/a/i4;


# direct methods
.method public constructor <init>(Le/a/e/a/i4;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/a/h4;->f:Le/a/e/a/i4;

    iput-object p2, p0, Le/a/e/a/h4;->e:Landroid/view/View;

    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/a/h4;->f:Le/a/e/a/i4;

    check-cast p1, Landroid/net/Uri;

    .line 2
    iput-object p1, v0, Le/a/e/a/i4;->d:Landroid/net/Uri;

    .line 3
    iget-object p1, v0, Le/a/e/a/i4;->c:Landroid/widget/Button;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/a/h4;->f:Le/a/e/a/i4;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Le/a/e/a/h4;->d:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Le/a/b0/q/g0;->P(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/j4/a/a;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/a/h4;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/j4/a/a;->onPreExecute()V

    .line 2
    iget-object v0, p0, Le/a/e/a/h4;->e:Landroid/view/View;

    invoke-static {v0}, Le/a/b0/q/g0;->N(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Le/a/e/a/h4;->d:Landroid/graphics/Bitmap;

    return-void
.end method
