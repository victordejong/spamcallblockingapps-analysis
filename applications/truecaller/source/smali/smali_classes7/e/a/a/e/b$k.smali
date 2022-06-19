.class public final Le/a/a/e/b$k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/b;->L9()V
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
.field public final synthetic b:Le/a/a/e/b;


# direct methods
.method public constructor <init>(Le/a/a/e/b;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/b$k;->b:Le/a/a/e/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/b$k;->b:Le/a/a/e/b;

    invoke-virtual {v0}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object v0

    invoke-interface {v0}, Le/a/a/e/u;->Zf()V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
