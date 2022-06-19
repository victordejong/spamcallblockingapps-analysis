.class public final Le/a/h/g/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/g/w;


# direct methods
.method public constructor <init>(Le/a/h/g/w;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/t;->a:Le/a/h/g/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/h/g/t;->a:Le/a/h/g/w;

    .line 3
    iget-object v0, v0, Le/a/h/g/w;->p:Le/a/k0/a/h;

    const-string v1, "it"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/k0/a/h;->d(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Le/a/h/g/t;->a:Le/a/h/g/w;

    .line 6
    iget-object v0, v0, Le/a/h/g/w;->p:Le/a/k0/a/h;

    .line 7
    invoke-interface {v0, p1}, Le/a/k0/a/h;->c(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
