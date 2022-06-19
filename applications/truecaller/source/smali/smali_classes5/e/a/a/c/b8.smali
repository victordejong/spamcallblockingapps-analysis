.class public final Le/a/a/c/b8;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/c/z7;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/a/c/f4;


# direct methods
.method public constructor <init>(Le/a/a/c/f4;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "inputPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/c/b8;->c:Le/a/a/c/f4;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/b8;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/c/z7;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/b8;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-interface {p1, v0}, Le/a/a/c/z7;->setText(Ljava/lang/String;)V

    .line 5
    new-instance v1, Le/a/a/c/a8;

    invoke-direct {v1, p0, p2, v0}, Le/a/a/c/a8;-><init>(Le/a/a/c/b8;ILjava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/a/c/z7;->setOnClickListener(Ls1/z/b/a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/b8;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/b8;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
