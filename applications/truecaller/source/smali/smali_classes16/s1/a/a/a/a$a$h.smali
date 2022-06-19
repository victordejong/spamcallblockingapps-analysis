.class public final Ls1/a/a/a/a$a$h;
.super Ls1/z/c/m;
.source "SourceFile"

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
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/a$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/a$a$h;->b:Ls1/a/a/a/a$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a$a$h;->b:Ls1/a/a/a/a$a;

    invoke-virtual {v0}, Ls1/a/a/a/a$a;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/b/f;->f:Ls1/a/a/a/v0/b/f;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->r0()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ls1/a/a/a/v0/a/c;->b:Ls1/a/a/a/v0/a/c;

    invoke-static {v1, v0}, Le/q/f/a/d/a;->B1(Ls1/a/a/a/v0/a/c;Ls1/a/a/a/v0/b/e;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Ls1/a/a/a/a$a$h;->b:Ls1/a/a/a/a$a;

    iget-object v1, v1, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/a$a$h;->b:Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    .line 8
    iget-object v0, v0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    const-string v1, "INSTANCE"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 10
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type T"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
