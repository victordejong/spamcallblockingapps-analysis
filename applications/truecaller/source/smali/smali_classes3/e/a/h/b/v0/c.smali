.class public final Le/a/h/b/v0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/v0/b;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/b0/e/r/a;

.field public final d:Le/a/e4/p;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/b0/e/r/a;Le/a/e4/p;)V
    .locals 11
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/v0/c;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/h/b/v0/c;->c:Le/a/b0/e/r/a;

    iput-object p3, p0, Le/a/h/b/v0/c;->d:Le/a/e4/p;

    const-string v1, "40444"

    const-string v2, "40445"

    const-string v3, "40486"

    const-string v4, "405034"

    const-string v5, "40510"

    const-string v6, "405803"

    const-string v7, "405820"

    const-string v8, "405847"

    const-string v9, "405861"

    const-string v10, "40471"

    .line 2
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/v0/c;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/b/v0/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/h/b/v0/c;->b:Le/a/u3/g;

    .line 3
    iget-object v2, v1, Le/a/u3/g;->Z3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x107

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Le/a/h/b/v0/c;->d:Le/a/e4/p;

    invoke-interface {v1}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/multisim/SimInfo;

    .line 6
    iget-object v4, p0, Le/a/h/b/v0/c;->a:[Ljava/lang/String;

    iget-object v2, v2, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    const-string v5, "simInfo.mccMnc"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Le/a/h/b/v0/c;->c:Le/a/b0/e/r/a;

    const-string v2, "profileNumber"

    invoke-interface {v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    const/4 v4, 0x7

    .line 8
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "##"

    .line 9
    :goto_1
    iget-object v2, p0, Le/a/h/b/v0/c;->b:Le/a/u3/g;

    .line 10
    iget-object v4, v2, Le/a/u3/g;->p4:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x117

    aget-object v5, v5, v6

    invoke-virtual {v4, v2, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    check-cast v2, Le/a/u3/i;

    .line 11
    invoke-interface {v2}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v4}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    :cond_3
    new-instance v1, Le/a/h/b/v0/a;

    const v2, 0x7f0804cb

    const v3, 0x7f120750

    invoke-direct {v1, v2, v3}, Le/a/h/b/v0/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method
