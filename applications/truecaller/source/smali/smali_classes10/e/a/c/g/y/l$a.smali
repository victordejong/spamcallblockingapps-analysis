.class public final Le/a/c/g/y/l$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/y/l;-><init>(Le/a/c/b/e;Lo3/a;Le/a/q2/a;Le/a/c/s/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/g/y/l;


# direct methods
.method public constructor <init>(Le/a/c/g/y/l;)V
    .locals 0

    iput-object p1, p0, Le/a/c/g/y/l$a;->b:Le/a/c/g/y/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/g/y/l$a;->b:Le/a/c/g/y/l;

    .line 2
    iget-object v0, v0, Le/a/c/g/y/l;->c:Lo3/a;

    .line 3
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/g/f;

    invoke-interface {v0}, Le/a/c/g/f;->getVersion()I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
