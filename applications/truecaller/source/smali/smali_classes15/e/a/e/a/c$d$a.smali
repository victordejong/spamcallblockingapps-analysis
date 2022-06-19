.class public final Le/a/e/a/c$d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/c$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.ui.dialogs.QaDataStatsDialog$onViewCreated$1$1"
    f = "QaDataStatsDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/e/a/c$d;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Z

.field public final synthetic r:I

.field public final synthetic s:Le/a/j0/i;

.field public final synthetic t:Ljava/lang/Integer;

.field public final synthetic u:Ljava/lang/Integer;

.field public final synthetic v:Ljava/lang/Integer;

.field public final synthetic w:Lcom/truecaller/data/entity/Contact;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e/a/c$d;IIIIIIIIIIIZILe/a/j0/i;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ls1/w/d;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Le/a/e/a/c$d$a;->e:Le/a/e/a/c$d;

    move v1, p2

    iput v1, v0, Le/a/e/a/c$d$a;->f:I

    move v1, p3

    iput v1, v0, Le/a/e/a/c$d$a;->g:I

    move v1, p4

    iput v1, v0, Le/a/e/a/c$d$a;->h:I

    move v1, p5

    iput v1, v0, Le/a/e/a/c$d$a;->i:I

    move v1, p6

    iput v1, v0, Le/a/e/a/c$d$a;->j:I

    move v1, p7

    iput v1, v0, Le/a/e/a/c$d$a;->k:I

    move v1, p8

    iput v1, v0, Le/a/e/a/c$d$a;->l:I

    move v1, p9

    iput v1, v0, Le/a/e/a/c$d$a;->m:I

    move v1, p10

    iput v1, v0, Le/a/e/a/c$d$a;->n:I

    move v1, p11

    iput v1, v0, Le/a/e/a/c$d$a;->o:I

    move v1, p12

    iput v1, v0, Le/a/e/a/c$d$a;->p:I

    move/from16 v1, p13

    iput-boolean v1, v0, Le/a/e/a/c$d$a;->q:Z

    move/from16 v1, p14

    iput v1, v0, Le/a/e/a/c$d$a;->r:I

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/e/a/c$d$a;->s:Le/a/j0/i;

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/e/a/c$d$a;->t:Ljava/lang/Integer;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/e/a/c$d$a;->u:Ljava/lang/Integer;

    move-object/from16 v1, p18

    iput-object v1, v0, Le/a/e/a/c$d$a;->v:Ljava/lang/Integer;

    move-object/from16 v1, p19

    iput-object v1, v0, Le/a/e/a/c$d$a;->w:Lcom/truecaller/data/entity/Contact;

    move-object/from16 v1, p20

    iput-object v1, v0, Le/a/e/a/c$d$a;->x:Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 v2, p21

    invoke-direct {p0, v1, v2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 24
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

    move-object/from16 v0, p0

    move-object/from16 v22, p2

    const-string v1, "completion"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Le/a/e/a/c$d$a;

    move-object/from16 v1, v23

    iget-object v2, v0, Le/a/e/a/c$d$a;->e:Le/a/e/a/c$d;

    iget v3, v0, Le/a/e/a/c$d$a;->f:I

    iget v4, v0, Le/a/e/a/c$d$a;->g:I

    iget v5, v0, Le/a/e/a/c$d$a;->h:I

    iget v6, v0, Le/a/e/a/c$d$a;->i:I

    iget v7, v0, Le/a/e/a/c$d$a;->j:I

    iget v8, v0, Le/a/e/a/c$d$a;->k:I

    iget v9, v0, Le/a/e/a/c$d$a;->l:I

    iget v10, v0, Le/a/e/a/c$d$a;->m:I

    iget v11, v0, Le/a/e/a/c$d$a;->n:I

    iget v12, v0, Le/a/e/a/c$d$a;->o:I

    iget v13, v0, Le/a/e/a/c$d$a;->p:I

    iget-boolean v14, v0, Le/a/e/a/c$d$a;->q:Z

    iget v15, v0, Le/a/e/a/c$d$a;->r:I

    move-object/from16 p1, v1

    iget-object v1, v0, Le/a/e/a/c$d$a;->s:Le/a/j0/i;

    move-object/from16 v16, v1

    iget-object v1, v0, Le/a/e/a/c$d$a;->t:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Le/a/e/a/c$d$a;->u:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Le/a/e/a/c$d$a;->v:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Le/a/e/a/c$d$a;->w:Lcom/truecaller/data/entity/Contact;

    move-object/from16 v20, v1

    iget-object v1, v0, Le/a/e/a/c$d$a;->x:Ljava/lang/String;

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v22}, Le/a/e/a/c$d$a;-><init>(Le/a/e/a/c$d;IIIIIIIIIIIZILe/a/j0/i;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ls1/w/d;)V

    return-object v23
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/e/a/c$d$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/e/a/c$d$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/a/c$d$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/a/c$d$a;->e:Le/a/e/a/c$d;

    iget-object p1, p1, Le/a/e/a/c$d;->v:Landroid/view/View;

    const v0, 0x7f0a10b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById<TextView>(R.id.statsView)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\nMessages: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget v1, p0, Le/a/e/a/c$d$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    \u2022SMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Le/a/e/a/c$d$a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n    \u2022Backup SMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, Le/a/e/a/c$d$a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n    \u2022Backup MMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Le/a/e/a/c$d$a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n    \u2022History: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v1, p0, Le/a/e/a/c$d$a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n    \u2022MMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Le/a/e/a/c$d$a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n    \u2022IM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Le/a/e/a/c$d$a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    \u2022Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Le/a/e/a/c$d$a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n                          \nConversations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Le/a/e/a/c$d$a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n    \u2022Shortcode/Alphanumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v1, p0, Le/a/e/a/c$d$a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n    \u2022Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Le/a/e/a/c$d$a;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n      \nMessages sync completed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-boolean v1, p0, Le/a/e/a/c$d$a;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  \n      \nContacts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Le/a/e/a/c$d$a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\n    Year in TC 2020:\ntotal messages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Le/a/e/a/c$d$a;->s:Le/a/j0/i;

    .line 17
    iget v1, v1, Le/a/j0/i;->a:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmessages received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Le/a/e/a/c$d$a;->s:Le/a/j0/i;

    .line 20
    iget v1, v1, Le/a/j0/i;->c:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmessages sent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Le/a/e/a/c$d$a;->s:Le/a/j0/i;

    .line 23
    iget v1, v1, Le/a/j0/i;->b:I

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nchat messages vs SMS/MMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v1, p0, Le/a/e/a/c$d$a;->s:Le/a/j0/i;

    .line 26
    iget v1, v1, Le/a/j0/i;->d:I

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/e/a/c$d$a;->s:Le/a/j0/i;

    .line 28
    iget v1, v1, Le/a/j0/i;->e:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ngif exchanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Le/a/e/a/c$d$a;->s:Le/a/j0/i;

    .line 31
    iget v1, v1, Le/a/j0/i;->f:I

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nspam messages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Le/a/e/a/c$d$a;->t:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n    Calling \nincoming calls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Le/a/e/a/c$d$a;->u:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\noutgoing calls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Le/a/e/a/c$d$a;->v:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ntop called contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Le/a/e/a/c$d$a;->w:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmost frequent call period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Le/a/e/a/c$d$a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
