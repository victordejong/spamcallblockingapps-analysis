.class public final Le/a/v/a/c/a/f$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/c/a/f;-><init>(Ls1/w/f;Le/a/q/h/c;Le/a/q2/a;Le/a/v/a/c/b;Le/a/u3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/c/a/f;


# direct methods
.method public constructor <init>(Le/a/v/a/c/a/f;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c/a/f$a;->b:Le/a/v/a/c/a/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/v/a/c/a/f$a;->b:Le/a/v/a/c/a/f;

    .line 2
    iget-object v0, v0, Le/a/v/a/c/a/f;->h:Le/a/q2/a;

    const-string v1, "DetailsView"

    const-string v2, "source"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Le/a/q/e/b;

    invoke-direct {v2, v1}, Le/a/q/e/b;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 6
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
