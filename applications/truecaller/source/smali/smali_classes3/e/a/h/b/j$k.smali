.class public final Le/a/h/b/j$k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/j;->Pc()V
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
.field public final synthetic b:Le/a/h/b/j;


# direct methods
.method public constructor <init>(Le/a/h/b/j;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/j$k;->b:Le/a/h/b/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/j$k;->b:Le/a/h/b/j;

    invoke-virtual {v0}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object v0

    invoke-interface {v0}, Le/a/h/b/d/a/c/b$b;->H2()V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
