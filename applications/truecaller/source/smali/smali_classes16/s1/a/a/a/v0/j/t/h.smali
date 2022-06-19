.class public final Ls1/a/a/a/v0/j/t/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/a0;",
        "Ls1/a/a/a/v0/m/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/e0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/t/h;->b:Ls1/a/a/a/v0/m/e0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/a0;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/j/t/h;->b:Ls1/a/a/a/v0/m/e0;

    return-object p1
.end method
