.class public final Le/a/k0/a/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/a/a;-><init>(Le/a/u3/g;Le/a/k0/a/j;Le/a/p5/g;Le/a/k0/f;Le/a/p5/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lq3/a/x2/f<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k0/a/a;


# direct methods
.method public constructor <init>(Le/a/k0/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/a/a$b;->b:Le/a/k0/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/a$b;->b:Le/a/k0/a/a;

    .line 2
    iget-object v0, v0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    .line 3
    invoke-interface {v0}, Le/a/k0/a/j;->j()Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method
