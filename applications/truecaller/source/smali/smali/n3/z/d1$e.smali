.class public final synthetic Ln3/z/d1$e;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/d1;->a(Ln3/z/k2;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/z/d1;)V
    .locals 7

    const-class v3, Ln3/z/d1;

    const/4 v1, 0x0

    const-string v4, "invalidate"

    const-string v5, "invalidate()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Ln3/z/d1;

    .line 2
    iget-object v0, v0, Ln3/z/d1;->a:Ln3/z/s;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ln3/z/s;->a(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
