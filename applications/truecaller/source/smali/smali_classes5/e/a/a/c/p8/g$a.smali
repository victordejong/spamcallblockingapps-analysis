.class public final Le/a/a/c/p8/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/p8/g;->b(Ljava/lang/CharSequence;Le/a/a/c/p8/a;)V
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
.field public final synthetic b:Ls1/z/c/a0;

.field public final synthetic c:Ls1/z/c/a0;

.field public final synthetic d:Ls1/z/c/a0;


# direct methods
.method public constructor <init>(Ls1/z/c/a0;Ls1/z/c/a0;Ls1/z/c/a0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/p8/g$a;->b:Ls1/z/c/a0;

    iput-object p2, p0, Le/a/a/c/p8/g$a;->c:Ls1/z/c/a0;

    iput-object p3, p0, Le/a/a/c/p8/g$a;->d:Ls1/z/c/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/p8/g$a;->b:Ls1/z/c/a0;

    const/4 v1, -0x1

    iput v1, v0, Ls1/z/c/a0;->a:I

    .line 2
    iget-object v0, p0, Le/a/a/c/p8/g$a;->c:Ls1/z/c/a0;

    iput v1, v0, Ls1/z/c/a0;->a:I

    .line 3
    iget-object v0, p0, Le/a/a/c/p8/g$a;->d:Ls1/z/c/a0;

    iput v1, v0, Ls1/z/c/a0;->a:I

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/p8/g$a;->a()V

    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
