.class public final Le/a/a/m/g3/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/m/g3/g;-><init>(Le/a/a/m/j2;Le/a/p5/c0;Le/a/a/m/z1$a;Le/a/a/m/g3/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/d4/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/m/g3/g;


# direct methods
.method public constructor <init>(Le/a/a/m/g3/g;)V
    .locals 0

    iput-object p1, p0, Le/a/a/m/g3/g$a;->b:Le/a/a/m/g3/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/m/g3/g$a;->b:Le/a/a/m/g3/g;

    .line 2
    iget-object v0, v0, Le/a/a/m/g3/g;->f:Le/a/a/m/g3/f;

    .line 3
    iget-object v0, v0, Le/a/a/m/g3/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    return-object v0
.end method
