.class public final Le/a/l/n2/a$f$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a$f;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/l/n2/e$a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/n;

.field public final synthetic c:Le/a/l/n2/a$f;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/l/n2/a$f;Le/d/a/a/r;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$f$a;->b:Lq3/a/n;

    iput-object p2, p0, Le/a/l/n2/a$f$a;->c:Le/a/l/n2/a$f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/l/n2/e$a;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/n2/a$f$a;->c:Le/a/l/n2/a$f;

    iget-object v0, v0, Le/a/l/n2/a$f;->h:Le/a/l/n2/a;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Le/a/l/n2/a;->b:Ls1/z/b/l;

    .line 5
    iget-object v0, p0, Le/a/l/n2/a$f$a;->b:Lq3/a/n;

    invoke-interface {v0}, Lq3/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/a/l/n2/a$f$a;->b:Lq3/a/n;

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    .line 7
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
