.class public final Le/a/c/a/d/a/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/a/a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/l/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/d/a/a$b;


# direct methods
.method public constructor <init>(Le/a/c/a/d/a/a$b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/a/a$b$a;->a:Le/a/c/a/d/a/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/d/a/a$b$a;->a:Le/a/c/a/d/a/a$b;

    iget-object v0, v0, Le/a/c/a/d/a/a$b;->e:Le/a/c/a/d/a/a;

    .line 3
    iget-object v1, v0, Le/a/c/a/d/a/a;->e:Ln3/v/i0;

    const-string v2, "it"

    .line 4
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Le/a/c/a/d/a/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void
.end method
