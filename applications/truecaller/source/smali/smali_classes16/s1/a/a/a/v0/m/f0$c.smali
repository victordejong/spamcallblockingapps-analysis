.class public final Ls1/a/a/a/v0/m/f0$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/m/f0;->f(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/l1/e;",
        "Ls1/a/a/a/v0/m/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/v0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ls1/a/a/a/v0/b/f1/h;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/v0;Ljava/util/List;Ls1/a/a/a/v0/b/f1/h;Z)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/f0$c;->b:Ls1/a/a/a/v0/m/v0;

    iput-object p2, p0, Ls1/a/a/a/v0/m/f0$c;->c:Ljava/util/List;

    iput-object p3, p0, Ls1/a/a/a/v0/m/f0$c;->d:Ls1/a/a/a/v0/b/f1/h;

    iput-boolean p4, p0, Ls1/a/a/a/v0/m/f0$c;->e:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/l1/e;

    const-string v0, "refiner"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls1/a/a/a/v0/m/f0;->a:Ls1/a/a/a/v0/m/f0;

    iget-object v1, p0, Ls1/a/a/a/v0/m/f0$c;->b:Ls1/a/a/a/v0/m/v0;

    iget-object v2, p0, Ls1/a/a/a/v0/m/f0$c;->c:Ljava/util/List;

    invoke-static {v0, v1, p1, v2}, Ls1/a/a/a/v0/m/f0;->a(Ls1/a/a/a/v0/m/f0;Ls1/a/a/a/v0/m/v0;Ls1/a/a/a/v0/m/l1/e;Ljava/util/List;)Ls1/a/a/a/v0/m/f0$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, v0, Ls1/a/a/a/v0/m/f0$b;->a:Ls1/a/a/a/v0/m/l0;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/m/f0$c;->d:Ls1/a/a/a/v0/b/f1/h;

    .line 6
    iget-object v0, v0, Ls1/a/a/a/v0/m/f0$b;->b:Ls1/a/a/a/v0/m/v0;

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Ls1/a/a/a/v0/m/f0$c;->c:Ljava/util/List;

    iget-boolean v3, p0, Ls1/a/a/a/v0/m/f0$c;->e:Z

    invoke-static {v1, v0, v2, v3, p1}, Ls1/a/a/a/v0/m/f0;->f(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l0;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
