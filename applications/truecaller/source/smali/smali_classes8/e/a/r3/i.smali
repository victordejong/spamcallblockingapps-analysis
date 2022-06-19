.class public final Le/a/r3/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/r3/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r3/h$a$d;


# direct methods
.method public constructor <init>(Le/a/r3/h$a$d;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/i;->b:Le/a/r3/h$a$d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/r3/b;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/r3/i;->b:Le/a/r3/h$a$d;

    iget-object v0, v0, Le/a/r3/h$a$d;->b:Lq3/a/w2/x;

    .line 4
    :try_start_0
    invoke-interface {v0}, Lq3/a/w2/d0;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lq3/a/w2/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
