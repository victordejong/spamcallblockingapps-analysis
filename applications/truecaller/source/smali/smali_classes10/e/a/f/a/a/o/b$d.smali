.class public final Le/a/f/a/a/o/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/a/o/b;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/a/a/o/b;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/f/a/a/o/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/o/b$d;->a:Le/a/f/a/a/o/b;

    iput-object p2, p0, Le/a/f/a/a/o/b$d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/f/a/a/o/b$d;->a:Le/a/f/a/a/o/b;

    .line 2
    iget-object p1, p1, Le/a/f/a/a/o/b;->b:Le/a/f/a/a/o/c;

    .line 3
    iget-object v0, p0, Le/a/f/a/a/o/b$d;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v0, p1

    check-cast v0, Le/a/f/a/a/o/f;

    .line 4
    iget-object p1, v0, Le/a/f/a/a/o/f;->e:Le/a/f/y/c;

    invoke-interface {p1}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    sget v1, Lcom/truecaller/incallui/R$string;->incallui_reject_message_custom_option:I

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_3

    .line 6
    iget-object v1, v0, Le/a/f/a/a/o/f;->f:Le/a/f/z/x;

    check-cast v1, Le/a/f/r;

    .line 7
    iget-object v3, v1, Le/a/f/r;->b:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->c()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v1, v1, Le/a/f/r;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h5/w;

    invoke-interface {v1}, Le/a/h5/w;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 8
    new-instance v3, Le/a/f/a/a/o/e;

    invoke-direct {v3, v0, p1, p2, v2}, Le/a/f/a/a/o/e;-><init>(Le/a/f/a/a/o/f;Ljava/lang/String;Ljava/lang/Integer;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_2

    .line 9
    :cond_2
    iget-object p1, v0, Le/a/f/a/a/o/f;->e:Le/a/f/y/c;

    iget-object v0, v0, Le/a/f/a/a/o/f;->g:Le/a/p5/c0;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resourceProvider.getString(content)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/f/y/c;->y(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    iget-object p1, v0, Le/a/f/a/a/o/f;->h:Le/a/f/s;

    .line 11
    iget-object p1, p1, Le/a/f/s;->a:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t4/c;

    invoke-interface {p1}, Le/a/t4/c;->d()Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    .line 12
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/o/d;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/f/a/a/o/d;->T()V

    :cond_4
    :goto_2
    return-void
.end method
