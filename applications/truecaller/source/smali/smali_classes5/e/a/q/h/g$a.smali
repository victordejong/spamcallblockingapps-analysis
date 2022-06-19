.class public final Le/a/q/h/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/h/g;-><init>(Le/a/q/g/e;Le/a/q/f/k;Le/a/q/f/a;Le/a/p5/c;Le/a/p5/g;)V
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
.field public final synthetic b:Le/a/q/h/g;


# direct methods
.method public constructor <init>(Le/a/q/h/g;)V
    .locals 0

    iput-object p1, p0, Le/a/q/h/g$a;->b:Le/a/q/h/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q/h/g$a;->b:Le/a/q/h/g;

    .line 2
    iget-object v0, v0, Le/a/q/h/g;->f:Le/a/p5/g;

    .line 3
    invoke-interface {v0}, Le/a/p5/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
