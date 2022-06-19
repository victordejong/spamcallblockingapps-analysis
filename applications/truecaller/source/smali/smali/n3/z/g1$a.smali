.class public final Ln3/z/g1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g1;->b(Lq3/a/x2/f;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ln3/z/f0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/g1;

.field public final synthetic b:Ln3/z/t0;


# direct methods
.method public constructor <init>(Ln3/z/g1;Ln3/z/t0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g1$a;->a:Ln3/z/g1;

    iput-object p2, p0, Ln3/z/g1$a;->b:Ln3/z/t0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ln3/z/f0;

    .line 2
    iget-object v0, p0, Ln3/z/g1$a;->a:Ln3/z/g1;

    iget-object v1, p0, Ln3/z/g1$a;->b:Ln3/z/t0;

    invoke-virtual {v0, v1, p1, p2}, Ln3/z/g1;->e(Ln3/z/t0;Ln3/z/f0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
