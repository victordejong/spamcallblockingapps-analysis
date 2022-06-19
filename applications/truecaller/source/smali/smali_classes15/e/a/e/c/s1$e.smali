.class public abstract Le/a/e/c/s1$e;
.super Le/a/j4/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation


# instance fields
.field public d:Lcom/truecaller/data/entity/Contact;

.field public final synthetic e:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Le/a/e/c/s1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/a/e/c/s1;->V0:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 5
    iput-object p1, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-virtual {p0}, Le/a/e/c/s1$e;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    .line 8
    iput-boolean v1, p1, Le/a/e/c/s1;->n1:Z

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    invoke-virtual {p1}, Le/a/e/c/s1;->UA()V

    :cond_1
    return-void
.end method

.method public abstract b()Lcom/truecaller/data/entity/Contact;
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    .line 2
    sget-object v1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 3
    iget-boolean v1, v0, Le/a/e/x0;->c:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Le/a/e/c/s1;->S0:Le/a/w4/d;

    .line 5
    iget-object v0, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-interface {v1, v0}, Le/a/w4/d;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    invoke-virtual {p0}, Le/a/e/c/s1$e;->b()Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    .line 2
    sget-object v1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, v0}, Le/a/e/c/s1;->oB(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Le/a/j4/a/a;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    .line 3
    iget-object p1, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p0}, Le/a/e/c/s1$e;->c()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    .line 5
    iget-object p1, p1, Le/a/e/c/s1;->H0:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    .line 7
    iget-object p1, p1, Le/a/e/c/s1;->G0:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    .line 10
    iget-object v2, p1, Le/a/e/c/s1;->G0:Ljava/lang/String;

    .line 11
    iget-object v3, p1, Le/a/e/c/s1;->H0:Ljava/lang/String;

    .line 12
    iget-object v4, p1, Le/a/e/c/s1;->I0:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v2, v3, v4, v1}, Le/a/e/c/s1;->vB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move p1, v0

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    .line 15
    iget-boolean v2, p1, Le/a/e/c/s1;->b1:Z

    if-eqz v2, :cond_2

    .line 16
    iget-object v2, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 17
    invoke-static {p1, v2}, Le/a/e/c/s1;->ZA(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;)V

    :cond_2
    move p1, v1

    :goto_0
    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    invoke-virtual {p1}, Le/a/e/x0;->SA()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/e/c/s1$e;->e:Le/a/e/c/s1;

    .line 19
    iget-boolean v2, p1, Le/a/e/c/s1;->d1:Z

    if-nez v2, :cond_3

    .line 20
    iput-boolean v0, p1, Le/a/e/c/s1;->d1:Z

    .line 21
    new-instance v0, Le/a/e/c/s1$l;

    .line 22
    iget-object v2, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 23
    invoke-direct {v0, p1, v2}, Le/a/e/c/s1$l;-><init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;)V

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Le/a/j4/a/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    :cond_3
    iget-object p1, p0, Le/a/e/c/s1$e;->d:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_4

    .line 25
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    .line 26
    new-instance v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v2, p1, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact;

    invoke-direct {v1, v2}, Lcom/truecaller/data/dto/ContactDto$Contact;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/Contact;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V

    .line 27
    iget-object v1, p1, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    .line 28
    iput-object v1, v0, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    .line 29
    iget-boolean p1, p1, Lcom/truecaller/data/entity/Contact;->j:Z

    .line 30
    iput-boolean p1, v0, Lcom/truecaller/data/entity/Contact;->j:Z

    .line 31
    new-instance p1, Le/a/e/c/s1$e$a;

    invoke-direct {p1, p0, v0}, Le/a/e/c/s1$e$a;-><init>(Le/a/e/c/s1$e;Lcom/truecaller/data/entity/Contact;)V

    :cond_4
    return-void
.end method
