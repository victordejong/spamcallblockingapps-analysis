.class public Le/a/e/c/s1$l;
.super Le/a/w4/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic p:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;)V
    .locals 11

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$l;->p:Le/a/e/c/s1;

    .line 2
    iget-object v1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    .line 3
    iget-object v3, p1, Le/a/e/c/s1;->L0:Le/a/h0/j;

    .line 4
    iget-object v4, p1, Le/a/e/c/s1;->M0:Le/a/r2/f;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    .line 6
    iget v9, p1, Le/a/e/c/s1;->I1:I

    .line 7
    iget-object v0, p1, Le/a/e/c/s1;->E0:Le/a/j2;

    .line 8
    invoke-interface {v0}, Le/a/j2;->A6()Le/a/w4/d;

    move-result-object v10

    const/16 v6, 0x14

    const-string v7, "detailView"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v10}, Le/a/w4/i;-><init>(Landroid/content/Context;Le/a/j4/a/d;Le/a/h0/j;Le/a/r2/f;Lcom/truecaller/data/entity/Contact;ILjava/lang/String;Ljava/util/UUID;ILe/a/w4/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$l;->p:Le/a/e/c/s1;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/a/e/c/s1;->V0:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/e/c/s1$l;->p:Le/a/e/c/s1;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 5
    iput-object p1, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-virtual {v0}, Le/a/e/c/s1;->UA()V

    :cond_0
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Le/a/w4/a;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/e/c/s1$l;->p:Le/a/e/c/s1;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 4
    sget-object v1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1}, Le/a/e/c/s1;->oB(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
