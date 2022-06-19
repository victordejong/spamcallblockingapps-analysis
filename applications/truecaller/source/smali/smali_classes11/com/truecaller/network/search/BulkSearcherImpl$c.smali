.class public Lcom/truecaller/network/search/BulkSearcherImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/network/search/BulkSearcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/truecaller/network/search/BulkSearcherImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/network/search/BulkSearcherImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Aa(Ljava/lang/Throwable;I)V
    .locals 1

    const-string p1, "Bulk search for "

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 1
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " successful but empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    iget-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/truecaller/network/search/BulkSearcherImpl;->g(Ljava/util/Collection;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    iget-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/truecaller/network/search/BulkSearcherImpl;->f(Ljava/util/Collection;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/truecaller/network/search/BulkSearcherImpl;->e(Lcom/truecaller/network/search/BulkSearcherImpl;Le/a/f4/g/p$c;)Le/a/f4/g/p$c;

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

    const-string p1, "Bulk search for "

    .line 1
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " successful"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    iget-object p2, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/truecaller/network/search/BulkSearcherImpl;->g(Ljava/util/Collection;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$c;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/truecaller/network/search/BulkSearcherImpl;->e(Lcom/truecaller/network/search/BulkSearcherImpl;Le/a/f4/g/p$c;)Le/a/f4/g/p$c;

    return-void
.end method
