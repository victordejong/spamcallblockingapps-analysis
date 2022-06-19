.class public final Ln3/z/g2$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g2;-><init>(Ln3/z/x;Lq3/a/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ln3/z/q;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/z/g2;


# direct methods
.method public constructor <init>(Ln3/z/g2;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g2$a;->b:Ln3/z/g2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ln3/z/q;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ln3/z/g2$a;->b:Ln3/z/g2;

    .line 4
    iget-object v0, v0, Ln3/z/g2;->i:Lq3/a/x2/a1;

    .line 5
    invoke-interface {v0, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
