.class public final Ls1/a/a/a/a$a$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/a$a;-><init>(Ls1/a/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls1/a/a/a/a$a$c;->b:I

    iput-object p2, p0, Ls1/a/a/a/a$a$c;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Ls1/a/a/a/a$a$c;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a$a$c;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/a$a$c;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 5
    invoke-virtual {v0}, Ls1/a/a/a/a;->s()Ls1/a/a/a/v0/f/a;

    move-result-object v0

    .line 6
    iget-boolean v2, v0, Ls1/a/a/a/v0/f/a;->c:Z

    if-eqz v2, :cond_3

    .line 7
    iget-object v0, p0, Ls1/a/a/a/a$a$c;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "$"

    const/4 v5, 0x2

    const-string v6, "name"

    if-eqz v3, :cond_1

    .line 11
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1, v5}, Ls1/f0/v;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1, v5}, Ls1/f0/v;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x24

    invoke-static {v2, v0, v1, v5}, Ls1/f0/v;->Z(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classId.shortClassName.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    .line 16
    :cond_4
    throw v1

    .line 17
    :cond_5
    iget-object v0, p0, Ls1/a/a/a/a$a$c;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 18
    iget-object v0, v0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    iget-object v0, p0, Ls1/a/a/a/a$a$c;->c:Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 21
    invoke-virtual {v0}, Ls1/a/a/a/a;->s()Ls1/a/a/a/v0/f/a;

    move-result-object v0

    .line 22
    iget-boolean v2, v0, Ls1/a/a/a/v0/f/a;->c:Z

    if-eqz v2, :cond_7

    goto :goto_2

    .line 23
    :cond_7
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method
