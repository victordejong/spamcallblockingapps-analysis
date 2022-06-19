.class public Lcom/truecaller/tagger/TagPickActivity;
.super Le/a/g5/g;
.source "SourceFile"

# interfaces
.implements Le/a/g5/t$f;


# static fields
.field public static final synthetic q:I


# instance fields
.field public h:Lcom/truecaller/data/entity/Contact;

.field public i:I

.field public j:I

.field public k:Le/a/r2/a;

.field public l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/g5/n;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Le/a/g5/p;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Le/a/r2/j;

.field public p:Le/a/r2/l;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/g5/g;-><init>()V

    return-void
.end method


# virtual methods
.method public F5(Le/a/b0/p/c;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/truecaller/tagger/TagPickActivity;->h:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/truecaller/tagger/TagPickActivity;->k:Le/a/r2/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/r2/a;->b()V

    :cond_0
    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    .line 5
    iget-wide v2, p1, Le/a/b0/p/c;->c:J

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move-wide v6, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    iget-wide v0, p1, Le/a/b0/p/c;->a:J

    :cond_2
    move-wide v8, v0

    .line 7
    iget-object v0, p0, Lcom/truecaller/tagger/TagPickActivity;->l:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/g5/n;

    iget-object v5, p0, Lcom/truecaller/tagger/TagPickActivity;->h:Lcom/truecaller/data/entity/Contact;

    iget v10, p0, Lcom/truecaller/tagger/TagPickActivity;->j:I

    iget v11, p0, Lcom/truecaller/tagger/TagPickActivity;->i:I

    invoke-interface/range {v4 .. v11}, Le/a/g5/n;->b(Lcom/truecaller/data/entity/Contact;JJII)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/tagger/TagPickActivity;->o:Le/a/r2/j;

    new-instance v2, Le/a/g5/b;

    invoke-direct {v2, p0, p1}, Le/a/g5/b;-><init>(Lcom/truecaller/tagger/TagPickActivity;Le/a/b0/p/c;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/tagger/TagPickActivity;->k:Le/a/r2/a;

    if-eqz p1, :cond_4

    .line 9
    sget p1, Lcom/truecaller/tagger/R$string;->TagsChooserThanks:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/truecaller/tagger/TagPickActivity;->ra(Le/a/b0/p/c;Lcom/truecaller/data/entity/Contact;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public f8()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Le/a/g5/l;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/g5/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/truecaller/tagger/TagPickActivity;->p:Le/a/r2/l;

    invoke-interface {p1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/tagger/TagPickActivity;->o:Le/a/r2/j;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/tagger/TagPickActivity;->k:Le/a/r2/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/r2/a;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/truecaller/tagger/TagPickActivity;->k:Le/a/r2/a;

    :cond_0
    return-void
.end method

.method public qa()Le/a/g5/l$d;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/g5/l;->finish()V

    return-object v1

    :cond_0
    const/16 v2, 0x3e7

    const-string v3, "search_type"

    .line 3
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/truecaller/tagger/TagPickActivity;->i:I

    const/4 v2, 0x0

    const-string v3, "tag_context"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/truecaller/tagger/TagPickActivity;->j:I

    const-string v2, "initial_tag"

    const-wide/high16 v4, -0x8000000000000000L

    .line 5
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "contact"

    .line 6
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    iput-object v0, p0, Lcom/truecaller/tagger/TagPickActivity;->h:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_2

    .line 7
    iget-object v6, p0, Lcom/truecaller/tagger/TagPickActivity;->n:Le/a/g5/p;

    invoke-interface {v6, v0}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-wide v0, v0, Le/a/b0/p/c;->a:J

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    move-object v6, v1

    .line 10
    :cond_2
    iget v0, p0, Lcom/truecaller/tagger/TagPickActivity;->j:I

    .line 11
    sget v1, Le/a/g5/t;->w:I

    .line 12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_3
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    new-instance v0, Le/a/g5/t;

    invoke-direct {v0}, Le/a/g5/t;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final ra(Le/a/b0/p/c;Lcom/truecaller/data/entity/Contact;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/tagger/TagPickActivity;->k:Le/a/r2/a;

    if-eqz p1, :cond_0

    .line 2
    iget-wide v1, p1, Le/a/b0/p/c;->a:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "NONE"

    :goto_0
    const-string v2, "Tag_Id"

    .line 4
    invoke-static {v2, v1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/truecaller/tagger/TagPickActivity;->m:Le/a/q2/a;

    .line 6
    new-instance v3, Le/a/q2/g$b$a;

    const-string v4, "TAGVIEW_Tagged"

    invoke-direct {v3, v4, v0, v1, v0}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 7
    invoke-interface {v2, v3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_1

    .line 9
    iget-wide v1, p1, Le/a/b0/p/c;->a:J

    const-string p1, "tag_id"

    .line 10
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const-string p1, "contact"

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 13
    invoke-virtual {p0}, Le/a/g5/l;->finish()V

    return-void
.end method
