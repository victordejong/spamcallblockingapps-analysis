.class public Le/a/e/c/s1$d;
.super Le/a/e/o0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/c/s1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;Le/a/e/x0;Le/a/h0/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$d;->c:Le/a/e/c/s1;

    invoke-direct {p0, p2, p3}, Le/a/e/o0$c;-><init>(Le/a/e/x0;Le/a/h0/j;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$d;->c:Le/a/e/c/s1;

    .line 2
    sget-object v1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Le/a/e/c/s1;->lB()Ljava/util/List;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 5
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/e/c/s1$d;->c:Le/a/e/c/s1;

    .line 9
    iget-object p1, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/e/c/s1$d;->c:Le/a/e/c/s1;

    .line 11
    iget-object p1, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Le/a/e/c/s1$d;->c:Le/a/e/c/s1;

    .line 14
    iget-object p1, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 15
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Le/a/e/c/s1$d;->c:Le/a/e/c/s1;

    .line 17
    iget-object v1, v1, Le/a/e/c/s1;->P1:Le/a/e/c/s1$k;

    .line 18
    invoke-interface {v1, p1, v0}, Le/a/e/c/s1$k;->N(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
