.class public final Le/a/g0/k/c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/k/c;-><init>(Le/a/d4/c;Le/a/g0/k/d;Le/a/g0/k/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/g0/k/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g0/k/c;


# direct methods
.method public constructor <init>(Le/a/g0/k/c;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/k/c$b;->b:Le/a/g0/k/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g0/k/c$b;->b:Le/a/g0/k/c;

    .line 2
    invoke-virtual {v0}, Le/a/g0/k/c;->a()Le/a/d4/e;

    move-result-object v0

    .line 3
    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Le/a/g0/k/c$b;->b:Le/a/g0/k/c;

    .line 4
    iget-object v0, v0, Le/a/g0/k/c;->d:Le/a/g0/k/d;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Le/a/d4/e$b;->c:Le/a/d4/e$b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/g0/k/c$b;->b:Le/a/g0/k/c;

    .line 6
    iget-object v0, v0, Le/a/g0/k/c;->e:Le/a/g0/k/d;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
