.class public final Ls1/a/a/a/v0/d/a/d0/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/i;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/x;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/d/a/f0/w;",
        "Ls1/a/a/a/v0/d/a/d0/n/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/i$a;->b:Ls1/a/a/a/v0/d/a/d0/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ls1/a/a/a/v0/d/a/f0/w;

    const-string v0, "typeParameter"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/i$a;->b:Ls1/a/a/a/v0/d/a/d0/i;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/i;->a:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 6
    new-instance v1, Ls1/a/a/a/v0/d/a/d0/n/t;

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/i$a;->b:Ls1/a/a/a/v0/d/a/d0/i;

    .line 7
    iget-object v3, v2, Ls1/a/a/a/v0/d/a/d0/i;->c:Ls1/a/a/a/v0/d/a/d0/h;

    const-string v4, "$this$child"

    .line 8
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "typeParameterResolver"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v4, Ls1/a/a/a/v0/d/a/d0/h;

    .line 10
    iget-object v5, v3, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 11
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/h;->e:Ls1/g;

    .line 12
    invoke-direct {v4, v5, v2, v3}, Ls1/a/a/a/v0/d/a/d0/h;-><init>(Ls1/a/a/a/v0/d/a/d0/c;Ls1/a/a/a/v0/d/a/d0/m;Ls1/g;)V

    .line 13
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/i$a;->b:Ls1/a/a/a/v0/d/a/d0/i;

    .line 14
    iget v3, v2, Ls1/a/a/a/v0/d/a/d0/i;->e:I

    add-int/2addr v3, v0

    .line 15
    iget-object v0, v2, Ls1/a/a/a/v0/d/a/d0/i;->d:Ls1/a/a/a/v0/b/k;

    .line 16
    invoke-direct {v1, v4, p1, v3, v0}, Ls1/a/a/a/v0/d/a/d0/n/t;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/w;ILs1/a/a/a/v0/b/k;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
