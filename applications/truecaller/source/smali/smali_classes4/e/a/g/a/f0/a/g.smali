.class public final Le/a/g/a/f0/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/f0/a/i;


# direct methods
.method public constructor <init>(Le/a/g/a/f0/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/f0/a/g;->a:Le/a/g/a/f0/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g/a/f0/a/g;->a:Le/a/g/a/f0/a/i;

    .line 2
    iget-object v0, v0, Le/a/g/a/f0/a/i;->e:Le/a/g/a/f0/a/d;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/a/g/a/f0/a/d;->d:Z

    .line 4
    iget-object v1, v0, Le/a/g/a/f0/a/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, v0, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "analyticsContext"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, v2, Le/a/g/j/w;->a:Le/a/r2/f;

    const-string v3, "negativeButton"

    invoke-static {v2, v1, v3}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Le/a/g/a/f0/a/d;->Hj()V

    .line 8
    iget-object v0, v0, Le/a/g/a/f0/a/d;->c:Le/a/g/a/f0/a/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/g/a/f0/a/b;->a()V

    .line 9
    :cond_1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
