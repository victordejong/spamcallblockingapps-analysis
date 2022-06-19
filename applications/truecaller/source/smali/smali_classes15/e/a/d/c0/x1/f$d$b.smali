.class public final Le/a/d/c0/x1/f$d$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Le/a/d/c0/x1/f$d;

.field public final synthetic c:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f$d;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$d$b;->b:Le/a/d/c0/x1/f$d;

    iput-object p2, p0, Le/a/d/c0/x1/f$d$b;->c:Ls1/z/b/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/c0/x1/f$d$b;->c:Ls1/z/b/l;

    iget-object v1, p0, Le/a/d/c0/x1/f$d$b;->b:Le/a/d/c0/x1/f$d;

    iget-object v1, v1, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    invoke-static {v1}, Le/a/d/c0/x1/f;->k(Le/a/d/c0/x1/f;)Le/a/d/c0/x1/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
