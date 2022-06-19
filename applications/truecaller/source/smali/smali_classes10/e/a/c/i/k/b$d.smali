.class public final Le/a/c/i/k/b$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/k/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/h/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/i/k/b;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/i/k/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/k/b$d;->b:Le/a/c/i/k/b;

    iput-object p2, p0, Le/a/c/i/k/b$d;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/i/k/b$d;->b:Le/a/c/i/k/b;

    .line 2
    iget-object v0, v0, Le/a/c/i/k/b;->d:Le/a/a/t;

    .line 3
    iget-object v1, p0, Le/a/c/i/k/b$d;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "number"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Le/a/a/t;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/g/r;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "UUID.randomUUID()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notification"

    invoke-interface {v0, v3, v4}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    .line 9
    iput-object v1, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    const/16 v3, 0x14

    .line 10
    iput v3, v0, Le/a/f4/g/p;->o:I

    .line 11
    invoke-virtual {v0}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Le/a/c/h/j;

    const-string v4, "it"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v4, v0}, Le/a/c/h/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 14
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v2
.end method
