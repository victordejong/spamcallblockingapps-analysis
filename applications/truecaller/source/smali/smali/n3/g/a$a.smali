.class public Ln3/g/a$a;
.super Ln3/g/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/g/a;->q()Ln3/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/g/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ln3/g/a;


# direct methods
.method public constructor <init>(Ln3/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/g/a$a;->d:Ln3/g/a;

    invoke-direct {p0}, Ln3/g/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    invoke-virtual {v0}, Ln3/g/h;->clear()V

    return-void
.end method

.method public b(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    iget-object v0, v0, Ln3/g/h;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    iget v0, v0, Ln3/g/h;->c:I

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    invoke-virtual {v0, p1}, Ln3/g/h;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    invoke-virtual {v0, p1}, Ln3/g/h;->k(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    invoke-virtual {v0, p1, p2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    invoke-virtual {v0, p1}, Ln3/g/h;->n(I)Ljava/lang/Object;

    return-void
.end method

.method public i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/g/a$a;->d:Ln3/g/a;

    invoke-virtual {v0, p1, p2}, Ln3/g/h;->o(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
