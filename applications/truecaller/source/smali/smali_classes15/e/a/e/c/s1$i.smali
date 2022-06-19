.class public Le/a/e/c/s1$i;
.super Le/a/e/c/s1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final synthetic k:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$i;->k:Le/a/e/c/s1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/a/e/c/s1$e;-><init>(Le/a/e/c/s1;Le/a/e/c/s1$a;)V

    .line 2
    iput-object p2, p0, Le/a/e/c/s1$i;->f:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/e/c/s1$i;->g:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Le/a/e/c/s1$i;->h:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Le/a/e/c/s1$i;->i:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Le/a/e/c/s1$i;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lcom/truecaller/data/entity/Contact;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$i;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/e/c/s1$i;->k:Le/a/e/c/s1;

    .line 3
    iget-object v1, v1, Le/a/e/c/s1;->w1:Le/a/k3/j/b;

    .line 4
    invoke-virtual {v1, v0}, Le/a/k3/j/b;->j(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/e/c/s1$i;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Le/a/e/c/s1$i;->k:Le/a/e/c/s1;

    .line 7
    iget-object v2, v1, Le/a/e/c/s1;->w1:Le/a/k3/j/b;

    .line 8
    iget-object v1, v1, Le/a/e/c/s1;->v1:Le/a/b0/q/z;

    .line 9
    invoke-interface {v1, v0}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 11
    iget-object v1, p0, Le/a/e/c/s1$i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Le/a/e/c/s1$i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/truecaller/data/entity/Contact;->j:Z

    .line 14
    iget-object v1, p0, Le/a/e/c/s1$i;->h:Ljava/lang/String;

    iget-object v2, p0, Le/a/e/c/s1$i;->i:Ljava/lang/String;

    iget-object v3, p0, Le/a/e/c/s1$i;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/truecaller/data/entity/Number;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v2, p0, Le/a/e/c/s1$i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/data/entity/Number;->setTcId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->O0(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    :cond_3
    return-object v0
.end method
