.class public final Ls1/a/a/a/v0/i/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/e0;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/i/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/i/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/i/g;->b:Ls1/a/a/a/v0/i/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/e0;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/i/g;->b:Ls1/a/a/a/v0/i/d;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
