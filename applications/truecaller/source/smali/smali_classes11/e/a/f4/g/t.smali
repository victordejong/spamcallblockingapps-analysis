.class public final Le/a/f4/g/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/k3/k/a;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(ILe/a/f4/g/t;Lcom/truecaller/data/entity/Contact;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Le/a/f4/g/t;->g:I

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/f4/g/t;->c:Ljava/util/List;

    .line 13
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Le/a/f4/g/t;->f:Ljava/lang/String;

    iput-object p1, p0, Le/a/f4/g/t;->e:Ljava/lang/String;

    iput-object p1, p0, Le/a/f4/g/t;->d:Ljava/lang/String;

    if-nez p2, :cond_0

    move-object p3, p1

    goto :goto_0

    .line 15
    :cond_0
    iget-object p3, p2, Le/a/f4/g/t;->b:Le/a/k3/k/a;

    :goto_0
    iput-object p3, p0, Le/a/f4/g/t;->b:Le/a/k3/k/a;

    if-nez p2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p2, Le/a/f4/g/t;->a:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Le/a/f4/g/t;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Lcom/truecaller/data/dto/ContactDto$Pagination;Le/a/k3/k/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Lcom/truecaller/data/dto/ContactDto$Pagination;",
            "Le/a/k3/k/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Le/a/f4/g/t;->c:Ljava/util/List;

    .line 3
    iput-object p2, p0, Le/a/f4/g/t;->a:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Le/a/f4/g/t;->b:Le/a/k3/k/a;

    .line 5
    iput p1, p0, Le/a/f4/g/t;->g:I

    if-nez p4, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Le/a/f4/g/t;->f:Ljava/lang/String;

    iput-object p1, p0, Le/a/f4/g/t;->e:Ljava/lang/String;

    iput-object p1, p0, Le/a/f4/g/t;->d:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p4, Lcom/truecaller/data/dto/ContactDto$Pagination;->prev:Ljava/lang/String;

    iput-object p1, p0, Le/a/f4/g/t;->d:Ljava/lang/String;

    .line 8
    iget-object p1, p4, Lcom/truecaller/data/dto/ContactDto$Pagination;->pageId:Ljava/lang/String;

    iput-object p1, p0, Le/a/f4/g/t;->e:Ljava/lang/String;

    .line 9
    iget-object p1, p4, Lcom/truecaller/data/dto/ContactDto$Pagination;->next:Ljava/lang/String;

    iput-object p1, p0, Le/a/f4/g/t;->f:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/data/entity/Contact;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/f4/g/t;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SearchResult{requestId=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/f4/g/t;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", campaigns="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/f4/g/t;->b:Le/a/k3/k/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f4/g/t;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previousPageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f4/g/t;->d:Ljava/lang/String;

    const-string v3, ", pageId=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/f4/g/t;->e:Ljava/lang/String;

    const-string v3, ", nextPageId=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/f4/g/t;->f:Ljava/lang/String;

    const-string v3, ", source="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Le/a/f4/g/t;->g:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
