.class public final Ln3/z/h2$a$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h2$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Ln3/z/h2$a$a;

.field public final synthetic c:Ln3/z/o1;

.field public final synthetic d:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Ln3/z/h2$a$a;Ln3/z/o1;Ls1/z/c/y;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h2$a$a$a;->b:Ln3/z/h2$a$a;

    iput-object p2, p0, Ln3/z/h2$a$a$a;->c:Ln3/z/o1;

    iput-object p3, p0, Ln3/z/h2$a$a$a;->d:Ls1/z/c/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/z/h2$a$a$a;->b:Ln3/z/h2$a$a;

    iget-object v0, v0, Ln3/z/h2$a$a;->i:Ln3/z/h2$a;

    iget-object v0, v0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    iget-object v1, p0, Ln3/z/h2$a$a$a;->c:Ln3/z/o1;

    .line 2
    iput-object v1, v0, Ln3/z/g2;->a:Ln3/z/o1;

    .line 3
    iget-object v0, p0, Ln3/z/h2$a$a$a;->d:Ls1/z/c/y;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls1/z/c/y;->a:Z

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
