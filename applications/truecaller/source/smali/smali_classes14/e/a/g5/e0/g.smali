.class public final Le/a/g5/e0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Le/a/g5/b0/a<",
        "+",
        "Ls1/o<",
        "+",
        "Le/a/b0/p/c;",
        "+",
        "Lcom/truecaller/data/entity/Contact;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/g;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/g5/b0/a;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Le/a/g5/b0/a;->a:Ljava/lang/Object;

    .line 4
    check-cast v0, Ls1/o;

    .line 5
    iget-object v0, v0, Ls1/o;->c:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p1, Le/a/g5/b0/a;->a:Ljava/lang/Object;

    .line 8
    check-cast v0, Ls1/o;

    .line 9
    iget-object v0, v0, Ls1/o;->a:Ljava/lang/Object;

    .line 10
    check-cast v0, Le/a/b0/p/c;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Le/a/g5/e0/g;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    sget v1, Lcom/truecaller/tagger/R$string;->TagsChooserThanks:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 12
    :cond_0
    iget-object v0, p0, Le/a/g5/e0/g;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    .line 13
    iget-object p1, p1, Le/a/g5/b0/a;->a:Ljava/lang/Object;

    .line 14
    check-cast p1, Ls1/o;

    .line 15
    iget-object v1, p1, Ls1/o;->a:Ljava/lang/Object;

    .line 16
    check-cast v1, Le/a/b0/p/c;

    .line 17
    iget-object p1, p1, Ls1/o;->b:Ljava/lang/Object;

    .line 18
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 19
    sget v2, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->i:I

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 21
    iget-wide v2, v1, Le/a/b0/p/c;->a:J

    .line 22
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "NONE"

    :goto_0
    const-string v3, "Tag_Id"

    .line 23
    invoke-static {v3, v2}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 24
    iget-object v3, v0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->d:Le/a/q2/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 25
    new-instance v5, Le/a/q2/g$b$a;

    const-string v6, "TAGVIEW_Tagged"

    invoke-direct {v5, v6, v4, v2, v4}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v2, "event.build()"

    .line 26
    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 27
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_2

    .line 28
    iget-wide v3, v1, Le/a/b0/p/c;->a:J

    const-string v1, "tag_id"

    .line 29
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2
    const-string v1, "contact"

    .line 30
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 31
    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 32
    invoke-virtual {v0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->finish()V

    goto :goto_1

    :cond_3
    const-string p1, "analytics"

    .line 33
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 34
    :cond_4
    iget-object p1, p0, Le/a/g5/e0/g;->a:Lcom/truecaller/tagger/tagPicker/TaggerActivity;

    .line 35
    sget v0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->i:I

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 37
    invoke-virtual {p1}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->finish()V

    :goto_1
    return-void
.end method
