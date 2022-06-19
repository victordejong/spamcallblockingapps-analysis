.class public final Le/a/e/a/t3$a$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/t3$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QaLinkPreviewDialog$onViewCreated$1$1$1"
    f = "QaLinkPreviewDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/e/a/t3$a$a;

.field public final synthetic f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;


# direct methods
.method public constructor <init>(Le/a/e/a/t3$a$a;Lcom/truecaller/messaging/linkpreviews/LinkMetaData;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/t3$a$a$a;->e:Le/a/e/a/t3$a$a;

    iput-object p2, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/a/t3$a$a$a;

    iget-object v0, p0, Le/a/e/a/t3$a$a$a;->e:Le/a/e/a/t3$a$a;

    iget-object v1, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    invoke-direct {p1, v0, v1, p2}, Le/a/e/a/t3$a$a$a;-><init>(Le/a/e/a/t3$a$a;Lcom/truecaller/messaging/linkpreviews/LinkMetaData;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/a/t3$a$a$a;

    iget-object v0, p0, Le/a/e/a/t3$a$a$a;->e:Le/a/e/a/t3$a$a;

    iget-object v1, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    invoke-direct {p1, v0, v1, p2}, Le/a/e/a/t3$a$a$a;-><init>(Le/a/e/a/t3$a$a;Lcom/truecaller/messaging/linkpreviews/LinkMetaData;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/a/t3$a$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/a/t3$a$a$a;->e:Le/a/e/a/t3$a$a;

    iget-object p1, p1, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iget-object p1, p1, Le/a/e/a/t3$a;->a:Le/a/e/a/t3;

    .line 3
    iget-object p1, p1, Le/a/e/a/t3;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "tvResult"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2022 url: "

    .line 5
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, v2, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 7
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(value)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "append(\'\\n\')"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2022 title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz v6, :cond_1

    .line 9
    iget-object v6, v6, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v3

    .line 10
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2022 description: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz v6, :cond_2

    .line 12
    iget-object v6, v6, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 13
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2022 type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz v6, :cond_3

    .line 15
    iget-object v6, v6, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->e:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    if-eqz v6, :cond_3

    .line 16
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2022 imageUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz v6, :cond_4

    .line 18
    iget-object v6, v6, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->d:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, v3

    .line 19
    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v1, Ls1/s;->a:Ls1/s;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Le/a/e/a/t3$a$a$a;->e:Le/a/e/a/t3$a$a;

    iget-object p1, p1, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iget-object p1, p1, Le/a/e/a/t3$a;->a:Le/a/e/a/t3;

    invoke-static {p1}, Le/f/a/c;->g(Landroidx/fragment/app/Fragment;)Le/f/a/i;

    move-result-object p1

    iget-object v0, p0, Le/a/e/a/t3$a$a$a;->f:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz v0, :cond_5

    .line 23
    iget-object v3, v0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->d:Ljava/lang/String;

    .line 24
    :cond_5
    invoke-virtual {p1, v3}, Le/f/a/i;->r(Ljava/lang/String;)Le/f/a/h;

    move-result-object p1

    iget-object v0, p0, Le/a/e/a/t3$a$a$a;->e:Le/a/e/a/t3$a$a;

    iget-object v0, v0, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iget-object v0, v0, Le/a/e/a/t3$a;->a:Le/a/e/a/t3;

    .line 25
    iget-object v0, v0, Le/a/e/a/t3;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-object v1
.end method
