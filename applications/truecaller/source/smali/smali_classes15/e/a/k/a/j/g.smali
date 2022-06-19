.class public final Le/a/k/a/j/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/k/a/j/a$a;Ls1/u/g;Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Ls1/z/b/a;)V
    .locals 0

    iput-object p4, p0, Le/a/k/a/j/g;->b:Ls1/z/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/j/g;->b:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
