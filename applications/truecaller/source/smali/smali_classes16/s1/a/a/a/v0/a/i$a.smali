.class public final Ls1/a/a/a/v0/a/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/f/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/a/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/i$a;->b:Ls1/a/a/a/v0/a/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    iget-object v1, p0, Ls1/a/a/a/v0/a/i$a;->b:Ls1/a/a/a/v0/a/i;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/a/i;->b:Ls1/a/a/a/v0/f/e;

    .line 3
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v0

    const-string v1, "StandardNames.BUILT_INS_\u2026NAME.child(arrayTypeName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
