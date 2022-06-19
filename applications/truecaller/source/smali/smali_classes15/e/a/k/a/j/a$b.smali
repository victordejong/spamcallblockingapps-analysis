.class public final Le/a/k/a/j/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/j/a;->b()V
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
.field public final synthetic b:Le/a/k/a/j/a;


# direct methods
.method public constructor <init>(Le/a/k/a/j/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/j/a$b;->b:Le/a/k/a/j/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/j/a$b;->b:Le/a/k/a/j/a;

    .line 2
    iget-object v0, v0, Le/a/k/a/j/a;->a:Ls1/u/g;

    .line 3
    invoke-virtual {v0}, Ls1/u/g;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/k/a/j/a$b;->b:Le/a/k/a/j/a;

    .line 5
    iget-object v0, v0, Le/a/k/a/j/a;->a:Ls1/u/g;

    .line 6
    invoke-virtual {v0}, Ls1/u/g;->removeFirst()Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Le/a/k/a/j/a$b;->b:Le/a/k/a/j/a;

    .line 8
    invoke-virtual {v0}, Le/a/k/a/j/a;->b()V

    .line 9
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
