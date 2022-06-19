.class public Le/a/e/d2/g;
.super Le/a/e/d2/f;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final k:Lcom/truecaller/data/entity/HistoryEvent;

.field public l:Le/a/k3/j/b;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/e/d2/f;-><init>(Lcom/truecaller/data/entity/Contact;)V

    .line 2
    iput-object p2, p0, Le/a/e/d2/g;->k:Lcom/truecaller/data/entity/HistoryEvent;

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/d2/g;->k:Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/e/d2/f;->j:Lcom/truecaller/data/entity/Contact;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Le/a/e/d2/f;->j:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/e/d2/g;->l:Le/a/k3/j/b;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Le/a/k3/j/b;

    invoke-direct {v0, p1}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/e/d2/g;->l:Le/a/k3/j/b;

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/e/d2/g;->l:Le/a/k3/j/b;

    iget-object v0, p0, Le/a/e/d2/g;->k:Lcom/truecaller/data/entity/HistoryEvent;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Le/a/k3/j/b;->f(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->z()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e/d2/f;->j:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/e/d2/f;->j:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/a/e/d2/f;->j:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
