.class public final Ls1/a/a/a/z$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/z$b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/u0/h<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/z$b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/z$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/z$b$a;->b:Ls1/a/a/a/z$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z$b$a;->b:Ls1/a/a/a/z$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/q/f/a/d/a;->g(Ls1/a/a/a/z$a;Z)Ls1/a/a/a/u0/h;

    move-result-object v0

    return-object v0
.end method
