.class public Le/a/e/a/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/p$c;


# instance fields
.field public final synthetic a:Le/a/e/a/k3$i;


# direct methods
.method public constructor <init>(Le/a/e/a/k3$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/a/m3;->a:Le/a/e/a/k3$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Aa(Ljava/lang/Throwable;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e/a/m3;->a:Le/a/e/a/k3$i;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Le/a/e/a/k3$i;->c(Lcom/truecaller/data/entity/Contact;)V

    return-void
.end method

.method public p2(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/e/a/m3;->a:Le/a/e/a/k3$i;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 2
    invoke-virtual {p2, p1}, Le/a/e/a/k3$i;->c(Lcom/truecaller/data/entity/Contact;)V

    return-void
.end method
