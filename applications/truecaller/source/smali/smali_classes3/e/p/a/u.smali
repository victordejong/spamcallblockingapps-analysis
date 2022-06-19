.class public final Le/p/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/u$b;
    }
.end annotation


# instance fields
.field public final a:Le/p/a/s;

.field public final b:Le/p/a/r;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Le/p/a/l;

.field public final f:Le/p/a/m;

.field public final g:Le/p/a/v;

.field public h:Le/p/a/u;

.field public i:Le/p/a/u;

.field public final j:Le/p/a/u;

.field public volatile k:Le/p/a/c;


# direct methods
.method public constructor <init>(Le/p/a/u$b;Le/p/a/u$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Le/p/a/u$b;->a:Le/p/a/s;

    .line 3
    iput-object p2, p0, Le/p/a/u;->a:Le/p/a/s;

    .line 4
    iget-object p2, p1, Le/p/a/u$b;->b:Le/p/a/r;

    .line 5
    iput-object p2, p0, Le/p/a/u;->b:Le/p/a/r;

    .line 6
    iget p2, p1, Le/p/a/u$b;->c:I

    .line 7
    iput p2, p0, Le/p/a/u;->c:I

    .line 8
    iget-object p2, p1, Le/p/a/u$b;->d:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Le/p/a/u;->d:Ljava/lang/String;

    .line 10
    iget-object p2, p1, Le/p/a/u$b;->e:Le/p/a/l;

    .line 11
    iput-object p2, p0, Le/p/a/u;->e:Le/p/a/l;

    .line 12
    iget-object p2, p1, Le/p/a/u$b;->f:Le/p/a/m$b;

    .line 13
    invoke-virtual {p2}, Le/p/a/m$b;->c()Le/p/a/m;

    move-result-object p2

    iput-object p2, p0, Le/p/a/u;->f:Le/p/a/m;

    .line 14
    iget-object p2, p1, Le/p/a/u$b;->g:Le/p/a/v;

    .line 15
    iput-object p2, p0, Le/p/a/u;->g:Le/p/a/v;

    .line 16
    iget-object p2, p1, Le/p/a/u$b;->h:Le/p/a/u;

    .line 17
    iput-object p2, p0, Le/p/a/u;->h:Le/p/a/u;

    .line 18
    iget-object p2, p1, Le/p/a/u$b;->i:Le/p/a/u;

    .line 19
    iput-object p2, p0, Le/p/a/u;->i:Le/p/a/u;

    .line 20
    iget-object p1, p1, Le/p/a/u$b;->j:Le/p/a/u;

    .line 21
    iput-object p1, p0, Le/p/a/u;->j:Le/p/a/u;

    return-void
.end method


# virtual methods
.method public a()Le/p/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/u;->k:Le/p/a/c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/u;->f:Le/p/a/m;

    invoke-static {v0}, Le/p/a/c;->a(Le/p/a/m;)Le/p/a/c;

    move-result-object v0

    iput-object v0, p0, Le/p/a/u;->k:Le/p/a/c;

    :goto_0
    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/p/a/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/a/u;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    goto :goto_0

    :cond_0
    const/16 v1, 0x197

    if-ne v0, v1, :cond_5

    const-string v0, "Proxy-Authenticate"

    .line 2
    :goto_0
    iget-object v1, p0, Le/p/a/u;->f:Le/p/a/m;

    .line 3
    sget-object v2, Le/p/a/y/k/j;->a:Ljava/util/Comparator;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1}, Le/p/a/m;->d()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    .line 6
    invoke-virtual {v1, v5}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    invoke-virtual {v1, v5}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v6

    move v7, v4

    .line 8
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    const-string v8, " "

    .line 9
    invoke-static {v6, v7, v8}, Le/m/d/y/n;->i1(Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 10
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 11
    invoke-static {v6, v8}, Le/m/d/y/n;->j1(Ljava/lang/String;I)I

    move-result v14

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x7

    const-string v10, "realm=\""

    move-object v7, v6

    move v9, v14

    .line 12
    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x7

    const-string v7, "\""

    .line 13
    invoke-static {v6, v14, v7}, Le/m/d/y/n;->i1(Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    .line 14
    invoke-virtual {v6, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    const-string v9, ","

    .line 15
    invoke-static {v6, v7, v9}, Le/m/d/y/n;->i1(Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 16
    invoke-static {v6, v7}, Le/m/d/y/n;->j1(Ljava/lang/String;I)I

    move-result v7

    .line 17
    new-instance v9, Le/p/a/f;

    invoke-direct {v9, v13, v8}, Le/p/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    .line 18
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Le/p/a/u$b;
    .locals 2

    .line 1
    new-instance v0, Le/p/a/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/p/a/u$b;-><init>(Le/p/a/u;Le/p/a/u$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Response{protocol="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/p/a/u;->b:Le/p/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/p/a/u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/u;->a:Le/p/a/s;

    .line 2
    iget-object v1, v1, Le/p/a/s;->a:Le/p/a/n;

    .line 3
    iget-object v1, v1, Le/p/a/n;->i:Ljava/lang/String;

    const/16 v2, 0x7d

    .line 4
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
