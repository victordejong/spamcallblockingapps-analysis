.class public final Ln3/z/h$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h$a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ls1/u/w<",
        "+",
        "Ln3/z/c1<",
        "TT;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/h$a$b;


# direct methods
.method public constructor <init>(Ln3/z/h$a$b;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h$a$b$a;->a:Ln3/z/h$a$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/u/w;

    .line 2
    iget-object v0, p0, Ln3/z/h$a$b$a;->a:Ln3/z/h$a$b;

    iget-object v1, v0, Ln3/z/h$a$b;->h:Ls1/z/c/a0;

    .line 3
    iget v2, p1, Ls1/u/w;->a:I

    .line 4
    iput v2, v1, Ls1/z/c/a0;->a:I

    .line 5
    iget-object v0, v0, Ln3/z/h$a$b;->f:Ln3/z/y2;

    .line 6
    iget-object p1, p1, Ls1/u/w;->b:Ljava/lang/Object;

    .line 7
    invoke-interface {v0, p1, p2}, Lq3/a/w2/d0;->v(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 8
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
