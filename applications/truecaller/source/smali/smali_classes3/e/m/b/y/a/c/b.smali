.class public final Le/m/b/y/a/c/b;
.super Le/m/b/x/c/b;
.source "SourceFile"


# instance fields
.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/b/y/a/c/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private incompleteSearch:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/m/b/y/a/c/a;

    invoke-static {v0}, Le/m/b/x/d/g;->h(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/b/x/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Le/m/b/x/d/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/b;->l()Le/m/b/y/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/b;->l()Le/m/b/y/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/b;

    return-object p1
.end method

.method public bridge synthetic i()Le/m/b/x/c/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/b;->l()Le/m/b/y/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/b;

    return-object p1
.end method

.method public l()Le/m/b/y/a/c/b;
    .locals 1

    .line 1
    invoke-super {p0}, Le/m/b/x/c/b;->i()Le/m/b/x/c/b;

    move-result-object v0

    check-cast v0, Le/m/b/y/a/c/b;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/b/y/a/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/y/a/c/b;->files:Ljava/util/List;

    return-object v0
.end method
