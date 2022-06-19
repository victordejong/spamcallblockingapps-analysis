.class public final Le/a/d/d/a/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/a/b;-><init>(Le/a/l4/c;Le/a/p5/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/l4/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/d/a/b;


# direct methods
.method public constructor <init>(Le/a/d/d/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/b$a;->b:Le/a/d/d/a/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/a/l4/d;

    .line 2
    iget-object v1, p0, Le/a/d/d/a/b$a;->b:Le/a/d/d/a/b;

    .line 3
    iget-object v2, v1, Le/a/d/d/a/b;->d:Le/a/l4/c;

    .line 4
    iget-object v3, v1, Le/a/d/d/a/b;->b:Le/a/p5/h0;

    if-eqz v3, :cond_0

    .line 5
    iget-object v1, v1, Le/a/d/d/a/b;->e:Le/a/p5/c;

    .line 6
    invoke-direct {v0, v3, v2, v1}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    return-object v0

    :cond_0
    const-string v0, "themedResourceProvider"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
