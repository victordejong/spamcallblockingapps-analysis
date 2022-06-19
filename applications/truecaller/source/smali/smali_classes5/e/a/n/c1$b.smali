.class public final Le/a/n/c1$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/c1;->k(Le/m/b/y/a/a;Ljava/lang/String;)Le/m/b/y/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/m/b/y/a/a;",
        "Le/m/b/y/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/n/c1;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/n/c1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/n/c1$b;->b:Le/a/n/c1;

    iput-object p2, p0, Le/a/n/c1$b;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/m/b/y/a/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/n/c1$b;->b:Le/a/n/c1;

    .line 4
    new-instance v1, Le/m/b/y/a/a$b;

    invoke-direct {v1, p1}, Le/m/b/y/a/a$b;-><init>(Le/m/b/y/a/a;)V

    .line 5
    new-instance p1, Le/m/b/y/a/a$b$c;

    invoke-direct {p1, v1}, Le/m/b/y/a/a$b$c;-><init>(Le/m/b/y/a/a$b;)V

    .line 6
    iget-object v1, v1, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it.files().list()"

    .line 8
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Le/a/n/c1;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "drive"

    goto :goto_0

    :cond_0
    const-string v0, "appDataFolder"

    :goto_0
    invoke-virtual {p1, v0}, Le/m/b/y/a/a$b$c;->w(Ljava/lang/String;)Le/m/b/y/a/a$b$c;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name contains \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/n/c1$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and trashed = false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/m/b/y/a/a$b$c;->v(Ljava/lang/String;)Le/m/b/y/a/a$b$c;

    const-string v0, "modifiedTime desc"

    .line 11
    invoke-virtual {p1, v0}, Le/m/b/y/a/a$b$c;->t(Ljava/lang/String;)Le/m/b/y/a/a$b$c;

    const-string v0, "files/id, files/name, files/mimeType, files/modifiedTime, files/appProperties, files/capabilities/canEdit"

    .line 12
    invoke-virtual {p1, v0}, Le/m/b/y/a/b;->s(Ljava/lang/String;)Le/m/b/y/a/b;

    const/4 v0, 0x1

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/m/b/y/a/a$b$c;->u(Ljava/lang/Integer;)Le/m/b/y/a/a$b$c;

    .line 14
    invoke-virtual {p1}, Le/m/b/x/a/e/c;->j()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le/m/b/y/a/c/b;->m()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/a;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
