.class public Le/a/e/c/s1$m;
.super Le/a/j4/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lcom/truecaller/data/entity/Contact;

.field public final synthetic f:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Landroid/content/Context;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$m;->f:Le/a/e/c/s1;

    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/e/c/s1$m;->d:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/a/e/c/s1$m;->e:Lcom/truecaller/data/entity/Contact;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$m;->f:Le/a/e/c/s1;

    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/c/s1$m;->f:Le/a/e/c/s1;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/a/e/c/s1;->h1:Z

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    iget-object v0, p0, Le/a/e/c/s1$m;->f:Le/a/e/c/s1;

    if-eqz p1, :cond_1

    const p1, 0x7f12017b

    goto :goto_0

    :cond_1
    const p1, 0x7f120179

    .line 6
    :goto_0
    invoke-virtual {v0, p1}, Le/a/e/x0;->TA(I)V

    .line 7
    iget-object p1, p0, Le/a/e/c/s1$m;->f:Le/a/e/c/s1;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Le/a/e/c/s1$m;->f:Le/a/e/c/s1;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/e/c/s1$m;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Le/a/e/c/s1$m;->d:Landroid/content/Context;

    iget-object v0, p0, Le/a/e/c/s1$m;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Le/a/e/c/s1$m;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Le/a/l4/k;->i0(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/e/c/s1$m;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->l0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Le/a/k3/j/j;

    iget-object v1, p0, Le/a/e/c/s1$m;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Le/a/k3/j/j;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Le/a/e/c/s1$m;->e:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x20

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/k3/j/j;->l(Ljava/lang/String;[I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_1
    return-object p1
.end method
