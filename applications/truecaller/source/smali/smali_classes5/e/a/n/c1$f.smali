.class public final Le/a/n/c1$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/c1;->r(Le/m/b/y/a/a;Ls1/k;Le/m/b/x/b/b;)Lcom/truecaller/backup/BackupResult;
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
        "Lcom/truecaller/backup/BackupResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/k;

.field public final synthetic c:Le/m/b/x/b/b;


# direct methods
.method public constructor <init>(Ls1/k;Le/m/b/x/b/b;)V
    .locals 0

    iput-object p1, p0, Le/a/n/c1$f;->b:Ls1/k;

    iput-object p2, p0, Le/a/n/c1$f;->c:Le/m/b/x/b/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/m/b/y/a/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/n/c1$f;->b:Ls1/k;

    .line 4
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Le/m/b/y/a/a$b;

    invoke-direct {v1, p1}, Le/m/b/y/a/a$b;-><init>(Le/m/b/y/a/a;)V

    .line 6
    iget-object p1, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Le/m/b/y/a/c/a;

    iget-object v0, p0, Le/a/n/c1$f;->c:Le/m/b/x/b/b;

    .line 8
    new-instance v2, Le/m/b/y/a/a$b$a;

    invoke-direct {v2, v1, p1, v0}, Le/m/b/y/a/a$b$a;-><init>(Le/m/b/y/a/a$b;Le/m/b/y/a/c/a;Le/m/b/x/b/b;)V

    .line 9
    iget-object p1, v1, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    .line 11
    invoke-virtual {v2, p1}, Le/m/b/y/a/b;->s(Ljava/lang/String;)Le/m/b/y/a/b;

    .line 12
    invoke-virtual {v2}, Le/m/b/x/a/e/c;->j()Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Le/m/b/y/a/a$b;

    invoke-direct {v2, p1}, Le/m/b/y/a/a$b;-><init>(Le/m/b/y/a/a;)V

    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    iget-object p1, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 16
    check-cast p1, Le/m/b/y/a/c/a;

    iget-object v0, p0, Le/a/n/c1$f;->c:Le/m/b/x/b/b;

    .line 17
    new-instance v3, Le/m/b/y/a/a$b$d;

    invoke-direct {v3, v2, v1, p1, v0}, Le/m/b/y/a/a$b$d;-><init>(Le/m/b/y/a/a$b;Ljava/lang/String;Le/m/b/y/a/c/a;Le/m/b/x/b/b;)V

    .line 18
    iget-object p1, v2, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v3}, Le/m/b/x/a/e/c;->j()Ljava/lang/Object;

    .line 21
    :goto_0
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method
