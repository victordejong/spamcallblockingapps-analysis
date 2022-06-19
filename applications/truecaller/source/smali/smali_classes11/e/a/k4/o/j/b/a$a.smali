.class public final Le/a/k4/o/j/b/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k4/o/j/b/a;-><init>(Le/a/k4/o/j/b/b;Le/a/k4/o/i/a;Le/a/b0/o/a;Le/a/p5/c0;Le/a/u3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k4/o/j/b/a;


# direct methods
.method public constructor <init>(Le/a/k4/o/j/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k4/o/j/b/a$a;->b:Le/a/k4/o/j/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/k4/o/j/b/a$a;->b:Le/a/k4/o/j/b/a;

    .line 2
    iget-object v0, v0, Le/a/k4/o/j/b/a;->f:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->s2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xae

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
